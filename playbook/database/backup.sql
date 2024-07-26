-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: metabase
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `idx_databasechangelog_id_author_filename` (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('v00.00-000','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:33:59',1,'EXECUTED','9:cecb4c73745e92033c738dbf3d6e747e','sqlFile path=initialization/metabase_postgres.sql; sqlFile path=initialization/metabase_mysql.sql; sqlFile path=initialization/metabase_h2.sql','Initialze metabase',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-001','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',2,'EXECUTED','9:24324f06a65a9bb339c735f02cbfb47f','createTable tableName=action','Added 0.44.0 - writeback',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-002','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',3,'EXECUTED','9:d2c9f50f5a29947a07e4808957d63ab6','createTable tableName=query_action','Added 0.44.0 - writeback',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-003','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',4,'EXECUTED','9:dafaaf7c9f0efbf92670ea93c001f7a1','addPrimaryKey constraintName=pk_query_action, tableName=query_action','Added 0.44.0 - writeback',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-011','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',5,'EXECUTED','9:c539f152aa1c2287c5b602c7a395f9e8','addColumn tableName=report_card','Added 0.44.0 - writeback',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-012','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',6,'EXECUTED','9:4b66ab5561933821db3a68d21ce43b6b','createTable tableName=http_action','Added 0.44.0 - writeback',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-013','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',7,'EXECUTED','9:54c5d6a9659b7ae62e8c42f60f9620d2','addPrimaryKey constraintName=pk_http_action, tableName=http_action','Added 0.44.0 - writeback',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-022','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',8,'EXECUTED','9:4f00f51af294ccdd99b6029b7a023643','createTable tableName=app','Added 0.45.0 - add app container',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-023','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',9,'EXECUTED','9:082d296233ee6dbbf2871b9d93c3a6a4','addForeignKeyConstraint baseTableName=app, constraintName=fk_app_ref_dashboard_id, referencedTableName=report_dashboard','Added 0.45.0 - add app container',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-025','metamben','migrations/001_update_migrations.yaml','2024-05-16 19:34:00',10,'EXECUTED','9:2214b0d71acc8a8cf90781a2aca98664','addColumn tableName=report_dashboard','Added 0.45.0 - mark app pages',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-026','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',11,'EXECUTED','9:9f2ce2d2d79d0dce365ddf3464d1f648','addColumn tableName=report_dashboardcard','Added 0.45.0 - apps add action_id to report_dashboardcard',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-027','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',12,'EXECUTED','9:73718f7b7c3fb4ef30f71dc6e6170528','addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_report_dashboardcard_ref_action_id, referencedTableName=action','Added 0.45.0 - apps add fk for action_id to report_dashboardcard',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-028','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',13,'EXECUTED','9:883315d70f3fc10b07858aa0e48ed9da','renameColumn newColumnName=size_x, oldColumnName=sizeX, tableName=report_dashboardcard','Added 0.45.0 -- rename DashboardCard sizeX to size_x. See https://github.com/metabase/metabase/issues/16344',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-029','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',14,'EXECUTED','9:fe3b8aca811ef5b541f922a83c7ded8c','renameColumn newColumnName=size_y, oldColumnName=sizeY, tableName=report_dashboardcard','Added 0.45.0 -- rename DashboardCard size_y to size_y. See https://github.com/metabase/metabase/issues/16344',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-030','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',15,'EXECUTED','9:63da8f2f82baf396ad30f3fd451c501d','addDefaultValue columnName=size_x, tableName=report_dashboardcard','Added 0.45.0 -- add default value to DashboardCard size_x -- this was previously done by Toucan',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-031','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',16,'EXECUTED','9:3628c1c692bec0f7258ea983b18340b5','addDefaultValue columnName=size_y, tableName=report_dashboardcard','Added 0.45.0 -- add default value to DashboardCard size_y -- this was previously done by Toucan',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-033','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',17,'EXECUTED','9:b93dab321e4a1fcaeb74d12b52867fd4','sql','Added 0.45.0 -- add default value for DashboardCard created_at (MySQL/MariaDB)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-035','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',18,'EXECUTED','9:207984e21c44681a6135592cab3d0f3f','sql','Added 0.45.0 -- add default value for DashboardCard updated_at (MySQL/MariaDB)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-036','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',19,'EXECUTED','9:1c5db47da78b69f2540542243b529e65','createTable tableName=model_action','Added 0.45.0 - add model action table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-037','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:01',20,'EXECUTED','9:6600702fb0cc9dcd8628fca8df9c0b39','addUniqueConstraint constraintName=unique_model_action_card_id_slug, tableName=model_action','Added 0.45.0 - model action',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-039','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',21,'EXECUTED','9:7b331f47a0260218275c58fa21fdcc60','sql','Added 0.45.0 -- add default value for Database created_at (MySQL/MariaDB)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-041','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',22,'EXECUTED','9:84d479472b81809b8067f72b28934954','sql','Added 0.45.0 -- add default value for Database updated_at (MySQL/MariaDB)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-042','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',23,'EXECUTED','9:f600f2e052bf44938d081165c8d87364','sql','Added 0.45.0 -- add default value for Database with NULL details',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-043','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',24,'EXECUTED','9:daa8b1249027fa4c9ea07f1acb8ee889','addNotNullConstraint columnName=details, tableName=metabase_database','Added 0.45.0 -- make Database details NOT NULL',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-044','metamben','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',25,'EXECUTED','9:39c664afe6e6c6598576c7575931b106','createTable tableName=app_permission_graph_revision','Added 0.45.0 -- create app permission graph revision table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-048','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',26,'EXECUTED','9:122ebd5e3f3b30b61b66bfad0e9ab1b0','addColumn tableName=collection','Added 0.45.0 -- add created_at to Collection',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-049','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',27,'EXECUTED','9:50ef9cbb0f9958bd4e8a1e6364fd6038','sql; sql; sql','Added 0.45.0 -- set Collection.created_at to User.date_joined for Personal Collections',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-050','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',28,'EXECUTED','9:e5af01b22e40f1ce3dc0cbbddf131f58','sql; sql; sql','Added 0.45.0 -- seed Collection.created_at with value of oldest item for non-Personal Collections',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-051','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',29,'EXECUTED','9:caa34704f55850f5f8f15ef5eb7a758e','modifyDataType columnName=after, tableName=collection_permission_graph_revision','Added 0.45.0 - modify type of collection_permission_graph_revision.after from text to longtext on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-052','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:02',30,'EXECUTED','9:c397d1eaf5e2cbfb90319014b9ebdfad','modifyDataType columnName=before, tableName=collection_permission_graph_revision','Added 0.45.0 - modify type of collection_permission_graph_revision.before from text to longtext on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-053','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:03',31,'EXECUTED','9:44242218dd4f217ef03dde5ac8b1ea7e','modifyDataType columnName=remark, tableName=collection_permission_graph_revision','Added 0.45.0 - modify type of collection_permission_graph_revision.remark from text to longtext on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-054','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:03',32,'EXECUTED','9:3356706563854978e668538752e58242','modifyDataType columnName=after, tableName=permissions_revision','Added 0.45.0 - modify type of permissions_revision.after from text to longtext on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-055','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:03',33,'EXECUTED','9:1b764e3ac4c6a41f1a83ea19a2464782','modifyDataType columnName=before, tableName=permissions_revision','Added 0.45.0 - modify type of permissions_revision.before from text to longtext on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-056','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:03',34,'EXECUTED','9:db0f77fe782f392241d0fe911b8890a2','modifyDataType columnName=remark, tableName=permissions_revision','Added 0.45.0 - modify type of permissions_revision.remark from text to longtext on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v45.00-057','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:03',35,'EXECUTED','9:d1125daee3e40f7a316c59c6b7a0fb1b','modifyDataType columnName=value, tableName=secret','Added 0.45.0 - modify type of secret.value from blob to longblob on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-000','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:03',36,'EXECUTED','9:1fac9d1658592106303e67a591966565','createTable tableName=implicit_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-001','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:03',37,'EXECUTED','9:9a3a543cd836c34d8131b6c929061425','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-002','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',38,'EXECUTED','9:a352e46d75236605148308fc7e95cfe6','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-003','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',39,'EXECUTED','9:5fcf2126624707dc3b84c4673ca8064e','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-004','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',40,'EXECUTED','9:2845510b38cd14b0fb864be9996216a0','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-005','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',41,'EXECUTED','9:7bfb368ddb611bb4e34a9e91b6273a57','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-006','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',42,'EXECUTED','9:343162b0798092bdd0c4b3a896bfae0c','addColumn tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-007','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',43,'EXECUTED','9:604733020cb8d94b0b21728393b9227a','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_model_id, referencedTableName=report_card','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-008','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',44,'EXECUTED','9:24adc5d36405f95e479157afa6ac7090','addColumn tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-009','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',45,'EXECUTED','9:fb691dd38898c7e55813a6fb1ba2883f','addColumn tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-010','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',46,'EXECUTED','9:17661d9a15cea0e046aa22bbe05f8ca9','addForeignKeyConstraint baseTableName=query_action, constraintName=fk_query_action_database_id, referencedTableName=metabase_database','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-011','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',47,'EXECUTED','9:305af61cd201d6c9366c9e9d7d0a3551','sql; sql; sql','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-012','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',48,'EXECUTED','9:f5e43052660cb6fd61dca7385a41690f','dropNotNullConstraint columnName=card_id, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-013','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:04',49,'EXECUTED','9:12bf37b0e6732f2f09122f76cb8b59b5','sql','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-014','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',50,'EXECUTED','9:f5856fab23b69dbc669c354d5cb14d36','dropForeignKeyConstraint baseTableName=query_action, constraintName=fk_query_action_ref_card_id','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-015','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',51,'EXECUTED','9:1ef231990b57b1f8496070f5f63f4579','dropColumn columnName=card_id, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-016','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',52,'EXECUTED','9:cf5ae825070bb05fd046b0a22f299403','sql','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-017','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',53,'EXECUTED','9:7428779ccdce61097d0fe5e761e05b18','dropColumn columnName=name, tableName=http_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-018','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',54,'EXECUTED','9:1ae9ab13080fc2dd4df6ccdeb28baf72','dropColumn columnName=description, tableName=http_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-019','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',55,'EXECUTED','9:ffa18e1fb9a06d0a673a1d6aab1edfbc','dropColumn columnName=is_write, tableName=report_card','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-020','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',56,'EXECUTED','9:f96413cb1260923de7be41fd0a665543','addNotNullConstraint columnName=database_id, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-021','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',57,'EXECUTED','9:4096f22cba83bce61efb299867d96d85','addNotNullConstraint columnName=dataset_query, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-022','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',58,'EXECUTED','9:4096f22cba83bce61efb299867d96d85','addNotNullConstraint columnName=dataset_query, tableName=query_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-023','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',59,'EXECUTED','9:072dea52b8b04cbb2829741c8523d768','addNotNullConstraint columnName=model_id, tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-024','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',60,'EXECUTED','9:92798789cb9756596896f74e7055988d','addNotNullConstraint columnName=name, tableName=action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-025','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',61,'EXECUTED','9:cedeeebf30271f749b77f79609b197ba','dropTable tableName=model_action','Added 0.46.0 - Unify action representation',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-026','metamben','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',62,'EXECUTED','9:0b495131821e8ac0a2bc562f688ccca7','addColumn tableName=metabase_database','Added 0.46.0 -- add field for tracking DBMS versions',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-027','snoe','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',63,'EXECUTED','9:74894629391fee2263064bfca9e3afa9','addColumn tableName=metabase_fieldvalues','Added 0.46.0 -- add last_used_at to FieldValues',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-028','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',64,'EXECUTED','9:b512cb7ec893db1f41c5f05ca6801b56','createTable tableName=parameter_card','Added 0.46.0 -- Join table connecting cards to dashboards/cards\'s parameters that need custom filter values from the card',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-029','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',65,'EXECUTED','9:c95d07d656ec9c2d06e9d83ab14e5170','dropUniqueConstraint constraintName=unique_dimension_field_id_name, tableName=dimension','Make Dimension <=> Field a 1t1 relationship. Drop unique constraint on field_id + name. (1/3)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-030','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:05',66,'EXECUTED','9:3342b8ad5e8160325705f4df619c1416','sql','Make Dimension <=> Field a 1t1 relationship. Delete duplicate entries. (2/3)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-031','camsaul','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',67,'EXECUTED','9:5822fde920ae9c048d75e951674c6570','addUniqueConstraint constraintName=unique_dimension_field_id, tableName=dimension','Make Dimension <=> Field a 1t1 relationship. Add unique constraint on field_id. (3/3)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-032','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',68,'EXECUTED','9:2e882eb92ce78edf23d417dcbc7c4f03','addUniqueConstraint constraintName=unique_parameterized_object_card_parameter, tableName=parameter_card','Added 0.46.0 -- Unique parameter_card',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-033','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',69,'EXECUTED','9:2ca24580b18e8a0736cc1c0b463d43a6','createIndex indexName=idx_parameter_card_parameterized_object_id, tableName=parameter_card','Added 0.46.0 -- parameter_card index on connected object',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-034','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',70,'EXECUTED','9:654f10ff8db9163f27f87fc7da686912','createIndex indexName=idx_parameter_card_card_id, tableName=parameter_card','Added 0.46.0 -- parameter_card index on connected card',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-035','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',71,'EXECUTED','9:54d48bc5d1b60faa10ba000c3409c973','addForeignKeyConstraint baseTableName=parameter_card, constraintName=fk_parameter_card_ref_card_id, referencedTableName=report_card','Added 0.46.0 - parameter_card.card_id foreign key',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-036','metamben','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',72,'EXECUTED','9:5e155b0c1edc895bddf0e5de96def85e','dropTable tableName=app_permission_graph_revision','App containers are removed in 0.46.0',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-037','metamben','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',73,'EXECUTED','9:ba61742e04377180572fb011d5ad3263','dropColumn columnName=is_app_page, tableName=report_dashboard','App pages are removed in 0.46.0',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-038','metamben','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',74,'EXECUTED','9:a45d7cfa18714cd1d536bd17b927e3ac','dropTable tableName=app','App containers are removed in 0.46.0',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-039','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',75,'EXECUTED','9:a850f5255ad1f2abb52d4a7c93fa68a0','addColumn tableName=parameter_card','Added 0.46.0 - add entity_id to parameter_card',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-040','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',76,'EXECUTED','9:400fe00b6e522509e4949a71cc12e196','addDefaultValue columnName=size_x, tableName=report_dashboardcard','Added 0.46.0 -- Bump default dashcard size to 4x4',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-041','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',77,'EXECUTED','9:0f7635baf2acb131464865f2a94a17ed','addDefaultValue columnName=size_y, tableName=report_dashboardcard','Added 0.46.0 -- Bump default dashcard size to 4x4',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-042','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',78,'EXECUTED','9:6b99f953adbc8c3f536c7d729ef780a2','createIndex indexName=idx_query_execution_executor_id, tableName=query_execution','Added 0.46.0 -- index query_execution.executor_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-043','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:06',79,'EXECUTED','9:6fd04070a9c19ac34c15a5cbe27def47','createIndex indexName=idx_query_execution_context, tableName=query_execution','Added 0.46.0 -- index query_execution.context',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-045','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',80,'EXECUTED','9:1f61e64d7ce15c315ff530ef8a2dc7f3','addColumn tableName=action','Added 0.46.0 -- add public_uuid to action.',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-051','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',81,'EXECUTED','9:7f54a26b4edf1aa4bc86b95f9c316dea','dropDefaultValue columnName=row, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-052','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',82,'EXECUTED','9:4fc7e45d19ab28e91bd27325d23afd83','dropDefaultValue columnName=col, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-053','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',83,'EXECUTED','9:2d2836a1c76d1c5db400219364aa070e','dropDefaultValue columnName=size_x, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-054','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',84,'EXECUTED','9:60b7a066e6ca1826efcb8b562b33f331','dropDefaultValue columnName=size_y, tableName=report_dashboardcard','Added 0.46.0 -- drop defaults for dashcard\'s position and size',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-055','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',85,'EXECUTED','9:5b583b1b5eac915914f40a27163263b3','addColumn tableName=action','Added 0.46.0 -- add made_public_by_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-056','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',86,'EXECUTED','9:9e37acc40f5685ec3992dff91bbfa618','createIndex indexName=idx_action_public_uuid, tableName=action','Added 0.46.0 -- add public_uuid and made_public_by_id to action. public_uuid is indexed',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-057','dpsutton','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',87,'EXECUTED','9:86b2d39951f748b94abd2e1c7b68144a','modifyDataType columnName=parameter_id, tableName=parameter_card','Added 0.46.0 -- parameter_card.parameter_id long enough to hold a uuid',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-058','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',88,'EXECUTED','9:7458ddbf194a385219df05900d78185d','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_made_public_by_id, referencedTableName=core_user','Added 0.46.0 -- add FK constraint for action.made_public_by_id with core_user.id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-059','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',89,'EXECUTED','9:55a077fb646639308046b80c3f64267e','addColumn tableName=action','Added 0.46.0 -- add actions.creator_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-060','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:07',90,'EXECUTED','9:a0726ea2ef7c354af8b60a8ab37d24bd','createIndex indexName=idx_action_creator_id, tableName=action','Added 0.46.0 -- action.creator_id index',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-061','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',91,'EXECUTED','9:7497cc10ea1fdad211179b36d53bde6a','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_creator_id, referencedTableName=core_user','Added 0.46.0 -- action.creator_id index',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-062','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',92,'EXECUTED','9:35cc67731bc19abd498bcdbb0aeb688e','addColumn tableName=action','Added 0.46.0 -- add actions.archived',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-064','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',93,'EXECUTED','9:a73357bb088af23043336f048172a1f3','renameTable newTableName=sandboxes, oldTableName=group_table_access_policy','Added 0.46.0 -- rename `group_table_access_policy` to `sandboxes`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-065','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',94,'EXECUTED','9:b5b5d61c3e6f7daa528acce1a52b6f75','addColumn tableName=sandboxes','Added 0.46.0 -- add `permission_id` to `sandboxes`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-070','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',95,'EXECUTED','9:e52174e49aa14e61eb922ba200cfc002','addColumn tableName=action','Added 0.46.0 - add entity_id column to action',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-074','metamben','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',96,'EXECUTED','9:29c6090a889f466de44d68a70207e10d','modifyDataType columnName=updated_at, tableName=report_card','Added 0.46.0 -- increase precision of updated_at of report_card',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-079','john-metabase','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',97,'EXECUTED','9:e5ce98dd7ac26fb102db98625e10dfab','sql','Added 0.46.0 -- migrates Databases using deprecated and removed presto driver to presto-jdbc',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-080','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',98,'EXECUTED','9:742aaa27012538f89770095551808dbc','customChange','Migrate data permission paths from v1 to v2 (splitting them into separate data and query permissions)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-084','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:08',99,'EXECUTED','9:ec26e53892d1293ef822005b0e2d5d0d','dropForeignKeyConstraint baseTableName=action, constraintName=fk_action_model_id','Added 0.46.0 - CASCADE delete for action.model_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-085','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',100,'EXECUTED','9:013d55806a3c819a2e94ff2d5cb71df2','addForeignKeyConstraint baseTableName=action, constraintName=fk_action_model_id, referencedTableName=report_card','Added 0.46.0 - CASCADE delete for action.model_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-086','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',101,'EXECUTED','9:3029f7b7b204834ce65fc573378b3425','customChange','Added 0.46.0 - Delete the abandonment email task',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-088','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',102,'EXECUTED','9:c38b799746664b436dc8c63f2c6214c6','sql','Added 0.46.5 -- backfill `permission_id` values in `sandboxes`. This is a fixed verison of v46.00-066 which has been removed, since it had a bug that blocked a customer from upgrading.',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-089','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',103,'EXECUTED','9:7a7761ef80cae24914abb65143fb0503','sql','Added 0.46.5 -- remove orphaned entries in `sandboxes`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v46.00-090','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',104,'EXECUTED','9:d17eaed2e43c5589332682c53e4a6458','addForeignKeyConstraint baseTableName=sandboxes, constraintName=fk_sandboxes_ref_permissions, referencedTableName=permissions','Add foreign key constraint on sandboxes.permission_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-001','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',105,'EXECUTED','9:b655eb44da8863f3021bd71dc14e69b3','sql','Added 0.47.0 -- set base-type to type/JSON for JSON database-types for postgres and mysql',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-002','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',106,'EXECUTED','9:1983e3e2e005932513c2146770aa7f37','addColumn tableName=metabase_field','Added 0.47.0 - Add json_unfolding column to metabase_field',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-003','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',107,'EXECUTED','9:a3cdc062588a6c5c4459d48dc1b76519','sql','Added 0.47.0 - Populate metabase_field.json_unfolding based on base_type',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-004','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',108,'EXECUTED','9:9457f62a9c6533da79c4881ca21d727f','addColumn tableName=metabase_field','Added 0.47.0 - Add auto_incremented to metabase_field',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-005','winlost','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',109,'EXECUTED','9:afc9309217305117e3b9e88018c5437e','addColumn tableName=report_dashboard','Added 0.47.0 - Add auto_apply_filters to dashboard',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-006','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',110,'EXECUTED','9:268558b59e388f5d130befc2cc48a506','createTable tableName=dashboard_tab','Added 0.47.0 - Add dashboard_tab table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-007','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:09',111,'EXECUTED','9:7e6c0250df2957d89875cd0d14d271ee','addColumn tableName=report_dashboardcard','Added 0.47.0 -- add report_dashboardcard.dashboard_tab_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-008','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',112,'EXECUTED','9:606ece18373d1e534db0714add1c41e8','addForeignKeyConstraint baseTableName=report_dashboardcard, constraintName=fk_report_dashboardcard_ref_dashboard_tab_id, referencedTableName=dashboard_tab','Added 0.47.0 -- add report_dashboardcard.dashboard_tab_id fk constraint',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-009','qwef','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',113,'EXECUTED','9:738a13b99f62269ff366f57c09652ebc','sql','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-010','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',114,'EXECUTED','9:5d9a509a79dedadff743042b6f82ddbe','modifyDataType columnName=name, tableName=metabase_table','Added 0.47.0 - Make metabase_table.name long enough for H2 names',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-011','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',115,'EXECUTED','9:7a6a06886b1428bf54d5105d1d4fcf0a','modifyDataType columnName=display_name, tableName=metabase_table','Added 0.47.0 - Make metabase_table.display_name long enough for H2 names',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-012','qwef','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',116,'EXECUTED','9:42ca291fec3fb0a7bdd74dd17d03339a','dropColumn columnName=google_auth, tableName=core_user','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-013','qwef','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',117,'EXECUTED','9:fcc22e7f3fd2f6e52739a8b9778f8e50','sql','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-014','qwef','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',118,'EXECUTED','9:e8309c65ac1f122f944e64d702409377','dropColumn columnName=ldap_auth, tableName=core_user','Added 0.47.0 - Replace user google_auth and ldap_auth columns with sso_source values',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-015','escherize','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',119,'EXECUTED','9:a05fe66edd2512f17a9fc7f9ff122669','addColumn tableName=metabase_database','added 0.47.0 - Add is_audit to metabase_database',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-016','calherres','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',120,'EXECUTED','9:dbd88ce575f7976114e5b8c7e0382a5a','customChange','Added 0.47.0 - Migrate the report_card.visualization_settings.column_settings field refs from legacy format',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-018','dpsutton','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',121,'EXECUTED','9:3019a2f90c2a6d8c060afc7b3e5d35a5','createTable tableName=model_index','Indexed Entities information table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-019','dpsutton','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',122,'EXECUTED','9:c94ce89ec2a7f334bc2357a31427c561','createTable tableName=model_index_value','Indexed Entities values table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-020','dpsutton','migrations/001_update_migrations.yaml','2024-05-16 19:34:10',123,'EXECUTED','9:96991ffa2c754f2f70d61928c7574e31','addUniqueConstraint constraintName=unique_model_index_value_model_index_id_model_pk, tableName=model_index_value','Add unique constraint on index_id and pk',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-023','dpsutton','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',124,'EXECUTED','9:ab9a7a030405fc844b36f10d77fef039','createIndex indexName=idx_model_index_model_id, tableName=model_index','Added 0.47.0 -- model_index index',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-024','dpsutton','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',125,'EXECUTED','9:ab4cd02348503fcaa7cedd49d11d217d','addForeignKeyConstraint baseTableName=model_index, constraintName=fk_model_index_model_id, referencedTableName=report_card','Added 0.47.0 -- model_index foriegn key to report_card',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-025','dpsutton','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',126,'EXECUTED','9:e002aab419bb327f68a09b604eb24fa5','addForeignKeyConstraint baseTableName=model_index_value, constraintName=fk_model_index_value_model_id, referencedTableName=model_index','Added 0.47.0 -- model_index_value foriegn key to model_index',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-026','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',127,'EXECUTED','9:81eed341cad343495635a2071229e322','createTable tableName=connection_impersonations','Added 0.47.0 - New table for connection impersonation policies',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-027','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',128,'EXECUTED','9:a40730a20a1f9ae345d15f9c2bfa443e','customChange','Added 0.47.0 - Migrate field_ref in report_card.result_metadata from legacy format',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-028','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',129,'EXECUTED','9:66ec973062109ac00d89c8bb1a867d1e','customChange','Added 0.47.0 - Add join-alias to the report_card.visualization_settings.column_settings field refs',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-029','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',130,'EXECUTED','9:4e63a84adeeacdbe8ecf771e3f6cf65e','customChange','Added 0.47.0 - Stack cards vertically for dashboard with tabs on downgrade',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-030','escherize','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',131,'EXECUTED','9:e6d3c56859e8c41a5c5f6b7ebcc489d7','addColumn tableName=collection','Added 0.47.0 - Type column for collections for instance-analytics',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-031','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',132,'EXECUTED','9:6c0047955d2fc52cd25e4e4aabdc7143','sql; sql','Added 0.47.0 - migrate dashboard grid size from 18 to 24',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-032','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',133,'EXECUTED','9:e9621439a79c5255a2cfe540c1e8df73','customChange','Added 0.47.0 - migrate dashboard grid size from 18 to 24 for revisions',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-033','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',134,'EXECUTED','9:ef48cabec16353dc09a6297d06e27a9f','customChange','Added 0.47.0 - Migrate field refs in visualization_settings.column_settings keys from legacy format',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-034','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',135,'EXECUTED','9:9032d7052ab38a476e7f83d9486e8609','customChange','Added 0.47.0 - Add join-alias to the visualization_settings.column_settings field refs in card revisions',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-035','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',136,'EXECUTED','9:57f53ab4caba81bea788f23487b6888a','dropForeignKeyConstraint baseTableName=implicit_action, constraintName=fk_implicit_action_action_id','Added 0.47.0 - Drop foreign key constraint on implicit_action.action_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-036','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:11',137,'EXECUTED','9:c45b0246a2068f7bed037662a25e52c0','addPrimaryKey constraintName=pk_implicit_action, tableName=implicit_action','Added 0.47.0 - Set primary key to action_id for implicit_action table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-037','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',138,'EXECUTED','9:8a7a6c51a3f52acb8b69bf10782e3a6e','addForeignKeyConstraint baseTableName=implicit_action, constraintName=fk_implicit_action_action_id, referencedTableName=action','Added 0.47.0 - Add foreign key constraint on implicit_action.action_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-043','calherres','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',139,'EXECUTED','9:d7a6e633d99b064539cbc7563c7f1905','customChange','Added 0.47.0 - Migrate report_dashboardcard.visualization_settings.column_settings field refs from legacy format',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-044','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',140,'EXECUTED','9:905e1385202b3626c9e67e4645b44375','customChange','Added 0.47.0 - Add join-alias to the report_dashboardcard.visualization_settings.column_settings field refs',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-045','calherres','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',141,'EXECUTED','9:ad1660852fc3eacd2c35e164d3c97609','customChange','Added 0.47.0 - Migrate dashboard revision dashboard cards\' visualization_settings.column_settings field refs from legacy format',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-046','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',142,'EXECUTED','9:e0cd8b50dc855ce3362b562dc80afbb0','customChange','Added 0.47.0 - Add join-alias to dashboard revision dashboard cards\' visualization_settings.column_settings field refs',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-050','tsmacdonald','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',143,'EXECUTED','9:8e9aad6950c3b6f4799f51f0a7277457','addColumn tableName=metabase_table','Added 0.47.0 - table.is_upload',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-051','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',144,'EXECUTED','9:ec914ed2458e64fdd021bc6ca19e85c1','dropForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_db_id','Added 0.47.0 - Drop foreign key constraint on connection_impersonations.db_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-052','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',145,'EXECUTED','9:9dc7bed69c542749be182f5d76233488','dropForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_group_id','Added 0.47.0 - Drop foreign key constraint on connection_impersonations.group_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-053','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',146,'EXECUTED','9:91a175d49e28b1653ac8a7bad2a8204f','createIndex indexName=idx_conn_impersonations_db_id, tableName=connection_impersonations','Added 0.47.0 -- connection_impersonations index for db_id column',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-054','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',147,'EXECUTED','9:5245b1f06e5d1ae3a4c929f6cfcde9d4','createIndex indexName=idx_conn_impersonations_group_id, tableName=connection_impersonations','Added 0.47.0 -- connection_impersonations index for group_id column',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-055','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',148,'EXECUTED','9:aef0d48122a09e653a9683d3b7074165','addUniqueConstraint constraintName=conn_impersonation_unique_group_id_db_id, tableName=connection_impersonations','Added 0.47.0 - unique constraint for connection impersonations',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-056','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',149,'EXECUTED','9:bac4590e83ce8522e9fad8703aa88295','addForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_db_id, referencedTableName=metabase_database','Added 0.47.0 - re-add foreign key constraint on connection_impersonations.db_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-057','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:12',150,'EXECUTED','9:21e3b2ee3c1ae91f35c7c1fbd0f82dac','addForeignKeyConstraint baseTableName=connection_impersonations, constraintName=fk_conn_impersonation_group_id, referencedTableName=permissions_group','Added 0.47.0 - re-add foreign key constraint on connection_impersonations.group_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-058','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',151,'EXECUTED','9:d268796eef28773e767c286904f50cee','dropColumn columnName=entity_id, tableName=parameter_card','Drop parameter_card.entity_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v47.00-059','piranha','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',152,'EXECUTED','9:087e632c348027aeb01bc49bb428f67a','dropNotNullConstraint columnName=entity_id, tableName=dashboard_tab','Drops not null from dashboard_tab.entity_id since it breaks drop-entity-ids command',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-001','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',153,'EXECUTED','9:2dd9aa417cd83b00a59b5eb1deb9ae55','customChange','Added 0.47.0 - Migrate database.options to database.settings',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-002','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',154,'EXECUTED','9:7a9312346a8d041d62726cd99d27e02b','dropColumn columnName=options, tableName=metabase_database','Added 0.47.0 - drop metabase_database.options',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-003','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',155,'EXECUTED','9:b623ee408e368c53ef1865af15a5edac','dropTable tableName=computation_job_result','Added 0.48.0 - drop computation_job_result table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-004','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',156,'EXECUTED','9:e9bdc7a7ca09fe29d5b3479d9925bbd7','dropTable tableName=computation_job','Added 0.48.0 - drop computation_job table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-005','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',157,'EXECUTED','9:46dbd09ead2298f0e37d28f011b8986e','addColumn tableName=query_execution','Added 0.48.0 - Add query_execution.action_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-006','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',158,'EXECUTED','9:87cb5019893ddcb08ce06856825f1e6a','createIndex indexName=idx_query_execution_action_id, tableName=query_execution','Added 0.48.0 - Index query_execution.action_id',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-007','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',159,'EXECUTED','9:efa5dcca04d3887bca0eafc95754b9ee','addColumn tableName=revision','Added 0.48.0 - Add revision.most_recent',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-008','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',160,'EXECUTED','9:427285b2ac59a9b5a4c7c51f0f7140a6','sql; sql','Set revision.most_recent = true for latest revisions',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-009','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',161,'EXECUTED','9:4243d81311d2dc265d687e4b665215dc','createTable tableName=table_privileges','Added 0.48.0 - Create table_privileges table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-010','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',162,'EXECUTED','9:79908afdc739c3e9dbdddd1e29a20e5d','sql','Remove ON UPDATE for revision.timestamp on mysql, mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-011','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',163,'EXECUTED','9:2da4950057f3a912cd044bd95a189087','createIndex indexName=idx_revision_most_recent, tableName=revision','Index revision.most_recent',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-013','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',164,'MARK_RAN','9:9478b5f507bc34df51aaa4d719fc1c37','sql','Index unindexed FKs for postgres',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-014','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:13',165,'MARK_RAN','9:f22e8ba6b47eaa27344835a6f5069c7f','createIndex indexName=idx_table_privileges_table_id, tableName=table_privileges','Added 0.48.0 - Create table_privileges.table_id index',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-015','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',166,'EXECUTED','9:7ce7965ef94006d568d2298c4e5e007c','createIndex indexName=idx_table_privileges_role, tableName=table_privileges','Added 0.48.0 - Create table_privileges.role index',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-016','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',167,'EXECUTED','9:99bac12bbd1ff64b35f0c48f5f9bf824','modifyDataType columnName=slug, tableName=collection','Added 0.48.0 - Change the type of collection.slug to varchar(510)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-018','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',168,'EXECUTED','9:7e190e044ea31c175d382aa6eb2b80c4','createTable tableName=recent_views','Add new recent_views table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-019','nemanjaglumac','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',169,'EXECUTED','9:3af8327e2dab1b5344292966c4e1d8e0','dropColumn columnName=color, tableName=collection','Collection color is removed in 0.48.0',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-020','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',170,'EXECUTED','9:53aa607fc4b962053bffbca4e4283391','createIndex indexName=idx_recent_views_user_id, tableName=recent_views','Added 0.48.0 - Create recent_views.user_id index',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-021','piranha','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',171,'EXECUTED','9:8fd8b97bfbae458ea7eb91e117cabc33','addColumn tableName=report_card','Cards store Metabase version used to create them',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-022','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',172,'EXECUTED','9:0f826a4d0f9f512ca63fb667409ad999','customChange','Migrate migrate-click-through to a custom migration',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-023','piranha','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',173,'EXECUTED','9:6ee76f86f68f7a2120cf8160cb34fd99','customChange','Data migration migrate-remove-admin-from-group-mapping-if-needed',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-024','piranha','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',174,'EXECUTED','9:87ed320552869766323c1d12f7969b17','dropTable tableName=data_migrations','All data migrations were transferred to custom_migrations!',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-025','piranha','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',175,'EXECUTED','9:0e54628ce18964128e827ad05ab2a448','addColumn tableName=revision','Revisions store Metabase version used to create them',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-026','lbrdnk','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',176,'EXECUTED','9:d1ce706fe25d39767a77089171859856','update tableName=metabase_field','Set semantic_type with value type/Number to null (#18754)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-027','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',177,'EXECUTED','9:0a7ed49c904abc7110aa09324b49f106','sql','No op migration',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-028','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',178,'EXECUTED','9:545c671b45a6bdf0f8dc7aa8ddfaaf29','createTable tableName=audit_log','Add new audit_log table',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-029','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',179,'EXECUTED','9:bd1054ea8483f51d43701ba42d29768a','sqlFile path=instance_analytics_views/audit_log/v1/postgres-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v1/mysql-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v1/h2-audit_log.sql','Added 0.48.0 - new view v_audit_log',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-030','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',180,'EXECUTED','9:9dece66e24100146348152445f3ba47c','sqlFile path=instance_analytics_views/content/v1/postgres-content.sql; sqlFile path=instance_analytics_views/content/v1/mysql-content.sql; sqlFile path=instance_analytics_views/content/v1/h2-content.sql','Added 0.48.0 - new view v_content',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-031','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',181,'EXECUTED','9:4493c1a05ff71a8cf629c2e469e63b29','sqlFile path=instance_analytics_views/dashboardcard/v1/dashboardcard.sql','Added 0.48.0 - new view v_dashboardcard',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-032','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',182,'EXECUTED','9:c73d37997ac7c32b730b761bd1a7ecc0','sqlFile path=instance_analytics_views/group_members/v1/group_members.sql','Added 0.48.0 - new view v_group_members',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-033','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',183,'EXECUTED','9:793875adb62366f96ba5e97c3d86f6ad','sqlFile path=instance_analytics_views/subscriptions/v1/postgres-subscriptions.sql; sqlFile path=instance_analytics_views/subscriptions/v1/mysql-subscriptions.sql; sqlFile path=instance_analytics_views/subscriptions/v1/h2-subscriptions.sql','Added 0.48.0 - new view v_subscriptions for postgres',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-034','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',184,'EXECUTED','9:b3d39890db507464674fffaa4be3111c','sqlFile path=instance_analytics_views/users/v1/postgres-users.sql; sqlFile path=instance_analytics_views/users/v1/mysql-users.sql; sqlFile path=instance_analytics_views/users/v1/h2-users.sql','Added 0.48.0 - new view v_users',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-035','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',185,'EXECUTED','9:1600b802494a0077a24dbb4e4f6de5b2','sqlFile path=instance_analytics_views/alerts/v1/postgres-alerts.sql; sqlFile path=instance_analytics_views/alerts/v1/mysql-alerts.sql; sqlFile path=instance_analytics_views/alerts/v1/h2-alerts.sql','Added 0.48.0 - new view v_alerts',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-036','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',186,'EXECUTED','9:4a4b8b9d1d537618546664e041121858','sqlFile path=instance_analytics_views/databases/v1/databases.sql','Added 0.48.0 - new view v_databases',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-037','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',187,'EXECUTED','9:950273e8f27d0143e1ba26ff298da5c7','sqlFile path=instance_analytics_views/fields/v1/postgres-fields.sql; sqlFile path=instance_analytics_views/fields/v1/mysql-fields.sql; sqlFile path=instance_analytics_views/fields/v1/h2-fields.sql','Added 0.48.0 - new view v_fields',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-038','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:14',188,'EXECUTED','9:c7824fdfc6386073f53d490c9e25b3f4','sqlFile path=instance_analytics_views/query_log/v1/postgres-query_log.sql; sqlFile path=instance_analytics_views/query_log/v1/mysql-query_log.sql; sqlFile path=instance_analytics_views/query_log/v1/h2-query_log.sql','Added 0.48.0 - new view v_query_log',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-039','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',189,'EXECUTED','9:3d4eb8c983f42c45f9b55d401648ea73','sqlFile path=instance_analytics_views/tables/v1/postgres-tables.sql; sqlFile path=instance_analytics_views/tables/v1/mysql-tables.sql; sqlFile path=instance_analytics_views/tables/v1/h2-tables.sql','Added 0.48.0 - new view v_tables',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-040','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',190,'EXECUTED','9:b81e37d0a48f4fb40bf4a594b0ad5178','sqlFile path=instance_analytics_views/view_log/v1/postgres-view_log.sql; sqlFile path=instance_analytics_views/view_log/v1/mysql-view_log.sql; sqlFile path=instance_analytics_views/view_log/v1/h2-view_log.sql','Added 0.48.0 - new view v_view_log',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-045','qwef','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',191,'EXECUTED','9:3a8a23ac9c57ddb43351c8a0d57edbb7','addColumn tableName=query_execution','Added 0.48.0 - add is_sandboxed to query_execution',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-046','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',192,'EXECUTED','9:de62f52504f802c5bd4164395d88b340','sqlFile path=instance_analytics_views/indexes/v1/postgres-indexes.sql; sqlFile path=instance_analytics_views/indexes/v1/mysql-indexes.sql; sqlFile path=instance_analytics_views/indexes/v1/mariadb-indexes.sql; sqlFile path=instance_analytics_views/...','Added 0.48.0 - new indexes to optimize audit v2 queries',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-047','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',193,'EXECUTED','9:83099e323661cb585639e5ee8d48d7bf','dropForeignKeyConstraint baseTableName=recent_views, constraintName=fk_recent_views_ref_user_id','Drop foreign key on recent_views so that it can be recreated with onDelete policy',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-048','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',194,'EXECUTED','9:1ccb1544d732d0c6944ee1c4ac998801','addForeignKeyConstraint baseTableName=recent_views, constraintName=fk_recent_views_ref_user_id, referencedTableName=core_user','Add foreign key on recent_views with onDelete CASCADE',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-049','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',195,'EXECUTED','9:05df92e2ee338322a94403ba1ca24659','sql; sql; sql','Migrate data from activity to audit_log',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-050','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',196,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','Added 0.48.0 - no-op migration to remove audit DB and collection on downgrade',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-051','calherries','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',197,'EXECUTED','9:cf285be2d9566f078ecabe8c01b1a896','sql; sql','Migrate metabase_field when the fk target field is inactive',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-053','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',198,'EXECUTED','9:7997563ebc2f57b53a1f19679d89b3b7','modifyDataType columnName=model, tableName=activity','Increase length of `activity.model` to fit longer model names',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-054','escherize','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',199,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','Added 0.48.0 - no-op migration to remove Internal Metabase User on downgrade',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-055','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',200,'EXECUTED','9:753e49c8ca5d240edaea75a82af76e16','sqlFile path=instance_analytics_views/tasks/v1/postgres-tasks.sql; sqlFile path=instance_analytics_views/tasks/v1/mysql-tasks.sql; sqlFile path=instance_analytics_views/tasks/v1/h2-tasks.sql','Added 0.48.0 - new view v_tasks',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-056','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:15',201,'EXECUTED','9:cd66e7282ad1d92ae91d2694906f8762','addColumn tableName=view_log','Adjust view_log schema for Audit Log v2',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-057','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',202,'EXECUTED','9:24967224f6153a884f8f588772dfaf7d','addColumn tableName=view_log','Adjust view_log schema for Audit Log v2',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-059','qwef','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',203,'EXECUTED','9:aac112e35358d50dd099737f32e491bc','sql','Update the namespace of any audit collections that are already loaded',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-060','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',204,'EXECUTED','9:97dc864df6ae5bca6e14ff4b1a455030','createIndex indexName=idx_task_history_started_at, tableName=task_history','Added 0.48.0 - task_history.started_at',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-061','piranha','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',205,'EXECUTED','9:87e8b08479ad84f843df319cc837b450','addColumn tableName=query_execution','Adds query_execution.cache_hash -> query_cache.query_hash',NULL,'4.25.1',NULL,NULL,'5888034308'),('v48.00-067','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',206,'EXECUTED','9:d898510812a4024d10b9f731242ce883','addUniqueConstraint constraintName=idx_databasechangelog_id_author_filename, tableName=DATABASECHANGELOG','Add unique constraint idx_databasechangelog_id_author_filename',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-000','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',207,'EXECUTED','9:a6eaedb204bd70b999a7b7ed7524b904','sql','Remove leagcy pulses',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-003','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',208,'EXECUTED','9:6c49190e041265b22255a447302236b8','addColumn tableName=core_user','Add a `type` to users',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-004','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',209,'EXECUTED','9:910cb52c64c9c2432dbe19d487710723','createTable tableName=api_key','Add a table for API keys',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-005','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',210,'EXECUTED','9:790e75675265f53ca11f32994b9d1d12','createIndex indexName=idx_api_key_created_by, tableName=api_key','Add an index on `api_key.created_by`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-006','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',211,'EXECUTED','9:46cfb5a9bab696272d0211d7f34870ef','createIndex indexName=idx_api_key_user_id, tableName=api_key','Add an index on `api_key.user_id`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-007','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',212,'EXECUTED','9:638a7394870315abd52742b739ee49ff','sql','Set the `type` of the internal user',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-008','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',213,'EXECUTED','9:381669dee234455e2d6e975afb9e95b0','addColumn tableName=metabase_field','Add metabase_field.database_indexed',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-009','adam-james','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',214,'EXECUTED','9:9cc276d895ef96a7d9e4b9c9b033a91f','sql; sql','Migrate pulse_card.include_csv to \'true\' when the joined card.display is \'table\'',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-010','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',215,'EXECUTED','9:c618fafea8561e66c97ac5d9a56106f3','addColumn tableName=api_key','Add a name to API Keys',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-011','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',216,'EXECUTED','9:9dae0a3606d63cc6c47ec94f181d203c','addColumn tableName=metabase_table','Add metabase_table.database_require_filter',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-012','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:16',217,'EXECUTED','9:129b215b73fec358adbd3cf9ba478515','addColumn tableName=metabase_field','Add metabase_field.database_partitioned',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-013','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:17',218,'EXECUTED','9:fd99fac43bba1d45dfa8f17cd635e55b','addColumn tableName=api_key','Add `api_key.updated_by_id`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-014','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:17',219,'EXECUTED','9:ab6ff0fa8e1088222e01466c38295012','createIndex indexName=idx_api_key_updated_by_id, tableName=api_key','Add an index on `api_key.updated_by_id`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-015','johnswanson','migrations/001_update_migrations.yaml','2024-05-16 19:34:17',220,'EXECUTED','9:85e3063c4b008044fe6729789af4d2d0','renameColumn newColumnName=creator_id, oldColumnName=created_by, tableName=api_key','Rename `created_by` to `creator_id`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-016','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:17',221,'EXECUTED','9:3af524e7d0a5451fa0b3664c73909654','modifyDataType columnName=archived, tableName=action','Added 0.49.0 - modify type of action.archived from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-017','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:17',222,'EXECUTED','9:d6f038eb9f5cd269af61920e84b7843b','addNotNullConstraint columnName=archived, tableName=action','Add NOT NULL constraint to action.archived',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-018','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:17',223,'EXECUTED','9:dfa7799dd05f439f01c646f35810d37a','addDefaultValue columnName=archived, tableName=action','Add default value to action.archived',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-019','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:18',224,'EXECUTED','9:6670e06ad4f9cae59d8030a0bd188e8d','modifyDataType columnName=json_unfolding, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.json_unfolding from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-020','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:18',225,'EXECUTED','9:471354d5a2a892d7fff8dda434167e42','addNotNullConstraint columnName=json_unfolding, tableName=metabase_field','Add NOT NULL constraint to metabase_field.json_unfolding',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-021','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:18',226,'EXECUTED','9:eda3e041b4def2f0c9188b131330a743','addDefaultValue columnName=json_unfolding, tableName=metabase_field','Add default value to metabase_field.json_unfolding',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-022','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:18',227,'EXECUTED','9:f55c82c9150267f7af4105cfd040ea92','modifyDataType columnName=database_is_auto_increment, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.database_is_auto_increment from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-023','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:18',228,'EXECUTED','9:1c23e1a62c2c8b909285bd74f7babeb6','addNotNullConstraint columnName=database_is_auto_increment, tableName=metabase_field','Add NOT NULL constraint to metabase_field.database_is_auto_increment',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-024','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:18',229,'EXECUTED','9:438a77b956692c7e3703d96b913e5566','addDefaultValue columnName=database_is_auto_increment, tableName=metabase_field','Add default value to metabase_field.database_is_auto_increment',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-025','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:19',230,'EXECUTED','9:e71efa66f18a81d725397af1430e17cc','modifyDataType columnName=auto_apply_filters, tableName=report_dashboard','Added 0.49.0 - modify type of report_dashboard.auto_apply_filters from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-026','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:19',231,'EXECUTED','9:f48932fb7dbb00b5dd6eed779538d57f','addNotNullConstraint columnName=auto_apply_filters, tableName=report_dashboard','Add NOT NULL constraint to report_dashboard.auto_apply_filters',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-027','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:19',232,'EXECUTED','9:e8e27cec1e1cb5801ddfca828e3404a2','addDefaultValue columnName=auto_apply_filters, tableName=report_dashboard','Add default value to report_dashboard.auto_apply_filters',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-028','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:19',233,'EXECUTED','9:cc433fbe4fc7c63120f47c21f8dd4876','modifyDataType columnName=is_audit, tableName=metabase_database','Added 0.49.0 - modify type of metabase_database.is_audit from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-029','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:19',234,'EXECUTED','9:508f95400f30625332612492fc0d390f','addNotNullConstraint columnName=is_audit, tableName=metabase_database','Add NOT NULL constraint to metabase_database.is_audit',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-030','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:19',235,'EXECUTED','9:93140751149cec3fdf7a186e6bac564a','addDefaultValue columnName=is_audit, tableName=metabase_database','Add default value to metabase_database.is_audit',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-031','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',236,'EXECUTED','9:ee9d6badebbaad529947c18acab19f33','modifyDataType columnName=is_upload, tableName=metabase_table','Added 0.49.0 - modify type of metabase_table.is_upload from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-032','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',237,'EXECUTED','9:5db2a4a8512493aaeea8317c3bb97a0a','addNotNullConstraint columnName=is_upload, tableName=metabase_table','Add NOT NULL constraint to metabase_table.is_upload',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-033','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',238,'EXECUTED','9:75f535cee2ac99c5eabfd8d23007cec5','addDefaultValue columnName=is_upload, tableName=metabase_table','Add default value to metabase_table.is_upload',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-034','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',239,'EXECUTED','9:e0a9e7d1363fa5ab69571a9613d06c7f','modifyDataType columnName=most_recent, tableName=revision','Added 0.49.0 - modify type of revision.most_recent from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-035','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',240,'EXECUTED','9:e0a9e7d1363fa5ab69571a9613d06c7f','modifyDataType columnName=most_recent, tableName=revision','Added 0.49.0 - modify type of revision.most_recent from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-036','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',241,'EXECUTED','9:d4d5506cb138538496bfcc597dea0ed7','addNotNullConstraint columnName=most_recent, tableName=revision','Add NOT NULL constraint to revision.most_recent',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-037','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',242,'EXECUTED','9:ddaf7704e565f42c3599823018f7f0cd','addDefaultValue columnName=most_recent, tableName=revision','Add default value to revision.most_recent',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-038','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',243,'EXECUTED','9:764da803a4253e28e188705a0a54db7d','modifyDataType columnName=select, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.select from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-039','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',244,'EXECUTED','9:3ad298c9d5b09735eca58fa0e36145e6','addNotNullConstraint columnName=select, tableName=table_privileges','Add NOT NULL constraint to table_privileges.select',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-040','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:20',245,'EXECUTED','9:a429c76f53ca1f6e40cb97e10f5bbb13','addDefaultValue columnName=select, tableName=table_privileges','Add default value to table_privileges.select',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-041','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',246,'EXECUTED','9:b805a294a82be70036c9691bb6f8add6','modifyDataType columnName=update, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.update from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-042','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',247,'EXECUTED','9:a058ac5e70061fac23d649c51de38b4a','addNotNullConstraint columnName=update, tableName=table_privileges','Add NOT NULL constraint to table_privileges.update',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-043','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',248,'EXECUTED','9:1a18955a2d01bb8fb1b7edfc74f5d976','addDefaultValue columnName=update, tableName=table_privileges','Add default value to table_privileges.update',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-044','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',249,'EXECUTED','9:624c6ca0e36c7772bb253e5b145a0be6','modifyDataType columnName=insert, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.insert from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-045','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',250,'EXECUTED','9:a4e9d3e1b3ac0544d36da7fcf6e296a3','addNotNullConstraint columnName=insert, tableName=table_privileges','Add NOT NULL constraint to table_privileges.insert',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-046','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',251,'EXECUTED','9:32c3a206904e45e4d6b3d639a2477d4e','addDefaultValue columnName=insert, tableName=table_privileges','Add default value to table_privileges.insert',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-047','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',252,'EXECUTED','9:a49c32d40d1a70fa2388760363ed5626','modifyDataType columnName=delete, tableName=table_privileges','Added 0.49.0 - modify type of table_privileges.delete from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-048','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',253,'EXECUTED','9:ea9d63a09f6fbf06841c9e23d885d065','addNotNullConstraint columnName=delete, tableName=table_privileges','Add NOT NULL constraint to table_privileges.delete',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-049','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',254,'EXECUTED','9:fa6e7cafdbbf7880ddd8eef9b1cd33c9','addDefaultValue columnName=delete, tableName=table_privileges','Add default value to table_privileges.delete',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-050','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:21',255,'EXECUTED','9:5b2c42dcb037b8f34161182f1252f5a7','modifyDataType columnName=is_sandboxed, tableName=query_execution','Added 0.49.0 - modify type of query_execution.is_sandboxed from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-051','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:22',256,'EXECUTED','9:932ff410b31a5312bd59bb4af1051b91','modifyDataType columnName=has_access, tableName=view_log','Added 0.49.0 - modify type of view_log.has_access from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-052','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:22',257,'EXECUTED','9:ee005c2e466f51fdb7e6609e6604fbc7','modifyDataType columnName=database_indexed, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.database_indexed from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-053','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:22',258,'EXECUTED','9:63c99fa4f61b45384d24d65dd2b785dd','modifyDataType columnName=database_require_filter, tableName=metabase_table','Added 0.49.0 - modify type of metabase_table.database_require_filter from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-059','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',259,'EXECUTED','9:4046506923db48fd7a7c11021b58a4b5','customChange','Added 0.49.0 - unify type of time columns',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.00-060','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',260,'EXECUTED','9:bfa847d943e2a99d363bf56ac5f31b88','modifyDataType columnName=database_partitioned, tableName=metabase_field','Added 0.49.0 - modify type of metabase_field.database_partitioned from boolean to bit(1) on mysql,mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-01-22T11:50:00','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',261,'EXECUTED','9:643a028e650ad7fcd6789a702249a179','addColumn tableName=report_card','Add `report_card.type`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-01-22T11:51:00','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',262,'EXECUTED','9:6e53593c40c63e38d6c1ffd0331753c5','sql','Backfill `report_card.type`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-01-22T11:52:00','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',263,'EXECUTED','9:7d260ed302016469ea5950bba09cb471','customChange','Backfill `report_card.type`',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-01-29T19:26:40','adam-james','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',264,'EXECUTED','9:04671d8b09ff919ab5154604377ba247','addColumn tableName=report_dashboard','Add width setting to Dashboards',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-01-29T19:30:00','adam-james','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',265,'EXECUTED','9:856b864c837cd25b3de595691f2b5712','update tableName=report_dashboard','Update existing report_dashboard width values to full',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-01-29T19:56:40','adam-james','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',266,'EXECUTED','9:c092ab859ee6994fcd3b4719872abb97','addNotNullConstraint columnName=width, tableName=report_dashboard','Dashboard width setting must have a value',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-01-29T19:59:12','adam-james','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',267,'EXECUTED','9:663770b688f1ec9aee90d067d789ddbe','addDefaultValue columnName=width, tableName=report_dashboard','Add default value to report_dashboard.width for mysql and mariadb',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-02T11:27:49','oisincoveney','migrations/001_update_migrations.yaml','2024-05-16 19:34:28',268,'EXECUTED','9:c67f2804eeabd9937bb4d10d93160a9e','addColumn tableName=report_card','Add report_card.initially_published_at',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-02T11:28:36','oisincoveney','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',269,'EXECUTED','9:a789a7122bdeb83603486f84a2024a62','addColumn tableName=report_dashboard','Add report_dashboard.initially_published_at',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-07T21:52:01','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',270,'EXECUTED','9:da7a00eb2ed39a840975e50c93a5805a','sqlFile path=instance_analytics_views/view_log/v2/postgres-view_log.sql; sqlFile path=instance_analytics_views/view_log/v2/mysql-view_log.sql; sqlFile path=instance_analytics_views/view_log/v2/h2-view_log.sql','Added 0.49.0 - updated view v_view_log',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-07T21:52:02','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',271,'EXECUTED','9:bfad7cbbaf23a408a427ad13fe6ca61a','sqlFile path=instance_analytics_views/audit_log/v2/postgres-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v2/mysql-audit_log.sql; sqlFile path=instance_analytics_views/audit_log/v2/h2-audit_log.sql','Added 0.49.0 - updated view v_audit_log',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-07T21:52:03','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',272,'EXECUTED','9:9072a2d1352e44778ba6ecda18ba2177','sqlFile path=instance_analytics_views/group_members/v2/group_members.sql','Added 0.49.0 - updated view v_group_members',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-07T21:52:04','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',273,'EXECUTED','9:8a38c37ebaa7737254f1cbcca2ee9a05','sqlFile path=instance_analytics_views/query_log/v2/postgres-query_log.sql; sqlFile path=instance_analytics_views/query_log/v2/mysql-query_log.sql; sqlFile path=instance_analytics_views/query_log/v2/h2-query_log.sql','Added 0.49.0 - updated view v_query_log',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-07T21:52:05','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',274,'EXECUTED','9:5c6dc68180512127abcbefb3c1905b6e','sqlFile path=instance_analytics_views/users/v2/postgres-users.sql; sqlFile path=instance_analytics_views/users/v2/mysql-users.sql; sqlFile path=instance_analytics_views/users/v2/h2-users.sql','Added 0.49.0 - updated view v_users',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-02-09T13:55:26','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',275,'MARK_RAN','9:c5913529bf32922a42106be35fa5cb0f','sql; sql; sql','Set default value for enable-public-sharing to `false` for existing instances with users, if not already set',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-03-26T10:23:12','adam-james','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',276,'EXECUTED','9:2e7a0bc202e12b0ece4365d253b46bff','addColumn tableName=pulse_card','Add pulse_card.format_rows',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-03-26T20:27:58','noahmoss','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',277,'EXECUTED','9:469ae1b8af4545f2f48d9505fd34059d','customChange','Added 0.46.0 - Delete the truncate audit log task (renamed to truncate audit tables)',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-04-09T10:00:00','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',278,'EXECUTED','9:0584ae323d98a60f80b433bedab2a0a2','dropNotNullConstraint columnName=cache_field_values_schedule, tableName=metabase_database','Drop not null constraint on metabase_database.cache_field_values_schedule',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-04-09T10:00:01','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',279,'EXECUTED','9:68341c448ecdca425eae019974b64c09','dropDefaultValue columnName=cache_field_values_schedule, tableName=metabase_database','Drop default value on metabase_database.cache_field_values_schedule',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-04-09T10:00:02','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',280,'EXECUTED','9:adb15f2d80ea2b037b44d1eb2dbcb3c5','addDefaultValue columnName=cache_field_values_schedule, tableName=metabase_database','Add null as default value for metabase_database.cache_field_values_schedule',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-04-09T10:00:03','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',281,'EXECUTED','9:fb84fa8ea82ea520edae45164aa167d9','customChange','This clears the schedule for caching field values for databases with period scanning disabled.',NULL,'4.25.1',NULL,NULL,'5888034308'),('v49.2024-05-07T10:00:00','qnkhuat','migrations/001_update_migrations.yaml','2024-05-16 19:34:29',282,'EXECUTED','9:60df23f2bae0b7c52fcb29845cb911e5','sql','Set revision.most_recent = true to latest revision and false to others. A redo of v48.00-008 for mysql',NULL,'4.25.1',NULL,NULL,'5888034308');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` tinyint NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,0,NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_BLOB_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_CRON_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('MetabaseScheduler','metabase.task.anonymous-stats.trigger','DEFAULT','0 33 20 * * ? *','GMT'),('MetabaseScheduler','metabase.task.creator-sentiment-emails.trigger','DEFAULT','0 0 2 ? * 7','GMT'),('MetabaseScheduler','metabase.task.follow-up-emails.trigger','DEFAULT','0 0 12 * * ? *','GMT'),('MetabaseScheduler','metabase.task.refresh-channel-cache.trigger','DEFAULT','0 36 0/4 1/1 * ? *','GMT'),('MetabaseScheduler','metabase.task.send-pulses.trigger','DEFAULT','0 0 * * * ? *','GMT'),('MetabaseScheduler','metabase.task.sync-and-analyze.trigger.2','DEFAULT','0 13 * * * ? *','GMT'),('MetabaseScheduler','metabase.task.task-history-cleanup.trigger','DEFAULT','0 0 0 * * ? *','GMT'),('MetabaseScheduler','metabase.task.truncate-audit-tables.trigger','DEFAULT','0 0 */12 * * ? *','GMT'),('MetabaseScheduler','metabase.task.update-field-values.trigger.2','DEFAULT','0 0 14 * * ? *','GMT'),('MetabaseScheduler','metabase.task.upgrade-checks.trigger','DEFAULT','0 15 6,18 * * ? *','GMT');
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIRED_TIME` bigint NOT NULL,
  `SCHED_TIME` bigint DEFAULT NULL,
  `PRIORITY` int NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IS_NONCONCURRENT` bit(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` bit(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `IS_DURABLE` bit(1) NOT NULL,
  `IS_NONCONCURRENT` bit(1) NOT NULL,
  `IS_UPDATE_DATA` bit(1) NOT NULL,
  `REQUESTS_RECOVERY` bit(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('MetabaseScheduler','metabase.task.anonymous-stats.job','DEFAULT',NULL,'metabase.task.send_anonymous_stats.SendAnonymousUsageStats',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.creator-sentiment-emails.job','DEFAULT',NULL,'metabase.task.creator_sentiment_emails.CreatorSentimentEmail',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.email-remove-legacy-pulse.job','DEFAULT',NULL,'metabase.task.email_remove_legacy_pulse.EmailRemoveLegacyPulse',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.follow-up-emails.job','DEFAULT',NULL,'metabase.task.follow_up_emails.FollowUpEmail',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.IndexValues.job','DEFAULT','Indexed Value Refresh task','metabase.task.index_values.ModelIndexRefresh',_binary '',_binary '',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.PersistencePrune.job','DEFAULT','Persisted Model prune task','metabase.task.persist_refresh.PersistencePrune',_binary '',_binary '',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.PersistenceRefresh.job','DEFAULT','Persisted Model refresh task','metabase.task.persist_refresh.PersistenceRefresh',_binary '',_binary '',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.refresh-channel-cache.job','DEFAULT',NULL,'metabase.task.refresh_slack_channel_user_cache.RefreshCache',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.send-pulses.job','DEFAULT',NULL,'metabase.task.send_pulses.SendPulses',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.sync-and-analyze.job','DEFAULT','sync-and-analyze for all databases','metabase.task.sync_databases.SyncAndAnalyzeDatabase',_binary '',_binary '',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.task-history-cleanup.job','DEFAULT',NULL,'metabase.task.task_history_cleanup.TaskHistoryCleanup',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.truncate-audit-tables.job','DEFAULT',NULL,'metabase.task.truncate_audit_tables.TruncateAuditTables',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.update-field-values.job','DEFAULT','update-field-values for all databases','metabase.task.sync_databases.UpdateFieldValues',_binary '',_binary '',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0'),('MetabaseScheduler','metabase.task.upgrade-checks.job','DEFAULT',NULL,'metabase.task.upgrade_checks.CheckForNewVersions',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0');
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `QRTZ_LOCKS` VALUES ('MetabaseScheduler','STATE_ACCESS'),('MetabaseScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `INSTANCE_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint NOT NULL,
  `CHECKIN_INTERVAL` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('MetabaseScheduler','metabase-7c5868667f-wrjfl1715969874730',1715975343939,7500);
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `REPEAT_COUNT` bigint NOT NULL,
  `REPEAT_INTERVAL` bigint NOT NULL,
  `TIMES_TRIGGERED` bigint NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_SIMPLE_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INT_PROP_1` int DEFAULT NULL,
  `INT_PROP_2` int DEFAULT NULL,
  `LONG_PROP_1` bigint DEFAULT NULL,
  `LONG_PROP_2` bigint DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` bit(1) DEFAULT NULL,
  `BOOL_PROP_2` bit(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `FK_QRTZ_SIMPROP_TRIGGERS_TRIGGERS` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `QRTZ_TRIGGERS` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint DEFAULT NULL,
  `PREV_FIRE_TIME` bigint DEFAULT NULL,
  `PRIORITY` int DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `START_TIME` bigint NOT NULL,
  `END_TIME` bigint DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MISFIRE_INSTR` smallint DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `FK_QRTZ_TRIGGERS_JOB_DETAILS` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `QRTZ_JOB_DETAILS` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used for Quartz scheduler.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_TRIGGERS` VALUES ('MetabaseScheduler','metabase.task.anonymous-stats.trigger','DEFAULT','metabase.task.anonymous-stats.job','DEFAULT',NULL,1715977980000,-1,5,'WAITING','CRON',1715969874000,0,NULL,0,''),('MetabaseScheduler','metabase.task.creator-sentiment-emails.trigger','DEFAULT','metabase.task.creator-sentiment-emails.job','DEFAULT',NULL,1715997600000,-1,5,'WAITING','CRON',1715969875000,0,NULL,0,''),('MetabaseScheduler','metabase.task.follow-up-emails.trigger','DEFAULT','metabase.task.follow-up-emails.job','DEFAULT',NULL,1716033600000,-1,5,'WAITING','CRON',1715969875000,0,NULL,0,''),('MetabaseScheduler','metabase.task.refresh-channel-cache.trigger','DEFAULT','metabase.task.refresh-channel-cache.job','DEFAULT',NULL,1715978160000,-1,5,'WAITING','CRON',1715969874000,0,NULL,2,''),('MetabaseScheduler','metabase.task.send-pulses.trigger','DEFAULT','metabase.task.send-pulses.job','DEFAULT',NULL,1715976000000,1715972400000,5,'WAITING','CRON',1715969875000,0,NULL,1,''),('MetabaseScheduler','metabase.task.sync-and-analyze.trigger.2','DEFAULT','metabase.task.sync-and-analyze.job','DEFAULT','sync-and-analyze Database 2',1715976780000,1715973180000,5,'WAITING','CRON',1715889325000,0,NULL,2,_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0db-idsr\0java.lang.Integer‚†§\˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0x\0'),('MetabaseScheduler','metabase.task.task-history-cleanup.trigger','DEFAULT','metabase.task.task-history-cleanup.job','DEFAULT',NULL,1715990400000,-1,5,'WAITING','CRON',1715969875000,0,NULL,0,''),('MetabaseScheduler','metabase.task.truncate-audit-tables.trigger','DEFAULT','metabase.task.truncate-audit-tables.job','DEFAULT',NULL,1715990400000,-1,5,'WAITING','CRON',1715969875000,0,NULL,2,''),('MetabaseScheduler','metabase.task.update-field-values.trigger.2','DEFAULT','metabase.task.update-field-values.job','DEFAULT','update-field-values Database 2',1716040800000,-1,5,'WAITING','CRON',1715889325000,0,NULL,2,_binary '¨\Ì\0sr\0org.quartz.JobDataMapü∞ÉËø©∞\À\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMapÇ\Ë\√˚\≈](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\Ê.≠(v\n\Œ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0db-idsr\0java.lang.Integer‚†§\˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0x\0'),('MetabaseScheduler','metabase.task.upgrade-checks.trigger','DEFAULT','metabase.task.upgrade-checks.job','DEFAULT',NULL,1716012900000,-1,5,'WAITING','CRON',1715969874000,0,NULL,0,'');
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the action was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the action was updated',
  `type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Type of action',
  `model_id` int NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'The description of the action',
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'The saved parameters for this action',
  `parameter_mappings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'The saved parameter mappings for this action',
  `visualization_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'The UI visualization_settings for this action',
  `public_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Action.',
  `made_public_by_id` int DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Action.',
  `creator_id` int DEFAULT NULL COMMENT 'The user who created the action',
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_action_public_uuid` (`public_uuid`),
  KEY `fk_action_made_public_by_id` (`made_public_by_id`),
  KEY `idx_action_creator_id` (`creator_id`),
  KEY `fk_action_model_id` (`model_id`),
  CONSTRAINT `fk_action_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `fk_action_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_action_model_id` FOREIGN KEY (`model_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An action is something you can do, such as run a readwrite query';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `model` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int DEFAULT NULL,
  `database_id` int DEFAULT NULL,
  `table_id` int DEFAULT NULL,
  `custom_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_activity_timestamp` (`timestamp`),
  KEY `idx_activity_user_id` (`user_id`),
  KEY `idx_activity_custom_id` (`custom_id`),
  KEY `idx_activity_entity_qualified_id` (((case when (`model` = _utf8mb4'Dataset') then concat(_utf8mb4'card_',`model_id`) when (`model_id` is null) then NULL else concat(lower(`model`),_utf8mb4'_',`model_id`) end))),
  CONSTRAINT `fk_activity_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_key`
--

DROP TABLE IF EXISTS `api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_key` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'The ID of the API Key itself',
  `user_id` int NOT NULL COMMENT 'The ID of the user who this API Key acts as',
  `key` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The hashed API key',
  `key_prefix` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The first 7 characters of the unhashed key',
  `creator_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp when the key was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp when the key was last updated',
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The user-defined name of the API key.',
  `updated_by_id` int NOT NULL COMMENT 'The ID of the user that last updated this API key',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key_prefix` (`key_prefix`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_api_key_created_by` (`creator_id`),
  KEY `idx_api_key_user_id` (`user_id`),
  KEY `idx_api_key_updated_by_id` (`updated_by_id`),
  CONSTRAINT `fk_api_key_created_by_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `fk_api_key_updated_by_id_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `core_user` (`id`),
  CONSTRAINT `fk_api_key_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An API Key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_key`
--

LOCK TABLES `api_key` WRITE;
/*!40000 ALTER TABLE `api_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application_permissions_revision`
--

DROP TABLE IF EXISTS `application_permissions_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_permissions_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `before` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the permission graph before the changes.',
  `after` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the changes in permission graph.',
  `user_id` int NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` timestamp(6) NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Optional remarks explaining why these changes were made.',
  PRIMARY KEY (`id`),
  KEY `fk_general_permissions_revision_user_id` (`user_id`),
  CONSTRAINT `fk_general_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to general permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_permissions_revision`
--

LOCK TABLES `application_permissions_revision` WRITE;
/*!40000 ALTER TABLE `application_permissions_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_permissions_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The topic of a given audit event',
  `timestamp` timestamp(6) NOT NULL COMMENT 'The time an event was recorded',
  `end_timestamp` timestamp(6) NULL DEFAULT NULL COMMENT 'The time an event ended, if applicable',
  `user_id` int DEFAULT NULL COMMENT 'The user who performed an action or triggered an event',
  `model` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The name of the model this event applies to (e.g. Card, Dashboard), if applicable',
  `model_id` int DEFAULT NULL COMMENT 'The ID of the model this event applies to, if applicable',
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A JSON map with metadata about the event',
  PRIMARY KEY (`id`),
  KEY `idx_audit_log_entity_qualified_id` (((case when (`model` = _utf8mb4'Dataset') then concat(_utf8mb4'card_',`model_id`) when (`model_id` is null) then NULL else concat(lower(`model`),_utf8mb4'_',`model_id`) end)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store application events for auditing use cases';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark_ordering`
--

DROP TABLE IF EXISTS `bookmark_ordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmark_ordering` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who ordered bookmarks',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type of the Bookmark',
  `item_id` int NOT NULL COMMENT 'id of the item being bookmarked (Card, Collection, Dashboard, ...) no FK, so may no longer exist',
  `ordering` int NOT NULL COMMENT 'order of bookmark for user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_bookmark_user_id_type_item_id` (`user_id`,`type`,`item_id`),
  UNIQUE KEY `unique_bookmark_user_id_ordering` (`user_id`,`ordering`),
  KEY `idx_bookmark_ordering_user_id` (`user_id`),
  CONSTRAINT `fk_bookmark_ordering_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding ordering information for various bookmark tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark_ordering`
--

LOCK TABLES `bookmark_ordering` WRITE;
/*!40000 ALTER TABLE `bookmark_ordering` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmark_ordering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_bookmark`
--

DROP TABLE IF EXISTS `card_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who bookmarked the Card',
  `card_id` int NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_card_bookmark_user_id_card_id` (`user_id`,`card_id`),
  KEY `idx_card_bookmark_user_id` (`user_id`),
  KEY `idx_card_bookmark_card_id` (`card_id`),
  CONSTRAINT `fk_card_bookmark_dashboard_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on cards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_bookmark`
--

LOCK TABLES `card_bookmark` WRITE;
/*!40000 ALTER TABLE `card_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_label`
--

DROP TABLE IF EXISTS `card_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_id` int NOT NULL,
  `label_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_card_label_card_id_label_id` (`card_id`,`label_id`),
  KEY `idx_card_label_card_id` (`card_id`),
  KEY `idx_card_label_label_id` (`label_id`),
  CONSTRAINT `fk_card_label_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_label_ref_label_id` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_label`
--

LOCK TABLES `card_label` WRITE;
/*!40000 ALTER TABLE `card_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether this Collection has been archived and should be hidden from users.',
  `location` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/' COMMENT 'Directory-structure path of ancestor Collections. e.g. "/1/2/" means our Parent is Collection 2, and their parent is Collection 1.',
  `personal_owner_id` int DEFAULT NULL COMMENT 'If set, this Collection is a personal Collection, for exclusive use of the User with this ID.',
  `slug` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namespace` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The namespace (hierachy) this Collection belongs to. NULL means the Collection is in the default namespace.',
  `authority_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nullable column to incidate collection''s authority level. Initially values are "official" and nil.',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Timestamp of when this Collection was created.',
  `type` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'This is used to differentiate instance-analytics collections from all other collections.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collection_personal_owner_id` (`personal_owner_id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_collection_location` (`location`),
  KEY `idx_collection_personal_owner_id` (`personal_owner_id`),
  CONSTRAINT `fk_collection_personal_owner_id` FOREIGN KEY (`personal_owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Collections are an optional way to organize Cards and handle permissions for them.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (1,'Test User\'s Personal Collection',NULL,_binary '\0','/',1,'test_user_s_personal_collection',NULL,NULL,'JkPVZ0cltdkwQlTRCo8Cq','2024-05-16 19:56:13.343924',NULL);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_bookmark`
--

DROP TABLE IF EXISTS `collection_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who bookmarked the Collection',
  `collection_id` int NOT NULL COMMENT 'ID of the Card bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_collection_bookmark_user_id_collection_id` (`user_id`,`collection_id`),
  KEY `idx_collection_bookmark_user_id` (`user_id`),
  KEY `idx_collection_bookmark_collection_id` (`collection_id`),
  CONSTRAINT `fk_collection_bookmark_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_collection_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on collections';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_bookmark`
--

LOCK TABLES `collection_bookmark` WRITE;
/*!40000 ALTER TABLE `collection_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_permission_graph_revision`
--

DROP TABLE IF EXISTS `collection_permission_graph_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_permission_graph_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `before` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `after` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` timestamp(6) NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_collection_revision_user_id` (`user_id`),
  CONSTRAINT `fk_collection_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to collections.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_permission_graph_revision`
--

LOCK TABLES `collection_permission_graph_revision` WRITE;
/*!40000 ALTER TABLE `collection_permission_graph_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_permission_graph_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connection_impersonations`
--

DROP TABLE IF EXISTS `connection_impersonations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connection_impersonations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `db_id` int NOT NULL COMMENT 'ID of the database this connection impersonation policy affects',
  `group_id` int NOT NULL COMMENT 'ID of the permissions group this connection impersonation policy affects',
  `attribute` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'User attribute associated with the database role to use for this connection impersonation policy',
  PRIMARY KEY (`id`),
  UNIQUE KEY `conn_impersonation_unique_group_id_db_id` (`group_id`,`db_id`),
  KEY `idx_conn_impersonations_db_id` (`db_id`),
  KEY `idx_conn_impersonations_group_id` (`group_id`),
  CONSTRAINT `fk_conn_impersonation_db_id` FOREIGN KEY (`db_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_conn_impersonation_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table for holding connection impersonation policies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connection_impersonations`
--

LOCK TABLES `connection_impersonations` WRITE;
/*!40000 ALTER TABLE `connection_impersonations` DISABLE KEYS */;
/*!40000 ALTER TABLE `connection_impersonations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_session`
--

DROP TABLE IF EXISTS `core_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_session` (
  `id` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  `anti_csrf_token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_session_ref_user_id` (`user_id`),
  CONSTRAINT `fk_session_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_session`
--

LOCK TABLES `core_session` WRITE;
/*!40000 ALTER TABLE `core_session` DISABLE KEYS */;
INSERT INTO `core_session` VALUES ('bd316065-79a7-4666-8a55-18cdfa4c62fe',1,'2024-05-17 18:55:39.919908',NULL);
/*!40000 ALTER TABLE `core_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_salt` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_joined` timestamp(6) NOT NULL,
  `last_login` timestamp(6) NULL DEFAULT NULL,
  `is_superuser` bit(1) NOT NULL DEFAULT b'0',
  `is_active` bit(1) NOT NULL DEFAULT b'1',
  `reset_token` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_triggered` bigint DEFAULT NULL,
  `is_qbnewb` bit(1) NOT NULL DEFAULT b'1',
  `login_attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `sso_source` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'String to indicate the SSO backend the user is from',
  `locale` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Preferred ISO locale (language/country) code, e.g "en" or "en-US", for this User. Overrides site default.',
  `is_datasetnewb` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Boolean flag to indicate if the dataset info modal has been dismissed.',
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Serialized JSON containing User-local Settings for this User',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'personal' COMMENT 'The type of user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_user_full_name` ((concat(`first_name`,_utf8mb4' ',`last_name`)))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,'someone@someone.com','Test','User','$2a$10$7bghM3rAi.WaddhUE1LzFezBahbsDV9ztJigRJFhMjfGuxRgwZjhm','abd6e511-b432-4ec6-9dd1-0f3246f06074','2024-05-16 19:55:25.000000','2024-05-17 18:55:39.000000',_binary '',_binary '',NULL,NULL,_binary '','{}','2024-05-17 18:56:36.167207',NULL,NULL,_binary '','{\"last-acknowledged-version\":\"v0.49.11\",\"dismissed-custom-dashboard-toast\":\"true\"}','personal');
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_bookmark`
--

DROP TABLE IF EXISTS `dashboard_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who bookmarked the Dashboard',
  `dashboard_id` int NOT NULL COMMENT 'ID of the Dashboard bookmarked by the user',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the bookmark was created',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dashboard_bookmark_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  KEY `idx_dashboard_bookmark_user_id` (`user_id`),
  KEY `idx_dashboard_bookmark_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_bookmark_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_bookmark_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding bookmarks on dashboards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_bookmark`
--

LOCK TABLES `dashboard_bookmark` WRITE;
/*!40000 ALTER TABLE `dashboard_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_favorite`
--

DROP TABLE IF EXISTS `dashboard_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_favorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'ID of the User who favorited the Dashboard.',
  `dashboard_id` int NOT NULL COMMENT 'ID of the Dashboard favorited by the User.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dashboard_favorite_user_id_dashboard_id` (`user_id`,`dashboard_id`),
  KEY `idx_dashboard_favorite_user_id` (`user_id`),
  KEY `idx_dashboard_favorite_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_favorite_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_favorite_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Presence of a row here indicates a given User has favorited a given Dashboard.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_favorite`
--

LOCK TABLES `dashboard_favorite` WRITE;
/*!40000 ALTER TABLE `dashboard_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_tab`
--

DROP TABLE IF EXISTS `dashboard_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_tab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dashboard_id` int NOT NULL COMMENT 'The dashboard that a tab is on',
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Displayed name of the tab',
  `position` int NOT NULL COMMENT 'Position of the tab with respect to others tabs in dashboard',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp at which the tab was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp at which the tab was last updated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_dashboard_tab_ref_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_dashboard_tab_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Join table connecting dashboard to dashboardcards';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_tab`
--

LOCK TABLES `dashboard_tab` WRITE;
/*!40000 ALTER TABLE `dashboard_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboardcard_series`
--

DROP TABLE IF EXISTS `dashboardcard_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboardcard_series` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dashboardcard_id` int NOT NULL,
  `card_id` int NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dashboardcard_series_dashboardcard_id` (`dashboardcard_id`),
  KEY `idx_dashboardcard_series_card_id` (`card_id`),
  CONSTRAINT `fk_dashboardcard_series_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboardcard_series_ref_dashboardcard_id` FOREIGN KEY (`dashboardcard_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboardcard_series`
--

LOCK TABLES `dashboardcard_series` WRITE;
/*!40000 ALTER TABLE `dashboardcard_series` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboardcard_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependency`
--

DROP TABLE IF EXISTS `dependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int NOT NULL,
  `dependent_on_model` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependent_on_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dependency_model` (`model`),
  KEY `idx_dependency_model_id` (`model_id`),
  KEY `idx_dependency_dependent_on_model` (`dependent_on_model`),
  KEY `idx_dependency_dependent_on_id` (`dependent_on_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependency`
--

LOCK TABLES `dependency` WRITE;
/*!40000 ALTER TABLE `dependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimension`
--

DROP TABLE IF EXISTS `dimension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dimension` (
  `id` int NOT NULL AUTO_INCREMENT,
  `field_id` int NOT NULL COMMENT 'ID of the field this dimension row applies to',
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Short description used as the display name of this new column',
  `type` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Either internal for a user defined remapping or external for a foreign key based remapping',
  `human_readable_field_id` int DEFAULT NULL COMMENT 'Only used with external type remappings. Indicates which field on the FK related table to use for display',
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_dimension_field_id` (`field_id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_dimension_displayfk_ref_field_id` (`human_readable_field_id`),
  KEY `idx_dimension_field_id` (`field_id`),
  CONSTRAINT `fk_dimension_displayfk_ref_field_id` FOREIGN KEY (`human_readable_field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dimension_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores references to alternate views of existing fields, such as remapping an integer to a description, like an enum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimension`
--

LOCK TABLES `dimension` WRITE;
/*!40000 ALTER TABLE `dimension` DISABLE KEYS */;
/*!40000 ALTER TABLE `dimension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `http_action`
--

DROP TABLE IF EXISTS `http_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `http_action` (
  `action_id` int NOT NULL COMMENT 'The related action',
  `template` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A template that defines method,url,body,headers required to make an api call',
  `response_handle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'A program to take an api response and transform to an appropriate response for emitters',
  `error_handle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'A program to take an api response to determine if an error occurred',
  PRIMARY KEY (`action_id`),
  CONSTRAINT `fk_http_action_ref_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An http api call type of action';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `http_action`
--

LOCK TABLES `http_action` WRITE;
/*!40000 ALTER TABLE `http_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `http_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implicit_action`
--

DROP TABLE IF EXISTS `implicit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `implicit_action` (
  `action_id` int NOT NULL COMMENT 'The associated action',
  `kind` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The kind of implicit action create/update/delete',
  PRIMARY KEY (`action_id`),
  CONSTRAINT `fk_implicit_action_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='An action with dynamic parameters based on the underlying model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implicit_action`
--

LOCK TABLES `implicit_action` WRITE;
/*!40000 ALTER TABLE `implicit_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `implicit_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label`
--

DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `idx_label_slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_history`
--

DROP TABLE IF EXISTS `login_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'When this login occurred.',
  `user_id` int NOT NULL COMMENT 'ID of the User that logged in.',
  `session_id` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ID of the Session created by this login if one is currently active. NULL if Session is no longer active.',
  `device_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Cookie-based unique identifier for the device/browser the user logged in from.',
  `device_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_session_id` (`session_id`),
  KEY `idx_timestamp` (`timestamp`),
  KEY `idx_user_id_device_id` (`session_id`,`device_id`),
  KEY `idx_user_id_timestamp` (`user_id`,`timestamp`),
  CONSTRAINT `fk_login_history_session_id` FOREIGN KEY (`session_id`) REFERENCES `core_session` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_login_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Keeps track of various logins for different users and additional info such as location and device';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_history`
--

LOCK TABLES `login_history` WRITE;
/*!40000 ALTER TABLE `login_history` DISABLE KEYS */;
INSERT INTO `login_history` VALUES (1,'2024-05-17 17:52:06.726662',1,NULL,'ed0167c7-2e88-4cb5-a068-ff5231dcaf35','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','100.64.0.5'),(2,'2024-05-17 18:28:25.143898',1,NULL,'ed0167c7-2e88-4cb5-a068-ff5231dcaf35','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','100.64.0.5'),(3,'2024-05-17 18:28:46.751246',1,NULL,'ed0167c7-2e88-4cb5-a068-ff5231dcaf35','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','100.64.0.5'),(4,'2024-05-17 18:55:39.946097',1,'bd316065-79a7-4666-8a55-18cdfa4c62fe','ed0167c7-2e88-4cb5-a068-ff5231dcaf35','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36','100.64.0.5');
/*!40000 ALTER TABLE `login_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_database`
--

DROP TABLE IF EXISTS `metabase_database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_database` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sample` bit(1) NOT NULL DEFAULT b'0',
  `is_full_sync` bit(1) NOT NULL DEFAULT b'1',
  `points_of_interest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caveats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadata_sync_schedule` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0 50 * * * ? *' COMMENT 'The cron schedule string for when this database should undergo the metadata sync process (and analysis for new fields).',
  `cache_field_values_schedule` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Timezone identifier for the database, set by the sync process',
  `is_on_demand` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether we should do On-Demand caching of FieldValues for this DB. This means FieldValues are updated when their Field is used in a Dashboard or Card param.',
  `auto_run_queries` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Whether to automatically run queries when doing simple filtering and summarizing in the Query Builder.',
  `refingerprint` bit(1) DEFAULT NULL COMMENT 'Whether or not to enable periodic refingerprinting for this Database.',
  `cache_ttl` int DEFAULT NULL COMMENT 'Granular cache TTL for specific database.',
  `initial_sync_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a database has completed its initial sync and is ready to use',
  `creator_id` int DEFAULT NULL COMMENT 'ID of the admin who added the database',
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Serialized JSON containing Database-local Settings for this Database',
  `dbms_version` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'A JSON object describing the flavor and version of the DBMS.',
  `is_audit` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_database_creator_id` (`creator_id`),
  CONSTRAINT `fk_database_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_database`
--

LOCK TABLES `metabase_database` WRITE;
/*!40000 ALTER TABLE `metabase_database` DISABLE KEYS */;
INSERT INTO `metabase_database` VALUES (1,'2024-05-16 19:34:29.580128','2024-05-16 19:34:33.479223','Sample Database','Some example data for you to play around with.','{\"db\":\"file:/plugins/sample-database.db;USER=GUEST;PASSWORD=guest\"}','h2',_binary '',_binary '','You can find all sorts of different joinable tables ranging from products to people to reviews here.','You probably don\'t want to use this for your business-critical analyses, but hey, it\'s your world, we\'re just living in it.','0 16 * * * ? *','0 0 9 * * ? *','GMT',_binary '\0',_binary '',NULL,NULL,'complete',NULL,NULL,'{\"flavor\":\"H2\",\"version\":\"2.1.214 (2022-06-13)\",\"semantic-version\":[2,1]}',_binary '\0'),(2,'2024-05-16 19:55:25.565222','2024-05-16 19:55:25.970262','Sensor Data',NULL,'{\"host\":\"sensordb\",\"port\":null,\"dbname\":\"sensor\",\"user\":\"tolarewaju3\",\"password\":\"tolarewaju3\",\"ssl\":false,\"tunnel-enabled\":false,\"advanced-options\":false}','mysql',_binary '\0',_binary '',NULL,NULL,'0 13 * * * ? *','0 0 14 * * ? *','UTC',_binary '\0',_binary '',NULL,NULL,'complete',1,NULL,'{\"flavor\":\"MySQL\",\"version\":\"8.0.36\",\"semantic-version\":[8,0]}',_binary '\0');
/*!40000 ALTER TABLE `metabase_database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_field`
--

DROP TABLE IF EXISTS `metabase_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_field` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `semantic_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL DEFAULT b'1',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `preview_display` bit(1) NOT NULL DEFAULT b'1',
  `position` int NOT NULL DEFAULT '0',
  `table_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `display_name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `fk_target_field_id` int DEFAULT NULL,
  `last_analyzed` timestamp(6) NULL DEFAULT NULL,
  `points_of_interest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caveats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fingerprint` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fingerprint_version` int NOT NULL DEFAULT '0' COMMENT 'The version of the fingerprint for this Field. Used so we can keep track of which Fields need to be analyzed again when new things are added to fingerprints.',
  `database_type` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `has_field_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `database_position` int NOT NULL DEFAULT '0',
  `custom_position` int NOT NULL DEFAULT '0',
  `effective_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The effective type of the field after any coercions.',
  `coercion_strategy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A strategy to coerce the base_type into the effective_type.',
  `nfc_path` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nested field column paths, flattened',
  `database_required` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicates this field is required by the database for new records. Usually not null and without a default.',
  `json_unfolding` bit(1) NOT NULL DEFAULT b'0',
  `database_is_auto_increment` bit(1) NOT NULL DEFAULT b'0',
  `database_indexed` bit(1) DEFAULT NULL,
  `database_partitioned` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_field_table_id_parent_id_name` (`table_id`,`parent_id`,`name`),
  KEY `idx_field_table_id` (`table_id`),
  KEY `idx_field_parent_id` (`parent_id`),
  CONSTRAINT `fk_field_parent_ref_field_id` FOREIGN KEY (`parent_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_field_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_field`
--

LOCK TABLES `metabase_field` WRITE;
/*!40000 ALTER TABLE `metabase_field` DISABLE KEYS */;
INSERT INTO `metabase_field` VALUES (1,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','SEATS','type/Integer',NULL,_binary '',NULL,_binary '',6,6,NULL,'Seats','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":102,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":2.4309856865966593,\"q3\":10.553778422458695,\"max\":1325.0,\"sd\":51.198301031505444,\"avg\":16.21763527054108}}}',5,'INTEGER','auto-list',NULL,6,0,'type/Integer',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(2,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','TRIAL_ENDS_AT','type/DateTime',NULL,_binary '',NULL,_binary '',8,6,NULL,'Trial Ends At','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1712,\"nil%\":0.001202404809619238},\"type\":{\"type/DateTime\":{\"earliest\":\"2020-09-30T12:00:00Z\",\"latest\":\"2031-10-25T12:00:00Z\"}}}',5,'TIMESTAMP',NULL,NULL,8,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(3,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','CANCELED_AT','type/DateTime','type/CancelationTimestamp',_binary '',NULL,_binary '',9,6,NULL,'Canceled At','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2021,\"nil%\":0.1859719438877756},\"type\":{\"type/DateTime\":{\"earliest\":\"2020-10-01T15:43:40Z\",\"latest\":\"2032-06-03T14:01:15Z\"}}}',5,'TIMESTAMP',NULL,NULL,9,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(4,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','PLAN','type/Text','type/Category',_binary '',NULL,_binary '',4,6,NULL,'Plan','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":3,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":5.1062124248497}}}',5,'CHARACTER VARYING','auto-list',NULL,4,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(5,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','ACTIVE_SUBSCRIPTION','type/Boolean','type/Category',_binary '',NULL,_binary '',11,6,NULL,'Active Subscription','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0}}',5,'BOOLEAN','auto-list',NULL,11,0,'type/Boolean',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(6,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','LATITUDE','type/Float','type/Latitude',_binary '',NULL,_binary '',13,6,NULL,'Latitude','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2472,\"nil%\":4.008016032064128E-4},\"type\":{\"type/Number\":{\"min\":-48.75,\"q1\":19.430679334308675,\"q3\":47.24585743676113,\"max\":69.23111,\"sd\":23.492041679980137,\"avg\":31.35760681046913}}}',5,'DOUBLE PRECISION',NULL,NULL,13,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(7,'2024-05-16 19:34:30.750354','2024-05-16 19:34:31.444667','ID','type/BigInteger','type/PK',_binary '',NULL,_binary '',0,6,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '',NULL),(8,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','LEGACY_PLAN','type/Boolean','type/Category',_binary '',NULL,_binary '',12,6,NULL,'Legacy Plan','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0}}',5,'BOOLEAN','auto-list',NULL,12,0,'type/Boolean',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(9,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','FIRST_NAME','type/Text','type/Name',_binary '',NULL,_binary '',2,6,NULL,'First Name','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1687,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.001603206412825651,\"average-length\":5.997595190380761}}}',5,'CHARACTER VARYING',NULL,NULL,2,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(10,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','LAST_NAME','type/Text','type/Name',_binary '',NULL,_binary '',3,6,NULL,'Last Name','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":473,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":6.536673346693386}}}',5,'CHARACTER VARYING','auto-list',NULL,3,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(11,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','SOURCE','type/Text','type/Source',_binary '',NULL,_binary '',5,6,NULL,'Source','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.3346693386773547},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":4.4705410821643286}}}',5,'CHARACTER VARYING','auto-list',NULL,5,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(12,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','EMAIL','type/Text','type/Email',_binary '',NULL,_binary '',1,6,NULL,'Email','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2494,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":1.0,\"percent-state\":0.0,\"average-length\":28.185971943887775}}}',5,'CHARACTER VARYING',NULL,NULL,1,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(13,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','CREATED_AT','type/DateTime','type/CreationTimestamp',_binary '',NULL,_binary '',7,6,NULL,'Created At','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2495,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2020-09-15T16:11:50Z\",\"latest\":\"2031-10-10T19:14:48Z\"}}}',5,'TIMESTAMP',NULL,NULL,7,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(14,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','TRIAL_CONVERTED','type/Boolean','type/Category',_binary '',NULL,_binary '',10,6,NULL,'Trial Converted','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0}}',5,'BOOLEAN','auto-list',NULL,10,0,'type/Boolean',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(15,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','COUNTRY','type/Text','type/Country',_binary '',NULL,_binary '',15,6,NULL,'Country','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":134,\"nil%\":8.016032064128256E-4},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.1130260521042084,\"average-length\":1.9983967935871743}}}',5,'CHARACTER','auto-list',NULL,15,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(16,'2024-05-16 19:34:30.750354','2024-05-16 19:34:39.243562','LONGITUDE','type/Float','type/Longitude',_binary '',NULL,_binary '',14,6,NULL,'Longitude','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2484,\"nil%\":4.008016032064128E-4},\"type\":{\"type/Number\":{\"min\":-175.06667,\"q1\":-55.495929410727236,\"q3\":28.627359769389155,\"max\":176.21667,\"sd\":68.51011002740533,\"avg\":2.6042336031796345}}}',5,'DOUBLE PRECISION',NULL,NULL,14,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(17,'2024-05-16 19:34:30.817015','2024-05-16 19:34:39.243562','EVENT','type/Text','type/Category',_binary '',NULL,_binary '',2,1,NULL,'Event','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":11.3906}}}',5,'CHARACTER VARYING','auto-list',NULL,2,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(18,'2024-05-16 19:34:30.817015','2024-05-16 19:34:39.243562','PAGE_URL','type/Text','type/URL',_binary '',NULL,_binary '',4,1,NULL,'Page URL','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":6,\"nil%\":0.1302},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":22.2674}}}',5,'CHARACTER VARYING','auto-list',NULL,4,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(19,'2024-05-16 19:34:30.817015','2024-05-16 19:34:39.243562','BUTTON_LABEL','type/Text','type/Category',_binary '',NULL,_binary '',5,1,NULL,'Button Label','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":6,\"nil%\":0.8698},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":1.0552}}}',5,'CHARACTER VARYING','auto-list',NULL,5,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(20,'2024-05-16 19:34:30.817015','2024-05-16 19:34:31.548214','ID','type/BigInteger','type/PK',_binary '',NULL,_binary '',0,1,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '',NULL),(21,'2024-05-16 19:34:30.817015','2024-05-16 19:34:39.243562','ACCOUNT_ID','type/BigInteger','type/FK',_binary '',NULL,_binary '',1,1,NULL,'Account ID','normal',7,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":589,\"nil%\":0.0}}',5,'BIGINT',NULL,NULL,1,0,'type/BigInteger',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '',NULL),(22,'2024-05-16 19:34:30.817015','2024-05-16 19:34:39.243562','TIMESTAMP','type/DateTime',NULL,_binary '',NULL,_binary '',3,1,NULL,'Timestamp','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":8576,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2022-03-15T00:18:25Z\",\"latest\":\"2022-04-11T20:24:02Z\"}}}',5,'TIMESTAMP',NULL,NULL,3,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(23,'2024-05-16 19:34:30.856623','2024-05-16 19:34:39.243562','RATING','type/Integer','type/Score',_binary '',NULL,_binary '',4,2,NULL,'Rating','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":2.7545289729206877,\"q3\":4.004191340512663,\"max\":5.0,\"sd\":0.8137255616667736,\"avg\":3.3629283489096573}}}',5,'SMALLINT','auto-list',NULL,4,0,'type/Integer',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(24,'2024-05-16 19:34:30.856623','2024-05-16 19:34:31.575679','ID','type/BigInteger','type/PK',_binary '',NULL,_binary '',0,2,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '',NULL),(25,'2024-05-16 19:34:30.856623','2024-05-16 19:34:39.243562','ACCOUNT_ID','type/BigInteger','type/FK',_binary '',NULL,_binary '',1,2,NULL,'Account ID','normal',7,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":642,\"nil%\":0.0}}',5,'BIGINT',NULL,NULL,1,0,'type/BigInteger',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '',NULL),(26,'2024-05-16 19:34:30.856623','2024-05-16 19:34:39.243562','EMAIL','type/Text','type/Email',_binary '',NULL,_binary '',2,2,NULL,'Email','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":642,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":1.0,\"percent-state\":0.0,\"average-length\":28.327102803738317}}}',5,'CHARACTER VARYING','auto-list',NULL,2,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(27,'2024-05-16 19:34:30.856623','2024-05-16 19:34:40.377263','BODY','type/Text',NULL,_binary '',NULL,_binary '\0',6,2,NULL,'Body','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":642,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":438.15264797507785}}}',5,'CHARACTER LARGE OBJECT',NULL,NULL,6,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(28,'2024-05-16 19:34:30.856623','2024-05-16 19:34:39.243562','RATING_MAPPED','type/Text','type/Category',_binary '',NULL,_binary '',5,2,NULL,'Rating Mapped','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":6.453271028037383}}}',5,'CHARACTER VARYING','auto-list',NULL,5,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(29,'2024-05-16 19:34:30.856623','2024-05-16 19:34:39.243562','DATE_RECEIVED','type/DateTime',NULL,_binary '',NULL,_binary '',3,2,NULL,'Date Received','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":576,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2020-11-20T00:00:00Z\",\"latest\":\"2031-12-01T00:00:00Z\"}}}',5,'TIMESTAMP',NULL,NULL,3,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(30,'2024-05-16 19:34:30.891264','2024-05-16 19:34:39.243562','PLAN','type/Text','type/Category',_binary '',NULL,_binary '',4,7,NULL,'Plan','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":3,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":5.2931}}}',5,'CHARACTER VARYING','auto-list',NULL,4,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(31,'2024-05-16 19:34:30.891264','2024-05-16 19:34:31.614886','ID','type/BigInteger','type/PK',_binary '',NULL,_binary '',0,7,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '',NULL),(32,'2024-05-16 19:34:30.891264','2024-05-16 19:34:39.243562','ACCOUNT_ID','type/BigInteger','type/FK',_binary '',NULL,_binary '',1,7,NULL,'Account ID','normal',7,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1449,\"nil%\":0.0}}',5,'BIGINT',NULL,NULL,1,0,'type/BigInteger',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '',NULL),(33,'2024-05-16 19:34:30.891264','2024-05-16 19:34:39.243562','DATE_RECEIVED','type/DateTime',NULL,_binary '',NULL,_binary '',5,7,NULL,'Date Received','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":714,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2020-09-30T00:00:00Z\",\"latest\":\"2027-05-02T00:00:00Z\"}}}',5,'TIMESTAMP',NULL,NULL,5,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(34,'2024-05-16 19:34:30.891264','2024-05-16 19:34:39.243562','PAYMENT','type/Float',NULL,_binary '',NULL,_binary '',2,7,NULL,'Payment','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":707,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":13.7,\"q1\":233.1870107122195,\"q3\":400.5965814842149,\"max\":33714.6,\"sd\":763.7961603932441,\"avg\":519.4153400000004}}}',5,'DOUBLE PRECISION',NULL,NULL,2,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(35,'2024-05-16 19:34:30.891264','2024-05-16 19:34:39.243562','EXPECTED_INVOICE','type/Boolean','type/Category',_binary '',NULL,_binary '',3,7,NULL,'Expected Invoice','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2,\"nil%\":0.0}}',5,'BOOLEAN','auto-list',NULL,3,0,'type/Boolean',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(36,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','DISCOUNT','type/Float','type/Discount',_binary '','Discount amount.',_binary '',6,5,NULL,'Discount','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":701,\"nil%\":0.898},\"type\":{\"type/Number\":{\"min\":0.17088996672584322,\"q1\":2.9786226681458743,\"q3\":7.338187788658235,\"max\":61.69684269960571,\"sd\":3.053663125001991,\"avg\":5.161255547580326}}}',5,'DOUBLE PRECISION',NULL,NULL,6,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(37,'2024-05-16 19:34:30.932951','2024-05-16 19:34:31.894444','ID','type/BigInteger','type/PK',_binary '','This is a unique ID for the product. It is also called the ‚ÄúInvoice number‚Äù or ‚ÄúConfirmation number‚Äù in customer facing emails and screens.',_binary '',0,5,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '',NULL),(38,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','TAX','type/Float',NULL,_binary '','This is the amount of local and federal taxes that are collected on the purchase. Note that other governmental fees on some products are not included here, but instead are accounted for in the subtotal.',_binary '',4,5,NULL,'Tax','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":797,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":2.273340386603857,\"q3\":5.337275338216307,\"max\":11.12,\"sd\":2.3206651358900316,\"avg\":3.8722100000000004}}}',5,'DOUBLE PRECISION',NULL,NULL,4,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(39,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','QUANTITY','type/Integer','type/Quantity',_binary '','Number of products bought.',_binary '',8,5,NULL,'Quantity','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":62,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":1.755882607764982,\"q3\":4.882654507928044,\"max\":100.0,\"sd\":4.214258386403798,\"avg\":3.7015}}}',5,'INTEGER','auto-list',NULL,8,0,'type/Integer',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(40,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','PRODUCT_ID','type/Integer','type/FK',_binary '','The product ID. This is an internal identifier for the product, NOT the SKU.',_binary '',2,5,NULL,'Product ID','normal',62,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":200,\"nil%\":0.0}}',5,'INTEGER',NULL,NULL,2,0,'type/Integer',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '',NULL),(41,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','CREATED_AT','type/DateTime','type/CreationTimestamp',_binary '','The date and time an order was submitted.',_binary '',7,5,NULL,'Created At','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":10001,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2022-04-30T18:56:13.352Z\",\"latest\":\"2026-04-19T14:07:15.657Z\"}}}',5,'TIMESTAMP',NULL,NULL,7,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(42,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','TOTAL','type/Float',NULL,_binary '','The total billed amount.',_binary '',5,5,NULL,'Total','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":4426,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":8.93914247937167,\"q1\":51.34535490743823,\"q3\":110.29428389265787,\"max\":159.34900526552292,\"sd\":34.26469575709948,\"avg\":80.35871658771228}}}',5,'DOUBLE PRECISION',NULL,NULL,5,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(43,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','USER_ID','type/Integer','type/FK',_binary '','The id of the user who made this order. Note that in some cases where an order was created on behalf of a customer who phoned the order in, this might be the employee who handled the request.',_binary '',1,5,NULL,'User ID','normal',46,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":929,\"nil%\":0.0}}',5,'INTEGER',NULL,NULL,1,0,'type/Integer',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '',NULL),(44,'2024-05-16 19:34:30.932951','2024-05-16 19:34:39.243562','SUBTOTAL','type/Float',NULL,_binary '','The raw, pre-tax cost of the order. Note that this might be different in the future from the product price due to promotions, credits, etc.',_binary '',3,5,NULL,'Subtotal','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":340,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":15.691943673970439,\"q1\":49.74894519060184,\"q3\":105.42965746993103,\"max\":148.22900526552291,\"sd\":32.53705013056317,\"avg\":77.01295465356547}}}',5,'DOUBLE PRECISION',NULL,NULL,3,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(45,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','SOURCE','type/Text','type/Source',_binary '','The channel through which we acquired this user. Valid values include: Affiliate, Facebook, Google, Organic and Twitter',_binary '',8,3,NULL,'Source','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":7.4084}}}',5,'CHARACTER VARYING','auto-list',NULL,8,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(46,'2024-05-16 19:34:31.140478','2024-05-16 19:34:32.429875','ID','type/BigInteger','type/PK',_binary '','A unique identifier given to each user.',_binary '',0,3,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '',NULL),(47,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','NAME','type/Text','type/Name',_binary '','The name of the user who owns an account',_binary '',4,3,NULL,'Name','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2499,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":13.532}}}',5,'CHARACTER VARYING',NULL,NULL,4,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(48,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','STATE','type/Text','type/State',_binary '','The state or province of the account‚Äôs billing address',_binary '',7,3,NULL,'State','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":49,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":1.0,\"average-length\":2.0}}}',5,'CHARACTER','auto-list',NULL,7,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(49,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','BIRTH_DATE','type/Date',NULL,_binary '','The date of birth of the user',_binary '',9,3,NULL,'Birth Date','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2308,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"1958-04-26\",\"latest\":\"2000-04-03\"}}}',5,'DATE',NULL,NULL,9,0,'type/Date',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(50,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','LONGITUDE','type/Float','type/Longitude',_binary '','This is the longitude of the user on sign-up. It might be updated in the future to the last seen location.',_binary '',6,3,NULL,'Longitude','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2491,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":-166.5425726,\"q1\":-101.58350792373135,\"q3\":-84.65289348288829,\"max\":-67.96735199999999,\"sd\":15.399698968175663,\"avg\":-95.18741780363999}}}',5,'DOUBLE PRECISION',NULL,NULL,6,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(51,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','EMAIL','type/Text','type/Email',_binary '','The contact email for the account.',_binary '',2,3,NULL,'Email','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2500,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":1.0,\"percent-state\":0.0,\"average-length\":24.1824}}}',5,'CHARACTER VARYING',NULL,NULL,2,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(52,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','ADDRESS','type/Text',NULL,_binary '','The street address of the account‚Äôs billing address',_binary '',1,3,NULL,'Address','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2490,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":20.85}}}',5,'CHARACTER VARYING',NULL,NULL,1,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(53,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','PASSWORD','type/Text',NULL,_binary '','This is the salted password of the user. It should not be visible',_binary '',3,3,NULL,'Password','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2500,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":36.0}}}',5,'CHARACTER VARYING',NULL,NULL,3,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(54,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','ZIP','type/Text','type/ZipCode',_binary '','The postal code of the account‚Äôs billing address',_binary '',10,3,NULL,'Zip','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2234,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":5.0}}}',5,'CHARACTER',NULL,NULL,10,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(55,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','CITY','type/Text','type/City',_binary '','The city of the account‚Äôs billing address',_binary '',5,3,NULL,'City','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1966,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.002,\"average-length\":8.284}}}',5,'CHARACTER VARYING',NULL,NULL,5,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(56,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','CREATED_AT','type/DateTime','type/CreationTimestamp',_binary '','The date the user record was created. Also referred to as the user‚Äôs \"join date\"',_binary '',12,3,NULL,'Created At','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2500,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2022-04-19T21:35:18.752Z\",\"latest\":\"2025-04-19T14:06:27.3Z\"}}}',5,'TIMESTAMP',NULL,NULL,12,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(57,'2024-05-16 19:34:31.140478','2024-05-16 19:34:39.243562','LATITUDE','type/Float','type/Latitude',_binary '','This is the latitude of the user on sign-up. It might be updated in the future to the last seen location.',_binary '',11,3,NULL,'Latitude','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":2491,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":25.775827,\"q1\":35.302705923023126,\"q3\":43.773802584662,\"max\":70.6355001,\"sd\":6.390832341883712,\"avg\":39.87934670484002}}}',5,'DOUBLE PRECISION',NULL,NULL,11,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(58,'2024-05-16 19:34:31.190699','2024-05-16 19:34:39.243562','CATEGORY','type/Text','type/Category',_binary '','The type of product, valid values include: Doohicky, Gadget, Gizmo and Widget',_binary '',3,8,NULL,'Category','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":4,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":6.375}}}',5,'CHARACTER VARYING','auto-list',NULL,3,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(59,'2024-05-16 19:34:31.190699','2024-05-16 19:34:39.243562','PRICE','type/Float',NULL,_binary '','The list price of the product. Note that this is not always the price the product sold for due to discounts, promotions, etc.',_binary '',5,8,NULL,'Price','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":170,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":15.691943673970439,\"q1\":37.25154462926434,\"q3\":75.45898071609447,\"max\":98.81933684368194,\"sd\":21.711481557852057,\"avg\":55.74639966792074}}}',5,'DOUBLE PRECISION',NULL,NULL,5,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(60,'2024-05-16 19:34:31.190699','2024-05-16 19:34:39.243562','VENDOR','type/Text','type/Company',_binary '','The source of the product.',_binary '',4,8,NULL,'Vendor','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":200,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":20.6}}}',5,'CHARACTER VARYING','auto-list',NULL,4,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(61,'2024-05-16 19:34:31.190699','2024-05-16 19:34:39.243562','RATING','type/Float','type/Score',_binary '','The average rating users have given the product. This ranges from 1 - 5',_binary '',6,8,NULL,'Rating','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":23,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":0.0,\"q1\":3.5120465053408525,\"q3\":4.216124969497314,\"max\":5.0,\"sd\":1.3605488657451452,\"avg\":3.4715}}}',5,'DOUBLE PRECISION',NULL,NULL,6,0,'type/Float',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(62,'2024-05-16 19:34:31.190699','2024-05-16 19:34:32.631286','ID','type/BigInteger','type/PK',_binary '','The numerical product number. Only used internally. All external communication should use the title or EAN.',_binary '',0,8,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '',NULL),(63,'2024-05-16 19:34:31.190699','2024-05-16 19:34:39.243562','EAN','type/Text',NULL,_binary '','The international article number. A 13 digit number uniquely identifying the product.',_binary '',1,8,NULL,'Ean','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":200,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":13.0}}}',5,'CHARACTER','auto-list',NULL,1,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(64,'2024-05-16 19:34:31.190699','2024-05-16 19:34:39.243562','CREATED_AT','type/DateTime','type/CreationTimestamp',_binary '','The date the product was added to our catalog.',_binary '',7,8,NULL,'Created At','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":200,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2022-04-26T19:29:55.147Z\",\"latest\":\"2025-04-15T13:34:19.931Z\"}}}',5,'TIMESTAMP',NULL,NULL,7,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(65,'2024-05-16 19:34:31.190699','2024-05-16 19:34:39.243562','TITLE','type/Text','type/Title',_binary '','The name of the product as it should be displayed to customers.',_binary '',2,8,NULL,'Title','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":199,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":21.495}}}',5,'CHARACTER VARYING','auto-list',NULL,2,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(66,'2024-05-16 19:34:31.225298','2024-05-16 19:34:39.243562','RATING','type/Integer','type/Score',_binary '','The rating (on a scale of 1-5) the user left.',_binary '',3,4,NULL,'Rating','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":5,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":1.0,\"q1\":3.54744353181696,\"q3\":4.764807071650455,\"max\":5.0,\"sd\":1.0443899855660577,\"avg\":3.987410071942446}}}',5,'SMALLINT','auto-list',NULL,3,0,'type/Integer',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(67,'2024-05-16 19:34:31.225298','2024-05-16 19:34:39.243562','BODY','type/Text','type/Description',_binary '','The review the user left. Limited to 2000 characters.',_binary '',4,4,NULL,'Body','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1112,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":177.41996402877697}}}',5,'CHARACTER VARYING',NULL,NULL,4,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(68,'2024-05-16 19:34:31.225298','2024-05-16 19:34:32.764669','ID','type/BigInteger','type/PK',_binary '','A unique internal identifier for the review. Should not be used externally.',_binary '',0,4,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'BIGINT',NULL,NULL,0,0,'type/BigInteger',NULL,NULL,_binary '\0',_binary '\0',_binary '',_binary '',NULL),(69,'2024-05-16 19:34:31.225298','2024-05-16 19:34:39.243562','CREATED_AT','type/DateTime','type/CreationTimestamp',_binary '','The day and time a review was written by a user.',_binary '',5,4,NULL,'Created At','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1112,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2022-06-03T00:37:05.818Z\",\"latest\":\"2026-04-19T14:15:25.677Z\"}}}',5,'TIMESTAMP',NULL,NULL,5,0,'type/DateTime',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(70,'2024-05-16 19:34:31.225298','2024-05-16 19:34:39.243562','REVIEWER','type/Text',NULL,_binary '','The user who left the review',_binary '',2,4,NULL,'Reviewer','normal',NULL,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1076,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.001798561151079137,\"average-length\":9.972122302158274}}}',5,'CHARACTER VARYING',NULL,NULL,2,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(71,'2024-05-16 19:34:31.225298','2024-05-16 19:34:39.243562','PRODUCT_ID','type/Integer','type/FK',_binary '','The product the review was for',_binary '',1,4,NULL,'Product ID','normal',62,'2024-05-16 19:34:39.000000',NULL,NULL,'{\"global\":{\"distinct-count\":176,\"nil%\":0.0}}',5,'INTEGER',NULL,NULL,1,0,'type/Integer',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '',NULL),(72,'2024-05-16 19:55:25.829349','2024-05-16 19:55:26.525317','timestamp','type/DateTimeWithLocalTZ',NULL,_binary '',NULL,_binary '',1,9,NULL,'Timestamp','normal',NULL,'2024-05-16 19:55:26.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1287,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2024-05-16T19:33:55Z\",\"latest\":\"2024-05-16T19:55:26Z\"}}}',5,'TIMESTAMP',NULL,NULL,1,0,'type/DateTimeWithLocalTZ',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(73,'2024-05-16 19:55:25.829349','2024-05-16 19:55:26.525317','location','type/Text','type/Category',_binary '',NULL,_binary '',2,9,NULL,'Location','normal',NULL,'2024-05-16 19:55:26.000000',NULL,NULL,'{\"global\":{\"distinct-count\":20,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":11.523291925465838}}}',5,'VARCHAR','auto-list',NULL,2,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(74,'2024-05-16 19:55:25.829349','2024-05-16 19:55:25.881397','id','type/Integer','type/PK',_binary '',NULL,_binary '',0,9,NULL,'ID','normal',NULL,NULL,NULL,NULL,NULL,0,'INT',NULL,NULL,0,0,'type/Integer',NULL,NULL,_binary '',_binary '\0',_binary '\0',_binary '',NULL),(75,'2024-05-16 19:55:25.829349','2024-05-16 19:55:26.525317','signalStrength','type/Text',NULL,_binary '',NULL,_binary '',3,9,NULL,'SignalStrength','normal',NULL,'2024-05-16 19:55:26.000000',NULL,NULL,'{\"global\":{\"distinct-count\":1288,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":17.892857142857142}}}',5,'VARCHAR',NULL,NULL,3,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL),(76,'2024-05-16 19:55:25.829349','2024-05-16 19:55:26.525317','network','type/Text','type/Category',_binary '',NULL,_binary '',4,9,NULL,'Network','normal',NULL,'2024-05-16 19:55:26.000000',NULL,NULL,'{\"global\":{\"distinct-count\":4,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":2.2585403726708075}}}',5,'VARCHAR','auto-list',NULL,4,0,'type/Text',NULL,NULL,_binary '\0',_binary '\0',_binary '\0',_binary '\0',NULL);
/*!40000 ALTER TABLE `metabase_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_fieldvalues`
--

DROP TABLE IF EXISTS `metabase_fieldvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_fieldvalues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `human_readable_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `field_id` int NOT NULL,
  `has_more_values` bit(1) DEFAULT b'0' COMMENT 'true if the stored values list is a subset of all possible values',
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full' COMMENT 'Type of FieldValues',
  `hash_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Hash key for a cached fieldvalues',
  `last_used_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'Timestamp of when these FieldValues were last used.',
  PRIMARY KEY (`id`),
  KEY `idx_fieldvalues_field_id` (`field_id`),
  CONSTRAINT `fk_fieldvalues_ref_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_fieldvalues`
--

LOCK TABLES `metabase_fieldvalues` WRITE;
/*!40000 ALTER TABLE `metabase_fieldvalues` DISABLE KEYS */;
INSERT INTO `metabase_fieldvalues` VALUES (1,'2024-05-16 19:34:39.642150','2024-05-16 19:34:39.642150','[false,true]',NULL,5,_binary '\0','full',NULL,'2024-05-16 19:34:39.642150'),(2,'2024-05-16 19:34:39.682496','2024-05-16 19:34:39.682496','[null,\"AE\",\"AF\",\"AG\",\"AL\",\"AM\",\"AR\",\"AT\",\"AU\",\"BA\",\"BD\",\"BE\",\"BF\",\"BG\",\"BN\",\"BO\",\"BR\",\"BT\",\"BW\",\"BY\",\"CA\",\"CD\",\"CH\",\"CI\",\"CL\",\"CM\",\"CN\",\"CO\",\"CR\",\"CU\",\"CV\",\"CY\",\"CZ\",\"DE\",\"DK\",\"DO\",\"DZ\",\"EE\",\"EG\",\"ES\",\"ET\",\"FI\",\"FR\",\"GB\",\"GE\",\"GM\",\"GN\",\"GR\",\"GT\",\"HN\",\"HR\",\"HT\",\"HU\",\"ID\",\"IE\",\"IL\",\"IN\",\"IQ\",\"IR\",\"IT\",\"JM\",\"JO\",\"JP\",\"KE\",\"KH\",\"KI\",\"KM\",\"KR\",\"KZ\",\"LA\",\"LC\",\"LK\",\"LR\",\"LS\",\"LT\",\"LU\",\"LV\",\"LY\",\"MA\",\"MD\",\"MG\",\"MK\",\"ML\",\"MM\",\"MT\",\"MU\",\"MW\",\"MX\",\"MY\",\"NE\",\"NG\",\"NI\",\"NL\",\"NO\",\"NZ\",\"PA\",\"PE\",\"PH\",\"PK\",\"PL\",\"PT\",\"PW\",\"PY\",\"RO\",\"RS\",\"RU\",\"RW\",\"SA\",\"SE\",\"SI\",\"SK\",\"SL\",\"SM\",\"SN\",\"SO\",\"SV\",\"SY\",\"SZ\",\"TH\",\"TJ\",\"TN\",\"TO\",\"TR\",\"TZ\",\"UA\",\"UG\",\"US\",\"UZ\",\"VE\",\"VN\",\"YE\",\"ZA\",\"ZM\",\"ZW\"]',NULL,15,_binary '\0','full',NULL,'2024-05-16 19:34:39.682496'),(3,'2024-05-16 19:34:39.727782','2024-05-16 19:34:39.727782','[\"Abbott\",\"Abernathy\",\"Abshire\",\"Adams\",\"Altenwerth\",\"Anderson\",\"Ankunding\",\"Armstrong\",\"Auer\",\"Aufderhar\",\"Bahringer\",\"Bailey\",\"Balistreri\",\"Barrows\",\"Bartell\",\"Bartoletti\",\"Barton\",\"Batz\",\"Bauch\",\"Baumbach\",\"Bayer\",\"Beahan\",\"Beatty\",\"Bechtelar\",\"Becker\",\"Bednar\",\"Beer\",\"Beier\",\"Berge\",\"Bergnaum\",\"Bergstrom\",\"Bernhard\",\"Bernier\",\"Bins\",\"Blanda\",\"Blick\",\"Block\",\"Bode\",\"Boehm\",\"Bogan\",\"Bogisich\",\"Borer\",\"Bosco\",\"Botsford\",\"Boyer\",\"Boyle\",\"Bradtke\",\"Brakus\",\"Braun\",\"Breitenberg\",\"Brekke\",\"Brown\",\"Bruen\",\"Buckridge\",\"Carroll\",\"Carter\",\"Cartwright\",\"Casper\",\"Cassin\",\"Champlin\",\"Christiansen\",\"Cole\",\"Collier\",\"Collins\",\"Conn\",\"Connelly\",\"Conroy\",\"Considine\",\"Corkery\",\"Cormier\",\"Corwin\",\"Cremin\",\"Crist\",\"Crona\",\"Cronin\",\"Crooks\",\"Cruickshank\",\"Cummerata\",\"Cummings\",\"D\'Amore\",\"Dach\",\"Daniel\",\"Dare\",\"Daugherty\",\"Davis\",\"Deckow\",\"Denesik\",\"Dibbert\",\"Dickens\",\"Dicki\",\"Dickinson\",\"Dietrich\",\"Donnelly\",\"Dooley\",\"Douglas\",\"Doyle\",\"DuBuque\",\"Durgan\",\"Ebert\",\"Effertz\",\"Eichmann\",\"Emard\",\"Emmerich\",\"Erdman\",\"Ernser\",\"Fadel\",\"Fahey\",\"Farrell\",\"Fay\",\"Feeney\",\"Feest\",\"Feil\",\"Ferry\",\"Fisher\",\"Flatley\",\"Frami\",\"Franecki\",\"Friesen\",\"Fritsch\",\"Funk\",\"Gaylord\",\"Gerhold\",\"Gerlach\",\"Gibson\",\"Gislason\",\"Gleason\",\"Gleichner\",\"Glover\",\"Goldner\",\"Goodwin\",\"Gorczany\",\"Gottlieb\",\"Goyette\",\"Grady\",\"Graham\",\"Grant\",\"Green\",\"Greenfelder\",\"Greenholt\",\"Grimes\",\"Gulgowski\",\"Gusikowski\",\"Gutkowski\",\"Gutmann\",\"Haag\",\"Hackett\",\"Hagenes\",\"Hahn\",\"Haley\",\"Halvorson\",\"Hamill\",\"Hammes\",\"Hand\",\"Hane\",\"Hansen\",\"Harber\",\"Harris\",\"Hartmann\",\"Harvey\",\"Hauck\",\"Hayes\",\"Heaney\",\"Heathcote\",\"Hegmann\",\"Heidenreich\",\"Heller\",\"Herman\",\"Hermann\",\"Hermiston\",\"Herzog\",\"Hessel\",\"Hettinger\",\"Hickle\",\"Hilll\",\"Hills\",\"Hilpert\",\"Hintz\",\"Hirthe\",\"Hodkiewicz\",\"Hoeger\",\"Homenick\",\"Hoppe\",\"Howe\",\"Howell\",\"Hudson\",\"Huel\",\"Huels\",\"Hyatt\",\"Jacobi\",\"Jacobs\",\"Jacobson\",\"Jakubowski\",\"Jaskolski\",\"Jast\",\"Jenkins\",\"Jerde\",\"Jewess\",\"Johns\",\"Johnson\",\"Johnston\",\"Jones\",\"Kassulke\",\"Kautzer\",\"Keebler\",\"Keeling\",\"Kemmer\",\"Kerluke\",\"Kertzmann\",\"Kessler\",\"Kiehn\",\"Kihn\",\"Kilback\",\"King\",\"Kirlin\",\"Klein\",\"Kling\",\"Klocko\",\"Koch\",\"Koelpin\",\"Koepp\",\"Kohler\",\"Konopelski\",\"Koss\",\"Kovacek\",\"Kozey\",\"Krajcik\",\"Kreiger\",\"Kris\",\"Kshlerin\",\"Kub\",\"Kuhic\",\"Kuhlman\",\"Kuhn\",\"Kulas\",\"Kunde\",\"Kunze\",\"Kuphal\",\"Kutch\",\"Kuvalis\",\"Labadie\",\"Lakin\",\"Lang\",\"Langosh\",\"Langworth\",\"Larkin\",\"Larson\",\"Leannon\",\"Lebsack\",\"Ledner\",\"Leffler\",\"Legros\",\"Lehner\",\"Lemke\",\"Lesch\",\"Leuschke\",\"Lind\",\"Lindgren\",\"Littel\",\"Little\",\"Lockman\",\"Lowe\",\"Lubowitz\",\"Lueilwitz\",\"Luettgen\",\"Lynch\",\"Macejkovic\",\"Maggio\",\"Mann\",\"Mante\",\"Marks\",\"Marquardt\",\"Marvin\",\"Mayer\",\"Mayert\",\"McClure\",\"McCullough\",\"McDermott\",\"McGlynn\",\"McKenzie\",\"McLaughlin\",\"Medhurst\",\"Mertz\",\"Metz\",\"Miller\",\"Mills\",\"Mitchell\",\"Moen\",\"Mohr\",\"Monahan\",\"Moore\",\"Morar\",\"Morissette\",\"Mosciski\",\"Mraz\",\"Mueller\",\"Muller\",\"Murazik\",\"Murphy\",\"Murray\",\"Nader\",\"Nicolas\",\"Nienow\",\"Nikolaus\",\"Nitzsche\",\"Nolan\",\"O\'Connell\",\"O\'Conner\",\"O\'Hara\",\"O\'Keefe\",\"O\'Kon\",\"O\'Reilly\",\"Oberbrunner\",\"Okuneva\",\"Olson\",\"Ondricka\",\"Orn\",\"Ortiz\",\"Osinski\",\"Pacocha\",\"Padberg\",\"Pagac\",\"Parisian\",\"Parker\",\"Paucek\",\"Pfannerstill\",\"Pfeffer\",\"Pollich\",\"Pouros\",\"Powlowski\",\"Predovic\",\"Price\",\"Prohaska\",\"Prosacco\",\"Purdy\",\"Quigley\",\"Quitzon\",\"Rath\",\"Ratke\",\"Rau\",\"Raynor\",\"Reichel\",\"Reichert\",\"Reilly\",\"Reinger\",\"Rempel\",\"Renner\",\"Reynolds\",\"Rice\",\"Rippin\",\"Ritchie\",\"Robel\",\"Roberts\",\"Rodriguez\",\"Rogahn\",\"Rohan\",\"Rolfson\",\"Romaguera\",\"Roob\",\"Rosenbaum\",\"Rowe\",\"Ruecker\",\"Runolfsdottir\",\"Runolfsson\",\"Runte\",\"Russel\",\"Rutherford\",\"Ryan\",\"Sanford\",\"Satterfield\",\"Sauer\",\"Sawayn\",\"Schaden\",\"Schaefer\",\"Schamberger\",\"Schiller\",\"Schimmel\",\"Schinner\",\"Schmeler\",\"Schmidt\",\"Schmitt\",\"Schneider\",\"Schoen\",\"Schowalter\",\"Schroeder\",\"Schulist\",\"Schultz\",\"Schumm\",\"Schuppe\",\"Schuster\",\"Senger\",\"Shanahan\",\"Shields\",\"Simonis\",\"Sipes\",\"Skiles\",\"Smith\",\"Smitham\",\"Spencer\",\"Spinka\",\"Sporer\",\"Stamm\",\"Stanton\",\"Stark\",\"Stehr\",\"Steuber\",\"Stiedemann\",\"Stokes\",\"Stoltenberg\",\"Stracke\",\"Streich\",\"Stroman\",\"Strosin\",\"Swaniawski\",\"Swift\",\"Terry\",\"Thiel\",\"Thompson\",\"Tillman\",\"Torp\",\"Torphy\",\"Towne\",\"Toy\",\"Trantow\",\"Tremblay\",\"Treutel\",\"Tromp\",\"Turcotte\",\"Turner\",\"Ullrich\",\"Upton\",\"Vandervort\",\"Veum\",\"Volkman\",\"Von\",\"VonRueden\",\"Waelchi\",\"Walker\",\"Walsh\",\"Walter\",\"Ward\",\"Waters\",\"Watsica\",\"Weber\",\"Wehner\",\"Weimann\",\"Weissnat\",\"Welch\",\"West\",\"White\",\"Wiegand\",\"Wilderman\",\"Wilkinson\",\"Will\",\"Williamson\",\"Willms\",\"Windler\",\"Wintheiser\",\"Wisoky\",\"Wisozk\",\"Witting\",\"Wiza\",\"Wolf\",\"Wolff\",\"Wuckert\",\"Wunsch\",\"Wyman\",\"Yost\",\"Yundt\",\"Zboncak\",\"Zemlak\",\"Ziemann\",\"Zieme\",\"Zulauf\"]',NULL,10,_binary '\0','full',NULL,'2024-05-16 19:34:39.727782'),(4,'2024-05-16 19:34:39.907257','2024-05-16 19:34:39.907257','[false,true]',NULL,8,_binary '\0','full',NULL,'2024-05-16 19:34:39.907257'),(5,'2024-05-16 19:34:39.945608','2024-05-16 19:34:39.945608','[\"Basic\",\"Business\",\"Premium\"]',NULL,4,_binary '\0','full',NULL,'2024-05-16 19:34:39.945608'),(6,'2024-05-16 19:34:39.977309','2024-05-16 19:34:39.977309','[1,3,5,8,10,12,14,16,19,21,23,25,27,30,32,34,36,38,41,43,45,47,49,52,54,56,58,60,63,65,67,69,71,74,76,78,80,82,85,87,89,91,93,96,98,102,104,107,109,111,113,115,120,122,124,129,131,133,135,137,140,142,148,155,162,168,173,175,177,179,186,188,190,197,201,203,208,210,219,223,236,252,254,261,267,269,274,289,331,335,351,390,393,401,423,426,450,503,522,639,668,1325]',NULL,1,_binary '\0','full',NULL,'2024-05-16 19:34:39.977309'),(7,'2024-05-16 19:34:40.014452','2024-05-16 19:34:40.014452','[null,\"Facebook\",\"Google\",\"Invite\",\"Twitter\"]',NULL,11,_binary '\0','full',NULL,'2024-05-16 19:34:40.014452'),(8,'2024-05-16 19:34:40.045692','2024-05-16 19:34:40.045692','[false,true]',NULL,14,_binary '\0','full',NULL,'2024-05-16 19:34:40.045692'),(9,'2024-05-16 19:34:40.115973','2024-05-16 19:34:40.115973','[null,\"Checkout\",\"Create Item\",\"Invite\",\"Signup\",\"Subscribe\"]',NULL,19,_binary '\0','full',NULL,'2024-05-16 19:34:40.115973'),(10,'2024-05-16 19:34:40.155370','2024-05-16 19:34:40.155370','[\"Button Clicked\",\"Page Viewed\"]',NULL,17,_binary '\0','full',NULL,'2024-05-16 19:34:40.155370'),(11,'2024-05-16 19:34:40.197508','2024-05-16 19:34:40.197508','[null,\"www.piespace.example/help\",\"www.piespace.example/home\",\"www.piespace.example/invite\",\"www.piespace.example/login\",\"www.piespace.example/pies\"]',NULL,18,_binary '\0','full',NULL,'2024-05-16 19:34:40.197508'),(12,'2024-05-16 19:34:40.422680','2024-05-16 19:34:40.422680','[\"abbott-berneice@hotmail.example\",\"abdullah-kerluke@gmail.example\",\"adan-weissnat@yahoo.example\",\"aida.schneider@gmail.example\",\"aidan-hagenes@hotmail.example\",\"aidan.rodriguez@gmail.example\",\"alaina-howell@gmail.example\",\"alayna.halvorson@hotmail.example\",\"alberto.gulgowski@gmail.example\",\"alicia.schimmel@gmail.example\",\"alisa-morissette@hotmail.example\",\"alisa-schmitt@hotmail.example\",\"altenwerth.onie@yahoo.example\",\"alva.conroy@hotmail.example\",\"alvena-legros@hotmail.example\",\"alverta-rogahn@hotmail.example\",\"alvina.mertz@gmail.example\",\"alvis.emmerich@yahoo.example\",\"alycia.collins@yahoo.example\",\"alysson-cartwright@yahoo.example\",\"anastacio.jaskolski@hotmail.example\",\"anderson-eliza@hotmail.example\",\"anderson.schinner@yahoo.example\",\"andy-skiles@yahoo.example\",\"angela-botsford@hotmail.example\",\"anjali-parker@hotmail.example\",\"ankunding-rudolph@hotmail.example\",\"aracely.jenkins@gmail.example\",\"arch-ryan@hotmail.example\",\"archibald-lowe@hotmail.example\",\"archibald-turner@hotmail.example\",\"arne-o-hara@gmail.example\",\"art-graham@yahoo.example\",\"arvel-lakin@gmail.example\",\"ashton-herman@hotmail.example\",\"aubree-dibbert@hotmail.example\",\"aubree-walter@hotmail.example\",\"aufderhar-mya@hotmail.example\",\"aufderhar.john@yahoo.example\",\"aurore-yundt@yahoo.example\",\"bahringer-laura@yahoo.example\",\"bailey.kenna@yahoo.example\",\"balistreri-oral@yahoo.example\",\"balistreri-unique@gmail.example\",\"bauch-wilford@gmail.example\",\"bayer-mattie@hotmail.example\",\"bayer.mark@hotmail.example\",\"beatty-emmie@gmail.example\",\"beatty.julio@gmail.example\",\"beatty.mohammed@gmail.example\",\"bechtelar.antone@gmail.example\",\"beer.humberto@hotmail.example\",\"berge-halie@hotmail.example\",\"bergstrom-chelsie@yahoo.example\",\"bernhard.kathleen@yahoo.example\",\"bins-evans@hotmail.example\",\"blair.heaney@gmail.example\",\"blake-leffler@hotmail.example\",\"blaze-daugherty@hotmail.example\",\"blick-candelario@yahoo.example\",\"block.emiliano@hotmail.example\",\"bode-sydnie@gmail.example\",\"bode.richmond@gmail.example\",\"boehm-amanda@hotmail.example\",\"bogan.rodger@gmail.example\",\"bosco-zachariah@gmail.example\",\"bosco.haylie@hotmail.example\",\"botsford.okey@hotmail.example\",\"boyer-bernhard@yahoo.example\",\"boyle-christiana@gmail.example\",\"brakus-kimberly@gmail.example\",\"brakus.marlene@hotmail.example\",\"brant.klein@yahoo.example\",\"braun.madisyn@gmail.example\",\"breanna.strosin@yahoo.example\",\"breitenberg-louie@gmail.example\",\"brekke.kirsten@yahoo.example\",\"brennon-gerlach@hotmail.example\",\"bret-quigley@gmail.example\",\"brianne-jacobson@yahoo.example\",\"brown-deontae@gmail.example\",\"buddy-hills@gmail.example\",\"caleigh-hodkiewicz@yahoo.example\",\"camron-homenick@gmail.example\",\"camryn-schmeler@hotmail.example\",\"candida-turcotte@yahoo.example\",\"carolanne-upton@gmail.example\",\"carroll.chanel@yahoo.example\",\"carroll.kohler@hotmail.example\",\"carter-fern@hotmail.example\",\"casey.robel@yahoo.example\",\"casper-alfonzo@yahoo.example\",\"cassin-cleta@hotmail.example\",\"cassin.mario@hotmail.example\",\"cayla.vonrueden@hotmail.example\",\"cecilia.stark@hotmail.example\",\"cedrick-kessler@gmail.example\",\"champlin.jensen@yahoo.example\",\"chanel.rippin@yahoo.example\",\"charlene-bayer@hotmail.example\",\"chet-blick@yahoo.example\",\"christophe.wilderman@hotmail.example\",\"ciara-larson@hotmail.example\",\"ciara.green@yahoo.example\",\"clark-luettgen@gmail.example\",\"claudie-dare@yahoo.example\",\"claudine.mccullough@yahoo.example\",\"clay-pfannerstill@gmail.example\",\"clemens.hansen@gmail.example\",\"cole.christophe@yahoo.example\",\"conn-gideon@yahoo.example\",\"connell-o-henriette@yahoo.example\",\"connell.lisette.o@yahoo.example\",\"connelly-alice@gmail.example\",\"connelly.bessie@hotmail.example\",\"conner.windler@gmail.example\",\"conroy-orlando@yahoo.example\",\"conroy-yadira@gmail.example\",\"corbin.mertz@hotmail.example\",\"corbin.wiegand@yahoo.example\",\"corkery.theresa@yahoo.example\",\"cornelius-bogisich@hotmail.example\",\"crawford.rath@gmail.example\",\"cremin-jerome@hotmail.example\",\"cremin.tyler@gmail.example\",\"cronin-marley@yahoo.example\",\"curtis.morar@hotmail.example\",\"d-amore-geoffrey@yahoo.example\",\"dagmar-sawayn@gmail.example\",\"dana-orn@hotmail.example\",\"dana.kozey@yahoo.example\",\"darwin-abshire@yahoo.example\",\"dawson-kuvalis@gmail.example\",\"dax-bartell@hotmail.example\",\"dayne.strosin@hotmail.example\",\"deckow.alisha@hotmail.example\",\"dell-schimmel@hotmail.example\",\"demario-hand@yahoo.example\",\"demetris.hauck@hotmail.example\",\"dena-schiller@yahoo.example\",\"denesik-delphia@hotmail.example\",\"deron-cremin@gmail.example\",\"destiny-murazik@hotmail.example\",\"deven.brekke@gmail.example\",\"domenico.bailey@yahoo.example\",\"dominic.jacobi@yahoo.example\",\"donavon.lowe@gmail.example\",\"dooley-karen@gmail.example\",\"douglas-prosacco@hotmail.example\",\"douglas.anais@hotmail.example\",\"durgan-emiliano@hotmail.example\",\"earnestine-lockman@hotmail.example\",\"easton-koch@gmail.example\",\"effertz-elnora@yahoo.example\",\"eileen-mayert@gmail.example\",\"eldon.herman@yahoo.example\",\"elisa-grady@yahoo.example\",\"ellie-oberbrunner@yahoo.example\",\"ellsworth.west@hotmail.example\",\"elmo.schimmel@yahoo.example\",\"elsa.klocko@gmail.example\",\"elvera.lowe@yahoo.example\",\"elwin.okuneva@gmail.example\",\"emanuel-corwin@gmail.example\",\"emard-janiya@gmail.example\",\"emerson-o-keefe@gmail.example\",\"emery.gerlach@hotmail.example\",\"emmie-mertz@yahoo.example\",\"enola.bayer@yahoo.example\",\"erich.kris@gmail.example\",\"ernestina-gerhold@gmail.example\",\"ernser-ardella@gmail.example\",\"esther-douglas@yahoo.example\",\"estrella.goyette@hotmail.example\",\"ethan.rutherford@gmail.example\",\"eudora-renner@gmail.example\",\"eugenia-stroman@yahoo.example\",\"eula-connell-o@hotmail.example\",\"eve.mante@yahoo.example\",\"fadel-philip@hotmail.example\",\"feest-angus@gmail.example\",\"feil.sterling@gmail.example\",\"felicity-greenfelder@hotmail.example\",\"felipe-johnston@yahoo.example\",\"ferry.enrico@hotmail.example\",\"fisher-antwan@hotmail.example\",\"florence.donnelly@gmail.example\",\"foster-gusikowski@yahoo.example\",\"foster-marks@yahoo.example\",\"francisco-robel@hotmail.example\",\"freddie.wisoky@gmail.example\",\"fredrick-gulgowski@yahoo.example\",\"fritz.dickens@hotmail.example\",\"funk.nichole@yahoo.example\",\"gabrielle-considine@yahoo.example\",\"gabrielle-frami@gmail.example\",\"gaetano-rogahn@hotmail.example\",\"gaylord-granville@yahoo.example\",\"gene-lueilwitz@gmail.example\",\"gerhold.lempi@yahoo.example\",\"germaine-brakus@yahoo.example\",\"gibson.eveline@hotmail.example\",\"gilberto-mueller@gmail.example\",\"gino.johnston@yahoo.example\",\"giovani-thompson@hotmail.example\",\"giovani.lesch@hotmail.example\",\"gislason-kaelyn@hotmail.example\",\"giuseppe.morar@hotmail.example\",\"gleichner-joshuah@gmail.example\",\"glover-eryn@gmail.example\",\"glover.kelsie@yahoo.example\",\"goldner.ruthe@hotmail.example\",\"gorczany-eulah@yahoo.example\",\"gottlieb-ola@gmail.example\",\"gottlieb-ruthe@yahoo.example\",\"grady.raynor@hotmail.example\",\"graham-liam@yahoo.example\",\"greenfelder-hulda@gmail.example\",\"greenfelder.wilbert@gmail.example\",\"greg-purdy@gmail.example\",\"gretchen.muller@hotmail.example\",\"greyson.boyle@gmail.example\",\"grimes-terrence@gmail.example\",\"grimes.melisa@gmail.example\",\"guido-mckenzie@yahoo.example\",\"gulgowski.ubaldo@gmail.example\",\"gutkowski-pattie@hotmail.example\",\"gutmann-lura@hotmail.example\",\"hagenes-rosie@hotmail.example\",\"hahn.hugh@hotmail.example\",\"halvorson.dale@gmail.example\",\"hane.audie@gmail.example\",\"hane.carter@gmail.example\",\"hansen-karl@hotmail.example\",\"hansen.alta@yahoo.example\",\"hansen.anibal@yahoo.example\",\"hansen.magnolia@gmail.example\",\"harris-myrtice@gmail.example\",\"harris.constantin@hotmail.example\",\"harris.richard@yahoo.example\",\"heath-dare@gmail.example\",\"heathcote.jamar@gmail.example\",\"heidenreich-patience@hotmail.example\",\"heidenreich.pearlie@hotmail.example\",\"heidi-glover@gmail.example\",\"henry-rowe@yahoo.example\",\"hermann-madelyn@hotmail.example\",\"hermiston.gerald@yahoo.example\",\"hertha.price@gmail.example\",\"herzog-ophelia@hotmail.example\",\"hessel.arnoldo@yahoo.example\",\"hettinger-brendon@yahoo.example\",\"hettinger.david@yahoo.example\",\"hettinger.orval@hotmail.example\",\"hettinger.shyanne@yahoo.example\",\"hills-violet@hotmail.example\",\"hilpert.gunnar@yahoo.example\",\"hollis-hettinger@gmail.example\",\"homenick-omari@hotmail.example\",\"hoppe.kathryne@gmail.example\",\"hoppe.lewis@gmail.example\",\"howell-reba@gmail.example\",\"howell.jacinthe@yahoo.example\",\"hudson-audra@hotmail.example\",\"hudson.larkin@hotmail.example\",\"huels-earnest@hotmail.example\",\"huels-gunnar@yahoo.example\",\"hyatt.rowan@hotmail.example\",\"jace-kihn@yahoo.example\",\"jacey.schoen@hotmail.example\",\"jacobs-oliver@yahoo.example\",\"jacobs-ronny@hotmail.example\",\"jacobson.stan@gmail.example\",\"jairo-simonis@yahoo.example\",\"jakob.hansen@gmail.example\",\"jakubowski.nyasia@yahoo.example\",\"jaleel.collins@gmail.example\",\"jamel.stanton@yahoo.example\",\"jannie-balistreri@yahoo.example\",\"jasen.stanton@yahoo.example\",\"jast.leann@yahoo.example\",\"jayden.kris@hotmail.example\",\"jazmin.brekke@gmail.example\",\"jedediah-huels@hotmail.example\",\"jeffry-schowalter@hotmail.example\",\"jenkins-sandy@yahoo.example\",\"jennifer-klocko@hotmail.example\",\"jerrod-king@yahoo.example\",\"jessika.funk@yahoo.example\",\"jo-gusikowski@hotmail.example\",\"joe.becker@yahoo.example\",\"joelle-ullrich@gmail.example\",\"johns-myrtle@yahoo.example\",\"johnston.benny@gmail.example\",\"jorge.bins@gmail.example\",\"josh-schimmel@gmail.example\",\"judd-hickle@gmail.example\",\"kade-kub@hotmail.example\",\"kaela-kunze@gmail.example\",\"kariane.hintz@gmail.example\",\"karine.mante@gmail.example\",\"katharina-heathcote@yahoo.example\",\"kavon-dach@gmail.example\",\"kaya.schoen@yahoo.example\",\"kayley.powlowski@hotmail.example\",\"keefe-o-jonas@yahoo.example\",\"keenan.ferry@hotmail.example\",\"kellie.price@hotmail.example\",\"kelsi.douglas@gmail.example\",\"kemmer-gene@yahoo.example\",\"kemmer-matt@yahoo.example\",\"kemmer.bonnie@hotmail.example\",\"kennedy-kunde@gmail.example\",\"kerluke.jakob@gmail.example\",\"kertzmann-coty@hotmail.example\",\"keshaun-carroll@hotmail.example\",\"khalid-pouros@yahoo.example\",\"khalid.blanda@yahoo.example\",\"kihn.alfred@yahoo.example\",\"kilback-alisha@hotmail.example\",\"kilback-carmelo@yahoo.example\",\"kitty.hilll@gmail.example\",\"koelpin-karelle@gmail.example\",\"koepp-melyna@gmail.example\",\"kohler.jermain@hotmail.example\",\"konopelski.beaulah@hotmail.example\",\"koss-ella@hotmail.example\",\"koss.letha@hotmail.example\",\"kovacek-dawson@hotmail.example\",\"kristoffer.blanda@yahoo.example\",\"krystel.boyle@yahoo.example\",\"kshlerin-bernardo@gmail.example\",\"kshlerin-stella@yahoo.example\",\"kulas-armani@yahoo.example\",\"kunze.eleanora@hotmail.example\",\"kuphal.colton@gmail.example\",\"kurtis.parker@gmail.example\",\"kuvalis-cierra@yahoo.example\",\"kuvalis-willis@yahoo.example\",\"kyler-altenwerth@yahoo.example\",\"kyler.abshire@yahoo.example\",\"kyra-lynch@hotmail.example\",\"lacey.dickinson@hotmail.example\",\"langosh.cathrine@gmail.example\",\"langworth-savion@gmail.example\",\"larkin-lilliana@hotmail.example\",\"larkin.cedrick@gmail.example\",\"larson-adrianna@gmail.example\",\"laurel.pfannerstill@gmail.example\",\"laurie-sanford@hotmail.example\",\"lavern.botsford@hotmail.example\",\"lavern.boyle@hotmail.example\",\"leannon-clay@gmail.example\",\"lebsack-tristin@yahoo.example\",\"ledner-nichole@yahoo.example\",\"leila-considine@gmail.example\",\"leta-heidenreich@yahoo.example\",\"leuschke-estefania@yahoo.example\",\"liam-schoen@hotmail.example\",\"lillie.wilderman@hotmail.example\",\"lind.annamae@gmail.example\",\"linnea.dickens@gmail.example\",\"littel.otto@hotmail.example\",\"little-anika@hotmail.example\",\"little.john@yahoo.example\",\"lockman-janiya@hotmail.example\",\"logan-weber@yahoo.example\",\"lon-friesen@yahoo.example\",\"lorna.greenholt@yahoo.example\",\"lou.runte@gmail.example\",\"lowell-daniel@gmail.example\",\"loyal.wintheiser@yahoo.example\",\"loyce-lemke@yahoo.example\",\"lucas-beer@gmail.example\",\"lucile-bednar@gmail.example\",\"lueilwitz.osbaldo@yahoo.example\",\"luna-nienow@gmail.example\",\"lynch.tyson@gmail.example\",\"lysanne-brekke@yahoo.example\",\"mabel-grimes@hotmail.example\",\"macejkovic-cyrus@gmail.example\",\"macejkovic.andrew@hotmail.example\",\"mackenzie-ullrich@yahoo.example\",\"madge-friesen@gmail.example\",\"madie.bayer@hotmail.example\",\"maeve.hilpert@hotmail.example\",\"maiya-beier@hotmail.example\",\"malika-kuphal@hotmail.example\",\"mante-dakota@yahoo.example\",\"marcelle-rippin@gmail.example\",\"marcelo-ferry@gmail.example\",\"margarete.tillman@gmail.example\",\"marley.gorczany@hotmail.example\",\"marvin.kris@gmail.example\",\"mathilde.quigley@gmail.example\",\"maurine-considine@hotmail.example\",\"maximillia.ebert@hotmail.example\",\"maximillian-zboncak@hotmail.example\",\"mayer.arne@hotmail.example\",\"mayert.jessyca@gmail.example\",\"mckenzie.eduardo@yahoo.example\",\"mclaughlin.ezekiel@yahoo.example\",\"meagan.cremin@yahoo.example\",\"melba-witting@hotmail.example\",\"melisa.hilpert@hotmail.example\",\"melissa.cormier@hotmail.example\",\"merle.blick@yahoo.example\",\"merle.moen@yahoo.example\",\"mertz.antoinette@hotmail.example\",\"mertz.melissa@gmail.example\",\"micaela.kerluke@gmail.example\",\"milan-ritchie@gmail.example\",\"miller-geovanni@hotmail.example\",\"miller.morgan@gmail.example\",\"mills-andy@hotmail.example\",\"milton.schiller@hotmail.example\",\"mina.reynolds@yahoo.example\",\"miracle.erdman@gmail.example\",\"misty-botsford@hotmail.example\",\"mitchell-lacey@gmail.example\",\"moen-evalyn@gmail.example\",\"mohr.johnson@gmail.example\",\"mollie.bogan@hotmail.example\",\"monahan.loma@yahoo.example\",\"monserrate-doyle@hotmail.example\",\"morar-maddison@hotmail.example\",\"morissette.jailyn@gmail.example\",\"mraz-tomas@gmail.example\",\"mraz.caitlyn@yahoo.example\",\"muller-russell@yahoo.example\",\"murazik-donny@hotmail.example\",\"murray-idell@gmail.example\",\"murray-zemlak@hotmail.example\",\"murray.gleason@gmail.example\",\"mya-gleason@yahoo.example\",\"myles.deckow@gmail.example\",\"myrtle.bahringer@hotmail.example\",\"nader-arnaldo@hotmail.example\",\"nader-ryley@hotmail.example\",\"nayeli.becker@yahoo.example\",\"nicolas.dameon@yahoo.example\",\"nicolas.karen@hotmail.example\",\"nikko.bartoletti@gmail.example\",\"nikolas-hilpert@gmail.example\",\"nikolaus-willie@yahoo.example\",\"nils.gaylord@hotmail.example\",\"nolan-amy@hotmail.example\",\"nolan.samantha@hotmail.example\",\"o-issac-kon@hotmail.example\",\"o.janelle.hara@gmail.example\",\"oceane.runte@yahoo.example\",\"odell.stehr@hotmail.example\",\"olaf.sipes@gmail.example\",\"ollie.corkery@gmail.example\",\"ondricka-lamont@hotmail.example\",\"ondricka-madge@yahoo.example\",\"ondricka.rollin@gmail.example\",\"orie-sipes@yahoo.example\",\"ortiz.harrison@gmail.example\",\"orville-effertz@hotmail.example\",\"oscar-olson@hotmail.example\",\"osinski-joanne@gmail.example\",\"pacocha-khalil@hotmail.example\",\"padberg-albert@gmail.example\",\"pagac-yessenia@yahoo.example\",\"parker-lilliana@yahoo.example\",\"pattie.senger@yahoo.example\",\"paucek-larry@hotmail.example\",\"petra.durgan@hotmail.example\",\"peyton-barton@gmail.example\",\"powlowski-mohammed@yahoo.example\",\"price-rosalyn@yahoo.example\",\"rau.arnaldo@hotmail.example\",\"raynor.chasity@gmail.example\",\"rebekah-dickinson@hotmail.example\",\"rebekah.ledner@gmail.example\",\"reichel-antwon@hotmail.example\",\"reichel.gracie@gmail.example\",\"reichert-evangeline@yahoo.example\",\"reid-reilly@hotmail.example\",\"reilly.o.franco@yahoo.example\",\"rempel.brooke@gmail.example\",\"rene.muller@gmail.example\",\"reuben-koelpin@yahoo.example\",\"rey-schumm@hotmail.example\",\"reyna-greenholt@yahoo.example\",\"reynolds-melisa@hotmail.example\",\"richmond-adams@gmail.example\",\"roberts-lilian@yahoo.example\",\"rogahn-meta@hotmail.example\",\"rolfson-ford@yahoo.example\",\"rolfson.natalie@yahoo.example\",\"romaguera-angeline@yahoo.example\",\"roob-lila@gmail.example\",\"rosalinda-stamm@gmail.example\",\"rosella-bergstrom@gmail.example\",\"rowe-celestine@gmail.example\",\"ruecker-kathlyn@yahoo.example\",\"ruecker-tad@yahoo.example\",\"runolfsdottir-tyreek@gmail.example\",\"runolfsdottir.augustine@gmail.example\",\"runolfsson.davonte@gmail.example\",\"rutherford-beau@yahoo.example\",\"rylee-upton@yahoo.example\",\"ryleigh-padberg@hotmail.example\",\"sabrina-schmidt@hotmail.example\",\"sabryna-schumm@gmail.example\",\"sallie.wehner@yahoo.example\",\"samir.hayes@yahoo.example\",\"sanford.leilani@yahoo.example\",\"satterfield-abbey@hotmail.example\",\"satterfield.chris@hotmail.example\",\"satterfield.creola@hotmail.example\",\"sauer-franco@yahoo.example\",\"schaden.johathan@hotmail.example\",\"schamberger-zora@gmail.example\",\"schiller.loyal@gmail.example\",\"schinner.verna@yahoo.example\",\"schmeler-lucinda@hotmail.example\",\"schmeler-rita@yahoo.example\",\"schmeler.annabelle@gmail.example\",\"schoen.viola@hotmail.example\",\"schuster.geovanny@yahoo.example\",\"scottie.schmidt@hotmail.example\",\"senger-kamron@hotmail.example\",\"shanie.spinka@gmail.example\",\"shanny-kuvalis@gmail.example\",\"shirley-okuneva@yahoo.example\",\"sidney-kling@gmail.example\",\"skiles-devan@gmail.example\",\"skye.heidenreich@gmail.example\",\"smith-meaghan@yahoo.example\",\"smith-price@yahoo.example\",\"spencer.efrain@gmail.example\",\"spinka-donato@yahoo.example\",\"spinka-jessy@gmail.example\",\"sporer-nyasia@hotmail.example\",\"sporer.toby@yahoo.example\",\"stamm.davin@yahoo.example\",\"stanley.kuphal@gmail.example\",\"stark.yasmin@gmail.example\",\"stehr-freeman@hotmail.example\",\"stehr.tyson@gmail.example\",\"steuber-vernice@yahoo.example\",\"steuber.dedrick@gmail.example\",\"stewart.sawayn@gmail.example\",\"stiedemann-gage@gmail.example\",\"stiedemann.coby@gmail.example\",\"stokes.cordelia@yahoo.example\",\"stoltenberg-miguel@gmail.example\",\"swaniawski-kaleb@gmail.example\",\"swaniawski-luisa@hotmail.example\",\"swift.pietro@hotmail.example\",\"tavares.metz@yahoo.example\",\"terry-gregorio@gmail.example\",\"terry-william@yahoo.example\",\"terry.darlene@gmail.example\",\"terry.joe@gmail.example\",\"theodore.mcglynn@hotmail.example\",\"theresa.grant@yahoo.example\",\"theresia-russel@gmail.example\",\"thompson-fay@yahoo.example\",\"thompson-hosea@hotmail.example\",\"thurman-pouros@hotmail.example\",\"toby.yundt@gmail.example\",\"torp.magdalen@yahoo.example\",\"trantow-daphnee@hotmail.example\",\"tressie-smitham@yahoo.example\",\"treutel-jessika@yahoo.example\",\"treutel.jaquan@hotmail.example\",\"tromp-demario@yahoo.example\",\"tromp.emelia@hotmail.example\",\"trudie-muller@gmail.example\",\"trudie.koch@yahoo.example\",\"turner.dahlia@yahoo.example\",\"turner.kelley@hotmail.example\",\"tyrel-beatty@yahoo.example\",\"ullrich-ladarius@gmail.example\",\"unique.jerde@yahoo.example\",\"vanessa-jaskolski@gmail.example\",\"vergie.borer@hotmail.example\",\"veronica.weissnat@gmail.example\",\"virginia-prohaska@yahoo.example\",\"vonrueden-sheridan@hotmail.example\",\"waelchi-filomena@yahoo.example\",\"waelchi-jaqueline@hotmail.example\",\"waelchi.iva@yahoo.example\",\"walker-derrick@yahoo.example\",\"walker-nicole@yahoo.example\",\"walker-trace@gmail.example\",\"walker.carter@yahoo.example\",\"walter-melisa@gmail.example\",\"walter.chris@yahoo.example\",\"ward.anais@gmail.example\",\"ward.mabel@gmail.example\",\"warren.gulgowski@hotmail.example\",\"watsica-olen@gmail.example\",\"watsica.stanley@hotmail.example\",\"weber-breana@hotmail.example\",\"weber-gino@yahoo.example\",\"weber-mohammad@yahoo.example\",\"weimann.keyshawn@hotmail.example\",\"weimann.maryam@gmail.example\",\"weissnat-victoria@gmail.example\",\"weissnat.elmore@gmail.example\",\"weissnat.mathilde@hotmail.example\",\"welch-lucinda@yahoo.example\",\"wendell-becker@yahoo.example\",\"west.laisha@yahoo.example\",\"white.berneice@gmail.example\",\"wiegand.guy@gmail.example\",\"wilderman-nellie@hotmail.example\",\"wilhelmine.erdman@gmail.example\",\"wilkinson-penelope@gmail.example\",\"wilkinson.edmund@hotmail.example\",\"will.garrison@yahoo.example\",\"willms-ardella@yahoo.example\",\"willms-tressie@hotmail.example\",\"willms.seth@gmail.example\",\"willms.wilhelm@gmail.example\",\"wilton-senger@yahoo.example\",\"winfield.donnelly@hotmail.example\",\"winona.cassin@yahoo.example\",\"wintheiser-broderick@yahoo.example\",\"wintheiser-celestino@gmail.example\",\"wintheiser-murray@yahoo.example\",\"wisoky-rebeka@hotmail.example\",\"witting-cindy@yahoo.example\",\"witting-maud@gmail.example\",\"witting-raegan@gmail.example\",\"wiza-andreanne@gmail.example\",\"wiza.lisette@yahoo.example\",\"wolf-jewell@yahoo.example\",\"wuckert.iva@hotmail.example\",\"wyman.hilma@gmail.example\",\"yundt-haven@hotmail.example\",\"yundt.merl@yahoo.example\",\"zackery.bailey@gmail.example\",\"zane.paucek@yahoo.example\",\"zetta.nitzsche@gmail.example\",\"ziemann-serena@gmail.example\",\"zula.boehm@hotmail.example\"]',NULL,26,_binary '\0','full',NULL,'2024-05-16 19:34:40.422680'),(13,'2024-05-16 19:34:40.464474','2024-05-16 19:34:40.464474','[1,2,3,4,5]',NULL,23,_binary '\0','full',NULL,'2024-05-16 19:34:40.464474'),(14,'2024-05-16 19:34:40.505326','2024-05-16 19:34:40.505326','[\"Average\",\"Below Average\",\"Good\",\"Great\",\"Poor\"]',NULL,28,_binary '\0','full',NULL,'2024-05-16 19:34:40.505326'),(15,'2024-05-16 19:34:40.552171','2024-05-16 19:34:40.552171','[false,true]',NULL,35,_binary '\0','full',NULL,'2024-05-16 19:34:40.552171'),(16,'2024-05-16 19:34:40.593665','2024-05-16 19:34:40.593665','[\"Basic\",\"Business\",\"Premium\"]',NULL,30,_binary '\0','full',NULL,'2024-05-16 19:34:40.593665'),(17,'2024-05-16 19:34:40.635327','2024-05-16 19:34:40.635327','[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,63,65,67,68,69,70,71,72,73,75,78,82,83,88,100]',NULL,39,_binary '\0','full',NULL,'2024-05-16 19:34:40.635327'),(18,'2024-05-16 19:34:40.696083','2024-05-16 19:34:40.696083','[\"Affiliate\",\"Facebook\",\"Google\",\"Organic\",\"Twitter\"]',NULL,45,_binary '\0','full',NULL,'2024-05-16 19:34:40.696083'),(19,'2024-05-16 19:34:40.886059','2024-05-16 19:34:40.886059','[\"AK\",\"AL\",\"AR\",\"AZ\",\"CA\",\"CO\",\"CT\",\"DE\",\"FL\",\"GA\",\"IA\",\"ID\",\"IL\",\"IN\",\"KS\",\"KY\",\"LA\",\"MA\",\"MD\",\"ME\",\"MI\",\"MN\",\"MO\",\"MS\",\"MT\",\"NC\",\"ND\",\"NE\",\"NH\",\"NJ\",\"NM\",\"NV\",\"NY\",\"OH\",\"OK\",\"OR\",\"PA\",\"RI\",\"SC\",\"SD\",\"TN\",\"TX\",\"UT\",\"VA\",\"VT\",\"WA\",\"WI\",\"WV\",\"WY\"]',NULL,48,_binary '\0','full',NULL,'2024-05-16 19:34:40.886059'),(20,'2024-05-16 19:34:40.932299','2024-05-16 19:34:40.932299','[\"Doohickey\",\"Gadget\",\"Gizmo\",\"Widget\"]',NULL,58,_binary '\0','full',NULL,'2024-05-16 19:34:40.932299'),(21,'2024-05-16 19:34:40.977058','2024-05-16 19:34:40.977058','[\"0001664425970\",\"0006590063715\",\"0010465925138\",\"0038948983000\",\"0095774502751\",\"0096051986448\",\"0157967025871\",\"0212722801067\",\"0225815844582\",\"0236197465609\",\"0255973714120\",\"0272643267465\",\"0335243754848\",\"0399569209871\",\"0498395047364\",\"0698616313838\",\"0743731223606\",\"0832349515187\",\"0848056924761\",\"0899183128263\",\"1018947080336\",\"1078766578568\",\"1087115303928\",\"1144906750559\",\"1157194463322\",\"1272575087123\",\"1404411876176\",\"1408483808240\",\"1464781960745\",\"1468999794635\",\"1484994799123\",\"1538211018396\",\"1559730016366\",\"1576499102253\",\"1613730311804\",\"1613963249998\",\"1726123595351\",\"1770178011663\",\"1790740189682\",\"1807963902339\",\"1838229841499\",\"1878073010375\",\"1909194306167\",\"1943523619306\",\"1960588072419\",\"2084705637233\",\"2091630691049\",\"2117622168280\",\"2125923238175\",\"2293343551454\",\"2315609605258\",\"2339358820724\",\"2434890445616\",\"2448500145612\",\"2484897511500\",\"2516506541834\",\"2529776156387\",\"2543248750439\",\"2562717359713\",\"2646001599860\",\"2703547723491\",\"2820850288674\",\"2890379323668\",\"2952766751666\",\"3084140869281\",\"3301617687934\",\"3307124431763\",\"3576267834421\",\"3621077291879\",\"3642408008706\",\"3661250556340\",\"3685697688891\",\"3691313722887\",\"3769015137275\",\"3772022926992\",\"3806751355669\",\"3828680930458\",\"3987140172453\",\"3988126680641\",\"4009053735033\",\"4093428378987\",\"4134502155718\",\"4168050315812\",\"4198118078267\",\"4201407654834\",\"4284914664558\",\"4307721071729\",\"4312472827051\",\"4347934129886\",\"4406572671024\",\"4504719641739\",\"4516685534489\",\"4561421124790\",\"4665903801947\",\"4686859196154\",\"4709231420798\",\"4733532233696\",\"4734618834332\",\"4760375596107\",\"4785470010730\",\"4819782507258\",\"4863291591550\",\"4886504321812\",\"4893655420066\",\"4945934419923\",\"4963935336179\",\"4966277046676\",\"5010710584900\",\"5050273180195\",\"5065846711133\",\"5099742600901\",\"5176352942567\",\"5272733645116\",\"5291392809646\",\"5408760500061\",\"5433448189252\",\"5499736705597\",\"5522456328132\",\"5528517133622\",\"5592486096660\",\"5626486088179\",\"5738533322232\",\"5778452195678\",\"5856636800041\",\"5881647583898\",\"5935916054838\",\"5955704607626\",\"6009279470754\",\"6154584840805\",\"6190070243323\",\"6201199361567\",\"6248889948356\",\"6316992933962\",\"6372029072158\",\"6403813628678\",\"6409491343148\",\"6424174443243\",\"6575325360237\",\"6588791601926\",\"6704641545275\",\"6858015278648\",\"6875096496570\",\"6906120611895\",\"6966709160725\",\"7059492880556\",\"7067375149041\",\"7080123588503\",\"7153630876392\",\"7167715379463\",\"7177157744491\",\"7217466997444\",\"7317365230007\",\"7345418848909\",\"7384311074268\",\"7485639601133\",\"7494558044822\",\"7532074237028\",\"7570673549500\",\"7595223735110\",\"7663515285824\",\"7667946672475\",\"7668932199532\",\"7760442733661\",\"7813908779724\",\"7854842811538\",\"8002754191821\",\"8163753213485\",\"8207931408888\",\"8222420544052\",\"8245402607613\",\"8271165200181\",\"8296484749050\",\"8368305700967\",\"8469939413398\",\"8590367775021\",\"8687358946192\",\"8703661046340\",\"8725228831589\",\"8769809778856\",\"8825217022124\",\"8833419218504\",\"8844419430964\",\"8909358907493\",\"8933669659420\",\"9031323475252\",\"9095019841233\",\"9131148018211\",\"9182640035008\",\"9216642429807\",\"9347854191845\",\"9458076657016\",\"9482467478850\",\"9522454376759\",\"9633135585459\",\"9644009305424\",\"9687547218818\",\"9753065345920\",\"9786855487647\",\"9802920493181\",\"9978391194435\"]',NULL,63,_binary '\0','full',NULL,'2024-05-16 19:34:40.977058'),(22,'2024-05-16 19:34:41.077036','2024-05-16 19:34:41.077036','[\"Aerodynamic Bronze Hat\",\"Aerodynamic Concrete Bench\",\"Aerodynamic Concrete Lamp\",\"Aerodynamic Copper Knife\",\"Aerodynamic Cotton Bottle\",\"Aerodynamic Cotton Lamp\",\"Aerodynamic Granite Bench\",\"Aerodynamic Granite Bottle\",\"Aerodynamic Leather Computer\",\"Aerodynamic Leather Toucan\",\"Aerodynamic Linen Coat\",\"Aerodynamic Paper Coat\",\"Aerodynamic Paper Computer\",\"Aerodynamic Rubber Bench\",\"Awesome Aluminum Keyboard\",\"Awesome Aluminum Table\",\"Awesome Bronze Plate\",\"Awesome Concrete Shoes\",\"Awesome Cotton Shoes\",\"Awesome Granite Car\",\"Awesome Iron Hat\",\"Awesome Plastic Watch\",\"Awesome Rubber Wallet\",\"Awesome Silk Car\",\"Awesome Steel Toucan\",\"Awesome Wool Bench\",\"Durable Aluminum Bag\",\"Durable Copper Clock\",\"Durable Cotton Bench\",\"Durable Cotton Shirt\",\"Durable Iron Knife\",\"Durable Leather Wallet\",\"Durable Marble Watch\",\"Durable Rubber Computer\",\"Durable Steel Toucan\",\"Durable Wool Toucan\",\"Enormous Aluminum Clock\",\"Enormous Aluminum Shirt\",\"Enormous Copper Shirt\",\"Enormous Cotton Pants\",\"Enormous Granite Bottle\",\"Enormous Granite Wallet\",\"Enormous Leather Wallet\",\"Enormous Marble Gloves\",\"Enormous Marble Shoes\",\"Enormous Marble Wallet\",\"Enormous Plastic Coat\",\"Enormous Steel Watch\",\"Enormous Wool Car\",\"Ergonomic Aluminum Plate\",\"Ergonomic Concrete Lamp\",\"Ergonomic Cotton Bag\",\"Ergonomic Granite Bottle\",\"Ergonomic Iron Watch\",\"Ergonomic Leather Pants\",\"Ergonomic Linen Toucan\",\"Ergonomic Marble Computer\",\"Ergonomic Marble Hat\",\"Ergonomic Paper Wallet\",\"Ergonomic Plastic Bench\",\"Ergonomic Rubber Bench\",\"Ergonomic Silk Coat\",\"Ergonomic Silk Keyboard\",\"Ergonomic Silk Table\",\"Ergonomic Wool Bag\",\"Fantastic Aluminum Bottle\",\"Fantastic Copper Hat\",\"Fantastic Leather Watch\",\"Fantastic Rubber Knife\",\"Fantastic Silk Bottle\",\"Fantastic Steel Knife\",\"Fantastic Wool Shirt\",\"Gorgeous Aluminum Plate\",\"Gorgeous Bronze Hat\",\"Gorgeous Concrete Chair\",\"Gorgeous Concrete Shoes\",\"Gorgeous Copper Knife\",\"Gorgeous Linen Bottle\",\"Gorgeous Linen Keyboard\",\"Gorgeous Marble Computer\",\"Gorgeous Marble Plate\",\"Gorgeous Paper Bag\",\"Gorgeous Wooden Car\",\"Heavy-Duty Copper Gloves\",\"Heavy-Duty Copper Toucan\",\"Heavy-Duty Copper Watch\",\"Heavy-Duty Cotton Bottle\",\"Heavy-Duty Linen Gloves\",\"Heavy-Duty Linen Toucan\",\"Heavy-Duty Rubber Bottle\",\"Heavy-Duty Rubber Gloves\",\"Heavy-Duty Silk Car\",\"Heavy-Duty Silk Chair\",\"Heavy-Duty Steel Watch\",\"Heavy-Duty Wooden Clock\",\"Incredible Aluminum Knife\",\"Incredible Bronze Pants\",\"Incredible Bronze Wallet\",\"Incredible Concrete Keyboard\",\"Incredible Concrete Watch\",\"Incredible Granite Toucan\",\"Incredible Linen Knife\",\"Incredible Plastic Chair\",\"Incredible Plastic Watch\",\"Incredible Silk Shoes\",\"Intelligent Bronze Knife\",\"Intelligent Granite Hat\",\"Intelligent Iron Shirt\",\"Intelligent Paper Car\",\"Intelligent Paper Hat\",\"Intelligent Steel Car\",\"Intelligent Wooden Gloves\",\"Lightweight Bronze Table\",\"Lightweight Copper Wallet\",\"Lightweight Granite Hat\",\"Lightweight Leather Bench\",\"Lightweight Leather Gloves\",\"Lightweight Linen Bottle\",\"Lightweight Linen Coat\",\"Lightweight Linen Hat\",\"Lightweight Marble Bag\",\"Lightweight Paper Bottle\",\"Lightweight Steel Knife\",\"Lightweight Steel Watch\",\"Lightweight Wool Bag\",\"Lightweight Wool Computer\",\"Lightweight Wool Plate\",\"Mediocre Aluminum Lamp\",\"Mediocre Aluminum Shirt\",\"Mediocre Cotton Coat\",\"Mediocre Cotton Toucan\",\"Mediocre Leather Coat\",\"Mediocre Leather Computer\",\"Mediocre Marble Lamp\",\"Mediocre Paper Car\",\"Mediocre Plastic Clock\",\"Mediocre Rubber Shoes\",\"Mediocre Silk Bottle\",\"Mediocre Wooden Bench\",\"Mediocre Wooden Table\",\"Mediocre Wool Toucan\",\"Practical Aluminum Coat\",\"Practical Aluminum Table\",\"Practical Bronze Computer\",\"Practical Bronze Watch\",\"Practical Copper Car\",\"Practical Granite Plate\",\"Practical Paper Bag\",\"Practical Plastic Keyboard\",\"Practical Silk Bottle\",\"Practical Silk Computer\",\"Practical Steel Table\",\"Practical Wool Hat\",\"Rustic Concrete Bottle\",\"Rustic Copper Hat\",\"Rustic Copper Knife\",\"Rustic Iron Bench\",\"Rustic Iron Keyboard\",\"Rustic Linen Keyboard\",\"Rustic Marble Bottle\",\"Rustic Paper Bench\",\"Rustic Paper Car\",\"Rustic Paper Wallet\",\"Rustic Rubber Clock\",\"Rustic Rubber Knife\",\"Rustic Silk Knife\",\"Rustic Silk Pants\",\"Sleek Aluminum Clock\",\"Sleek Aluminum Watch\",\"Sleek Bronze Lamp\",\"Sleek Copper Watch\",\"Sleek Granite Pants\",\"Sleek Leather Table\",\"Sleek Leather Toucan\",\"Sleek Marble Clock\",\"Sleek Marble Table\",\"Sleek Paper Toucan\",\"Sleek Plastic Shoes\",\"Sleek Steel Table\",\"Sleek Wool Wallet\",\"Sleek Wool Watch\",\"Small Concrete Knife\",\"Small Copper Clock\",\"Small Copper Plate\",\"Small Cotton Chair\",\"Small Granite Gloves\",\"Small Marble Hat\",\"Small Marble Knife\",\"Small Marble Shoes\",\"Small Plastic Computer\",\"Small Rubber Clock\",\"Small Wool Wallet\",\"Synergistic Copper Computer\",\"Synergistic Granite Chair\",\"Synergistic Leather Coat\",\"Synergistic Marble Keyboard\",\"Synergistic Rubber Shoes\",\"Synergistic Steel Chair\",\"Synergistic Wool Coat\"]',NULL,65,_binary '\0','full',NULL,'2024-05-16 19:34:41.077036'),(23,'2024-05-16 19:34:41.173295','2024-05-16 19:34:41.173295','[\"Alfreda Konopelski II Group\",\"Alfredo Kuhlman Group\",\"Americo Sipes and Sons\",\"Annetta Wyman and Sons\",\"Aufderhar-Boehm\",\"Balistreri-Ankunding\",\"Balistreri-Muller\",\"Barrows-Johns\",\"Batz-Schroeder\",\"Baumbach-Hilpert\",\"Bednar, Berge and Boyle\",\"Berge, Mraz and Sawayn\",\"Bernhard-Grady\",\"Blake Greenfelder Group\",\"Bosco-Breitenberg\",\"Bradtke, Wilkinson and Reilly\",\"Braeden Gislason and Sons\",\"Brittany Mueller Inc\",\"Cale Thompson V and Sons\",\"Carmela Douglas Inc\",\"Carol Marvin LLC\",\"Casper-Schimmel\",\"Cassin-Collins\",\"Claude Thompson Group\",\"Connelly-Mitchell\",\"Connelly-Ritchie\",\"Considine, Bogisich and Bauch\",\"Considine, Lehner and Maggio\",\"Considine, Schamberger and Schiller\",\"Cremin-Williamson\",\"Crona, Block and Homenick\",\"Cruickshank-Abernathy\",\"Daugherty-Dach\",\"Delphia Bauch Inc\",\"Demarcus Brakus Inc\",\"Denesik-Ortiz\",\"Devonte Gleichner Inc\",\"Dominic Mann Group\",\"Donnelly, Renner and Barton\",\"Dooley-Cummings\",\"Dora Fay and Sons\",\"Dorothea Balistreri Inc\",\"Emmerich-Nienow\",\"Erika Volkman Group\",\"Eugenia Kunze LLC\",\"Fisher-Kemmer\",\"Fisher-Purdy\",\"Flatley-Kunde\",\"Ford Runolfsson Group\",\"Francis Wolff Group\",\"Friesen-Anderson\",\"Friesen-Langworth\",\"Gail Bergstrom Inc\",\"Gaylord-Lesch\",\"Gibson, Turner and Douglas\",\"Goyette-Smitham\",\"Grady, Greenfelder and Welch\",\"Gulgowski, Grimes and Mayer\",\"Gutmann-Breitenberg\",\"Hackett-Reynolds\",\"Halle Kulas I LLC\",\"Halvorson, Lockman and Ruecker\",\"Hane, Hamill and Jerde\",\"Hartmann, Mohr and Stiedemann\",\"Hauck, Ernser and Barton\",\"Heaney-Windler\",\"Heathcote-Kirlin\",\"Herman Flatley Group\",\"Herman, Gleason and Renner\",\"Hermiston, O\'Hara and Wunsch\",\"Herta Skiles and Sons\",\"Hills, Fahey and Jones\",\"Hilpert, Jacobs and Hauck\",\"Hodkiewicz-Brekke\",\"Howe, Kiehn and Price\",\"Israel Spinka and Sons\",\"Izabella Dach I and Sons\",\"Jacobson-Daniel\",\"Janick Harvey LLC\",\"Jefferey Volkman LLC\",\"Jerrell Gulgowski Inc\",\"Jerrod McLaughlin LLC\",\"Jones, Hayes and Kshlerin\",\"Jordi Effertz LLC\",\"Keely Stehr Group\",\"Keshaun Mueller Group\",\"Kiehn-Pacocha\",\"Kiel Kassulke Group\",\"Kirlin, Hermann and Stokes\",\"Koch-Ruecker\",\"Koepp, Ondricka and Larkin\",\"Kuhlman-Kuphal\",\"Kuhlman-McKenzie\",\"Kuhn-O\'Reilly\",\"Kuphal, Brown and Koss\",\"Kuphal, Friesen and Rowe\",\"Kuphal, Schowalter and Bogan\",\"Lakin-Stroman\",\"Larson, Pfeffer and Klocko\",\"Ledner-Satterfield\",\"Ledner-Watsica\",\"Legros, Lynch and Howell\",\"Little-Pagac\",\"Lon Wiegand DVM and Sons\",\"Lorenza Mayer Inc\",\"Maegan Casper Group\",\"Marge Effertz Jr. Inc\",\"Marquardt, Crooks and Abshire\",\"Marvin, Turcotte and Wisozk\",\"Mason Bashirian and Sons\",\"Maxime Haley and Sons\",\"Mayer, Kiehn and Turcotte\",\"McClure-Lockman\",\"McClure-Murphy\",\"McDermott, Kiehn and Becker\",\"McGlynn, Fay and Kertzmann\",\"Medhurst-Reichert\",\"Miles Ryan Group\",\"Miss Annamae Kutch Group\",\"Morar-Schamberger\",\"Morissette, Bartoletti and Cummings\",\"Morissette, Dare and Schimmel\",\"Mr. Colton Mayer Group\",\"Mr. Johanna Koepp and Sons\",\"Mr. Tanya Stracke and Sons\",\"Mrs. Eugenia Koelpin and Sons\",\"Mueller, Mayert and Johnston\",\"Mueller-Dare\",\"Murray, Watsica and Wunsch\",\"Myriam Macejkovic Inc\",\"Nikolaus-Hudson\",\"Noah Anderson and Sons\",\"Nolan-Heller\",\"Nolan-Wolff\",\"Odessa Emmerich Inc\",\"Okuneva, Kutch and Monahan\",\"Ora Monahan and Sons\",\"Oran D\'Amore Inc\",\"Orn, Hilpert and Pfannerstill\",\"Pacocha-Volkman\",\"Padberg, Senger and Williamson\",\"Parker, O\'Connell and Beahan\",\"Pouros, Nitzsche and Mayer\",\"Powlowski, Keebler and Quigley\",\"Price Kuhic Inc\",\"Price, Schultz and Daniel\",\"Prohaska-Quigley\",\"Quigley, Von and Will\",\"Regan Bradtke and Sons\",\"Reichert, Johnson and Roob\",\"Reid Pfannerstill and Sons\",\"Reynolds, Gleason and Brekke\",\"Ritchie, Haley and Pacocha\",\"Robyn Padberg Inc\",\"Rodriguez-Kuhlman\",\"Rosanna Murazik Inc\",\"Roscoe Oberbrunner Group\",\"Rowan Kautzer LLC\",\"Ruecker, Carter and Ortiz\",\"Ruecker-Jakubowski\",\"Schamberger-Maggio\",\"Schamberger-Wehner\",\"Schiller, Bogisich and Lockman\",\"Schinner, Schmitt and Crona\",\"Schumm, Brown and Wehner\",\"Schuster-Wyman\",\"Senger, Mertz and Murray\",\"Senger-Doyle\",\"Senger-Stamm\",\"Smitham, Dach and Bode\",\"Spinka-Stokes\",\"Stamm, Crist and Labadie\",\"Stanton-Fritsch\",\"Stark-Bayer\",\"Stroman-Carroll\",\"Swaniawski, Casper and Hilll\",\"Theodora Terry and Sons\",\"Theodore Hansen Inc\",\"Thompson-Wolf\",\"Tia Goyette Group\",\"Toy, Deckow and Nitzsche\",\"Trantow-Bartell\",\"Turner, Kiehn and Schmitt\",\"Una Fadel Group\",\"Upton, Kovacek and Halvorson\",\"Upton, Schoen and Streich\",\"Ursula Collins LLC\",\"Volkman, Greenfelder and Kiehn\",\"Von-Gulgowski\",\"Weimann-Cummings\",\"West, Prohaska and Wunsch\",\"Wilkinson, Donnelly and Gulgowski\",\"Wilkinson-Gottlieb\",\"Wisoky, Pagac and Heaney\",\"Wiza, Abbott and Deckow\",\"Wolf, Beahan and Thiel\",\"Wolff, Ebert and Hansen\",\"Wuckert, Murazik and Ernser\",\"Zemlak, Botsford and Corkery\",\"Zemlak-Wiegand\"]',NULL,60,_binary '\0','full',NULL,'2024-05-16 19:34:41.173295'),(24,'2024-05-16 19:34:41.229526','2024-05-16 19:34:41.229526','[1,2,3,4,5]',NULL,66,_binary '\0','full',NULL,'2024-05-16 19:34:41.229526'),(25,'2024-05-16 19:55:26.588624','2024-05-16 19:55:26.588624','[\"Anandpuri\",\"Anisabad\",\"Ashok Rajpath\",\"Bailey Road\",\"Bankipore\",\"Boring Canal Road\",\"Boring Road\",\"Danapur\",\"Exhibition Road\",\"Fraser Road\",\"Gandhi Maidan\",\"Gardanibagh\",\"Kankarbagh\",\"Kidwaipuri\",\"Kumhrar\",\"Pataliputra\",\"Patliputra Colony\",\"Phulwari Sharif\",\"Rajendra Nagar\",\"S.K. Puri\"]',NULL,73,_binary '\0','full',NULL,'2024-05-16 19:55:26.588624'),(26,'2024-05-16 19:55:26.622828','2024-05-16 19:55:26.622828','[\"3G\",\"4G\",\"5G\",\"LTE\"]',NULL,76,_binary '\0','full',NULL,'2024-05-16 19:55:26.622828');
/*!40000 ALTER TABLE `metabase_fieldvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metabase_table`
--

DROP TABLE IF EXISTS `metabase_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metabase_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `entity_type` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `db_id` int NOT NULL,
  `display_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility_type` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points_of_interest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caveats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `field_order` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'database',
  `initial_sync_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'complete' COMMENT 'String indicating whether a table has completed its initial sync and is ready to use',
  `is_upload` bit(1) NOT NULL DEFAULT b'0',
  `database_require_filter` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_table_db_id_schema_name` (`db_id`,`schema`,`name`),
  KEY `idx_table_db_id` (`db_id`),
  KEY `idx_metabase_table_show_in_getting_started` (`show_in_getting_started`),
  KEY `idx_metabase_table_db_id_schema` (`db_id`,`schema`),
  CONSTRAINT `fk_table_ref_database_id` FOREIGN KEY (`db_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metabase_table`
--

LOCK TABLES `metabase_table` WRITE;
/*!40000 ALTER TABLE `metabase_table` DISABLE KEYS */;
INSERT INTO `metabase_table` VALUES (1,'2024-05-16 19:34:30.472730','2024-05-16 19:34:39.094338','ANALYTIC_EVENTS','Piespace does some anonymous analytics tracking on how users interact with their platform. They‚Äôve only had time to implement a few events, but you know how it is. Pies come first.','entity/EventTable',_binary '',1,'Analytic Events',NULL,'PUBLIC','Is it? We‚Äôll let you be the judge of that.','Piespace has cracked time travel, so keep in mind that some events may have already happened in the future.',_binary '\0','database','complete',_binary '\0',NULL),(2,'2024-05-16 19:34:30.503939','2024-05-16 19:34:39.115378','FEEDBACK','With each order of pies sent out, Piespace includes a place for customers to submit feedback and review their order.','entity/GenericTable',_binary '',1,'Feedback',NULL,'PUBLIC','Is it? We‚Äôll let you be the judge of that.','Not every account feels inclined to submit feedback. That‚Äôs cool. There‚Äôs still quite a few responses here.',_binary '\0','database','complete',_binary '\0',NULL),(3,'2024-05-16 19:34:30.525882','2024-05-16 19:34:39.149648','PEOPLE','Information on the user accounts registered with Sample Company.','entity/UserTable',_binary '',1,'People',NULL,'PUBLIC','Is it? You tell us!','Note that employees and customer support staff will have accounts.',_binary '\0','database','complete',_binary '\0',NULL),(4,'2024-05-16 19:34:30.550340','2024-05-16 19:34:39.171712','REVIEWS','Reviews that Sample Company customers have left on our products.','entity/GenericTable',_binary '',1,'Reviews',NULL,'PUBLIC','Is it? You tell us!','These reviews aren\'t tied to orders so it is possible people have reviewed products they did not purchase from us.',_binary '\0','database','complete',_binary '\0',NULL),(5,'2024-05-16 19:34:30.573248','2024-05-16 19:34:39.137767','ORDERS','Confirmed Sample Company orders for a product, from a user.','entity/TransactionTable',_binary '',1,'Orders',NULL,'PUBLIC','Is it? You tell us!','You can join this on the Products and Orders table using the ID fields. Discount is left null if not applicable.',_binary '\0','database','complete',_binary '\0',NULL),(6,'2024-05-16 19:34:30.594565','2024-05-16 19:34:39.082589','ACCOUNTS','Information on customer accounts registered with Piespace. Each account represents a new organization signing up for on-demand pies.','entity/UserTable',_binary '',1,'Accounts',NULL,'PUBLIC','Is it? We‚Äôll let you be the judge of that.','Piespace‚Äôs business operates with a two week trial period. If you see that ‚ÄúCanceled At‚Äù is null then that account is still happily paying for their pies.',_binary '\0','database','complete',_binary '\0',NULL),(7,'2024-05-16 19:34:30.615449','2024-05-16 19:34:39.125768','INVOICES','Confirmed payments from Piespace‚Äôs customers. Most accounts pay for their pie subscription on a monthly basis.','entity/GenericTable',_binary '',1,'Invoices',NULL,'PUBLIC','Is it? We‚Äôll let you be the judge of that.','You can group by ‚ÄúAccount ID‚Äù to see all the payments from an account and unveil information like total amount paid to date.',_binary '\0','database','complete',_binary '\0',NULL),(8,'2024-05-16 19:34:30.634760','2024-05-16 19:34:39.160525','PRODUCTS','Includes a catalog of all the products ever sold by the famed Sample Company.','entity/ProductTable',_binary '',1,'Products',NULL,'PUBLIC','Is it? You tell us!','The rating column is an integer from 1-5 where 1 is dreadful and 5 is the best thing ever.',_binary '\0','database','complete',_binary '\0',NULL),(9,'2024-05-16 19:55:25.768739','2024-05-17 19:13:00.109086','call_record',NULL,'entity/GenericTable',_binary '',2,'Call Record',NULL,NULL,NULL,NULL,_binary '\0','database','complete',_binary '\0',NULL);
/*!40000 ALTER TABLE `metabase_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metric`
--

DROP TABLE IF EXISTS `metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metric` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `creator_id` int NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `points_of_interest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caveats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `how_is_this_calculated` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_metric_creator_id` (`creator_id`),
  KEY `idx_metric_table_id` (`table_id`),
  KEY `idx_metric_show_in_getting_started` (`show_in_getting_started`),
  CONSTRAINT `fk_metric_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_metric_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
/*!40000 ALTER TABLE `metric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metric_important_field`
--

DROP TABLE IF EXISTS `metric_important_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metric_important_field` (
  `id` int NOT NULL AUTO_INCREMENT,
  `metric_id` int NOT NULL,
  `field_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_metric_important_field_metric_id_field_id` (`metric_id`,`field_id`),
  KEY `idx_metric_important_field_metric_id` (`metric_id`),
  KEY `idx_metric_important_field_field_id` (`field_id`),
  CONSTRAINT `fk_metric_important_field_metabase_field_id` FOREIGN KEY (`field_id`) REFERENCES `metabase_field` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_metric_important_field_metric_id` FOREIGN KEY (`metric_id`) REFERENCES `metric` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric_important_field`
--

LOCK TABLES `metric_important_field` WRITE;
/*!40000 ALTER TABLE `metric_important_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `metric_important_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_index`
--

DROP TABLE IF EXISTS `model_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_index` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model_id` int DEFAULT NULL COMMENT 'The ID of the indexed model.',
  `pk_ref` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the primary key field ref.',
  `value_ref` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Serialized JSON of the label field ref.',
  `schedule` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The cron schedule for when value syncing should happen.',
  `state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The status of the index: initializing, indexed, error, overflow.',
  `indexed_at` timestamp(6) NULL DEFAULT NULL COMMENT 'When the status changed',
  `error` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'The error message if the status is error.',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when these changes were made.',
  `creator_id` int NOT NULL COMMENT 'ID of the user who created the event',
  PRIMARY KEY (`id`),
  KEY `fk_model_index_creator_id` (`creator_id`),
  KEY `idx_model_index_model_id` (`model_id`),
  CONSTRAINT `fk_model_index_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_model_index_model_id` FOREIGN KEY (`model_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of which models have indexed columns.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_index`
--

LOCK TABLES `model_index` WRITE;
/*!40000 ALTER TABLE `model_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_index_value`
--

DROP TABLE IF EXISTS `model_index_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_index_value` (
  `model_index_id` int DEFAULT NULL COMMENT 'The ID of the indexed model.',
  `model_pk` int NOT NULL COMMENT 'The primary key of the indexed value',
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The label to display identifying the indexed value.',
  UNIQUE KEY `unique_model_index_value_model_index_id_model_pk` (`model_index_id`,`model_pk`),
  CONSTRAINT `fk_model_index_value_model_id` FOREIGN KEY (`model_index_id`) REFERENCES `model_index` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of the values indexed in a model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_index_value`
--

LOCK TABLES `model_index_value` WRITE;
/*!40000 ALTER TABLE `model_index_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_index_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderation_review`
--

DROP TABLE IF EXISTS `moderation_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderation_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'most recent modification time',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'creation time',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'verified, misleading, confusing, not_misleading, pending',
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `moderated_item_id` int NOT NULL COMMENT 'either a document or question ID; the item that needs review',
  `moderated_item_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'whether it''s a question or dashboard',
  `moderator_id` int NOT NULL COMMENT 'ID of the user who did the review',
  `most_recent` bit(1) NOT NULL COMMENT 'tag for most recent review',
  PRIMARY KEY (`id`),
  KEY `idx_moderation_review_item_type_item_id` (`moderated_item_type`,`moderated_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reviews (from moderators) for a given question/dashboard (BUCM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moderation_review`
--

LOCK TABLES `moderation_review` WRITE;
/*!40000 ALTER TABLE `moderation_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `moderation_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `native_query_snippet`
--

DROP TABLE IF EXISTS `native_query_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `native_query_snippet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the query snippet',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creator_id` int NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `collection_id` int DEFAULT NULL COMMENT 'ID of the Snippet Folder (Collection) this Snippet is in, if any',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_snippet_creator_id` (`creator_id`),
  KEY `idx_snippet_name` (`name`),
  KEY `idx_snippet_collection_id` (`collection_id`),
  CONSTRAINT `fk_snippet_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_snippet_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Query snippets (raw text) to be substituted in native queries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `native_query_snippet`
--

LOCK TABLES `native_query_snippet` WRITE;
/*!40000 ALTER TABLE `native_query_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `native_query_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameter_card`
--

DROP TABLE IF EXISTS `parameter_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameter_card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'most recent modification time',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'creation time',
  `card_id` int NOT NULL COMMENT 'ID of the card generating the values',
  `parameterized_object_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Type of the entity consuming the values (dashboard, card, etc.)',
  `parameterized_object_id` int NOT NULL COMMENT 'ID of the entity consuming the values',
  `parameter_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_parameterized_object_card_parameter` (`parameterized_object_id`,`parameterized_object_type`,`parameter_id`),
  KEY `idx_parameter_card_parameterized_object_id` (`parameterized_object_id`),
  KEY `idx_parameter_card_card_id` (`card_id`),
  CONSTRAINT `fk_parameter_card_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Join table connecting cards to entities (dashboards, other cards, etc.) that use the values generated by the card for filter values';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameter_card`
--

LOCK TABLES `parameter_card` WRITE;
/*!40000 ALTER TABLE `parameter_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `parameter_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`object`),
  KEY `idx_permissions_group_id` (`group_id`),
  KEY `idx_permissions_object` (`object`),
  KEY `idx_permissions_group_id_object` (`group_id`,`object`),
  CONSTRAINT `fk_permissions_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (3,'/application/subscription/',1),(4,'/collection/namespace/snippets/root/',1),(2,'/collection/root/',1),(7,'/db/1/',1),(12,'/db/2/',1),(8,'/download/db/1/',1),(9,'/download/db/1/native/',1),(13,'/download/db/2/',1),(14,'/download/db/2/native/',1),(1,'/',2);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_group`
--

DROP TABLE IF EXISTS `permissions_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permissions_group_name` (`name`),
  KEY `idx_permissions_group_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_group`
--

LOCK TABLES `permissions_group` WRITE;
/*!40000 ALTER TABLE `permissions_group` DISABLE KEYS */;
INSERT INTO `permissions_group` VALUES (2,'Administrators'),(1,'All Users');
/*!40000 ALTER TABLE `permissions_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_group_membership`
--

DROP TABLE IF EXISTS `permissions_group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_group_membership` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  `is_group_manager` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Boolean flag to indicate whether user is a group''s manager.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_permissions_group_membership_user_id_group_id` (`user_id`,`group_id`),
  KEY `idx_permissions_group_membership_group_id` (`group_id`),
  KEY `idx_permissions_group_membership_user_id` (`user_id`),
  KEY `idx_permissions_group_membership_group_id_user_id` (`group_id`,`user_id`),
  CONSTRAINT `fk_permissions_group_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_permissions_group_membership_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_group_membership`
--

LOCK TABLES `permissions_group_membership` WRITE;
/*!40000 ALTER TABLE `permissions_group_membership` DISABLE KEYS */;
INSERT INTO `permissions_group_membership` VALUES (1,1,1,_binary '\0'),(2,1,2,_binary '\0');
/*!40000 ALTER TABLE `permissions_group_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_revision`
--

DROP TABLE IF EXISTS `permissions_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `before` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `after` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL COMMENT 'The ID of the admin who made this set of changes.',
  `created_at` timestamp(6) NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `fk_permissions_revision_user_id` (`user_id`),
  CONSTRAINT `fk_permissions_revision_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to keep track of changes made to permissions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_revision`
--

LOCK TABLES `permissions_revision` WRITE;
/*!40000 ALTER TABLE `permissions_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persisted_info`
--

DROP TABLE IF EXISTS `persisted_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persisted_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `database_id` int NOT NULL COMMENT 'ID of the database associated to the persisted card',
  `card_id` int NOT NULL COMMENT 'ID of the Card model persisted',
  `question_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Slug of the card which will form the persisted table name',
  `table_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the table persisted',
  `definition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'JSON object that captures the state of the table when we persisted',
  `query_hash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Hash of the query persisted',
  `active` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicating whether the persisted table is active and can be swapped',
  `state` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Persisted table state (creating, persisted, refreshing, deleted)',
  `refresh_begin` timestamp(6) NOT NULL COMMENT 'The timestamp of when the most recent refresh was started',
  `refresh_end` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp of when the most recent refresh ended',
  `state_change_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp of when the most recent state changed',
  `error` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Error message from persisting if applicable',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the model was first persisted',
  `creator_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_id` (`card_id`),
  KEY `fk_persisted_info_database_id` (`database_id`),
  KEY `fk_persisted_info_ref_creator_id` (`creator_id`),
  CONSTRAINT `fk_persisted_info_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_persisted_info_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_persisted_info_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table holding information about persisted models';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persisted_info`
--

LOCK TABLES `persisted_info` WRITE;
/*!40000 ALTER TABLE `persisted_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `persisted_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse`
--

DROP TABLE IF EXISTS `pulse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creator_id` int NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `skip_if_empty` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Skip a scheduled Pulse if none of its questions have any results',
  `alert_condition` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Condition (i.e. "rows" or "goal") used as a guard for alerts',
  `alert_first_only` bit(1) DEFAULT NULL COMMENT 'True if the alert should be disabled after the first notification',
  `alert_above_goal` bit(1) DEFAULT NULL COMMENT 'For a goal condition, alert when above the goal',
  `collection_id` int DEFAULT NULL COMMENT 'Options ID of Collection this Pulse belongs to.',
  `collection_position` smallint DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `archived` bit(1) DEFAULT b'0' COMMENT 'Has this pulse been archived?',
  `dashboard_id` int DEFAULT NULL COMMENT 'ID of the Dashboard if this Pulse is a Dashboard Subscription.',
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_creator_id` (`creator_id`),
  KEY `idx_pulse_collection_id` (`collection_id`),
  KEY `fk_pulse_ref_dashboard_id` (`dashboard_id`),
  CONSTRAINT `fk_pulse_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_pulse_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse`
--

LOCK TABLES `pulse` WRITE;
/*!40000 ALTER TABLE `pulse` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse_card`
--

DROP TABLE IF EXISTS `pulse_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pulse_id` int NOT NULL,
  `card_id` int NOT NULL,
  `position` int NOT NULL,
  `include_csv` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a CSV of the data should be included for this pulse card',
  `include_xls` bit(1) NOT NULL DEFAULT b'0' COMMENT 'True if a XLS of the data should be included for this pulse card',
  `dashboard_card_id` int DEFAULT NULL COMMENT 'If this Pulse is a Dashboard subscription, the ID of the DashboardCard that corresponds to this PulseCard.',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `format_rows` bit(1) DEFAULT b'1' COMMENT 'Whether or not to apply formatting to the rows of the export',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_card_pulse_id` (`pulse_id`),
  KEY `idx_pulse_card_card_id` (`card_id`),
  KEY `fk_pulse_card_ref_pulse_card_id` (`dashboard_card_id`),
  CONSTRAINT `fk_pulse_card_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_card_ref_pulse_card_id` FOREIGN KEY (`dashboard_card_id`) REFERENCES `report_dashboardcard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_card_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_card`
--

LOCK TABLES `pulse_card` WRITE;
/*!40000 ALTER TABLE `pulse_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse_channel`
--

DROP TABLE IF EXISTS `pulse_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_channel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pulse_id` int NOT NULL,
  `channel_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `schedule_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_hour` int DEFAULT NULL,
  `schedule_day` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `schedule_frame` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_pulse_channel_pulse_id` (`pulse_id`),
  KEY `idx_pulse_channel_schedule_type` (`schedule_type`),
  CONSTRAINT `fk_pulse_channel_ref_pulse_id` FOREIGN KEY (`pulse_id`) REFERENCES `pulse` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_channel`
--

LOCK TABLES `pulse_channel` WRITE;
/*!40000 ALTER TABLE `pulse_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulse_channel_recipient`
--

DROP TABLE IF EXISTS `pulse_channel_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pulse_channel_recipient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pulse_channel_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pulse_channel_recipient_ref_pulse_channel_id` (`pulse_channel_id`),
  KEY `fk_pulse_channel_recipient_ref_user_id` (`user_id`),
  CONSTRAINT `fk_pulse_channel_recipient_ref_pulse_channel_id` FOREIGN KEY (`pulse_channel_id`) REFERENCES `pulse_channel` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_pulse_channel_recipient_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pulse_channel_recipient`
--

LOCK TABLES `pulse_channel_recipient` WRITE;
/*!40000 ALTER TABLE `pulse_channel_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `pulse_channel_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query` (
  `query_hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. (This is a 256-bit SHA3 hash of the query dict.)',
  `average_execution_time` int NOT NULL COMMENT 'Average execution time for the query, round to nearest number of milliseconds. This is updated as a rolling average.',
  `query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`query_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Information (such as average execution time) for different queries that have been previously ran.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query`
--

LOCK TABLES `query` WRITE;
/*!40000 ALTER TABLE `query` DISABLE KEYS */;
INSERT INTO `query` VALUES (_binary '#±\’‰¢£ÇÆ∏\Z}P∫6µÜY,\‹\„é`FçO',21,'{\"type\":\"native\",\"native\":{\"query\":\"SELECT\\n  `call_record`.`location` AS `location`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`location`\\nORDER BY\\n  `count` DESC,\\n  `call_record`.`location` ASC\\nLIMIT\\n  10\",\"template-tags\":{}},\"database\":2,\"middleware\":{\"js-int-to-string?\":true,\"add-default-userland-constraints?\":true}}'),(_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•',83,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false},\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  COUNT(*)\\nFROM\\n  `call_record`\"},\"viz-settings\":null,\"database\":2,\"async?\":true,\"cache-ttl\":null}'),(_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ',91,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false},\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`location` AS `location`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`location`\\nORDER BY\\n  `count` DESC,\\n  `call_record`.`location` ASC\\nLIMIT\\n  10\"},\"viz-settings\":null,\"database\":2,\"async?\":true,\"cache-ttl\":null}'),(_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á',80,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false},\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`network` AS `network`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`network`\\nORDER BY\\n  `call_record`.`network` ASC\"},\"viz-settings\":null,\"database\":2,\"async?\":true,\"cache-ttl\":null}'),(_binary 'áD£e\Ì˛b’ä\÷s%\Ã\Êa/\‹Qs2`¿øs¡Fï\ÀE',42,'{\"type\":\"native\",\"native\":{\"query\":\"SELECT\\n  COUNT(*)\\nFROM\\n  `call_record`\",\"template-tags\":{}},\"database\":2,\"middleware\":{\"js-int-to-string?\":true,\"add-default-userland-constraints?\":true}}'),(_binary '‰§ìÅk)\Â^Ö¸\0u\î°\ÿ\Ï\ıõ!\˜%Qqm*',62,'{\"type\":\"native\",\"native\":{\"query\":\"SELECT\\n  `call_record`.`timestamp` AS `Time`,\\n  `call_record`.`location` AS `Location`,\\n  `call_record`.`signalStrength` AS `Signal Strength`,\\n  `call_record`.`network` AS `Network`\\nFROM\\n  `call_record`\\nLIMIT\\n  100\",\"template-tags\":{}},\"database\":2,\"middleware\":{\"js-int-to-string?\":true,\"add-default-userland-constraints?\":true}}'),(_binary '\Ò]/\Œ\"Çæon®£6\ˆ¢Y\≈\»mgc\‚5\‚\ZG¡`4çã',21,'{\"type\":\"native\",\"native\":{\"query\":\"SELECT\\n  `call_record`.`network` AS `network`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`network`\\nORDER BY\\n  `call_record`.`network` ASC\",\"template-tags\":{}},\"database\":2,\"middleware\":{\"js-int-to-string?\":true,\"add-default-userland-constraints?\":true}}'),(_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f',136,'{\"constraints\":{\"max-results\":10000,\"max-results-bare-rows\":2000},\"type\":\"native\",\"middleware\":{\"js-int-to-string?\":true,\"ignore-cached-results?\":false,\"process-viz-settings?\":false},\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`timestamp` AS `Time`,\\n  `call_record`.`location` AS `Location`,\\n  `call_record`.`signalStrength` AS `Signal Strength`,\\n  `call_record`.`network` AS `Network`\\nFROM\\n  `call_record`\\nLIMIT\\n  100\"},\"viz-settings\":null,\"database\":2,\"async?\":true,\"cache-ttl\":null}');
/*!40000 ALTER TABLE `query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_action`
--

DROP TABLE IF EXISTS `query_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_action` (
  `action_id` int NOT NULL COMMENT 'The related action',
  `database_id` int NOT NULL,
  `dataset_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`action_id`),
  KEY `fk_query_action_database_id` (`database_id`),
  CONSTRAINT `fk_query_action_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_query_action_ref_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A readwrite query type of action';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_action`
--

LOCK TABLES `query_action` WRITE;
/*!40000 ALTER TABLE `query_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `query_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_cache`
--

DROP TABLE IF EXISTS `query_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_cache` (
  `query_hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. (This is a 256-bit SHA3 hash of the query dict).',
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `results` longblob,
  PRIMARY KEY (`query_hash`),
  KEY `idx_query_cache_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Cached results of queries are stored here when using the DB-based query cache.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_cache`
--

LOCK TABLES `query_cache` WRITE;
/*!40000 ALTER TABLE `query_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `query_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_execution`
--

DROP TABLE IF EXISTS `query_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_execution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hash` binary(32) NOT NULL COMMENT 'The hash of the query dictionary. This is a 256-bit SHA3 hash of the query.',
  `started_at` timestamp(6) NULL DEFAULT NULL,
  `running_time` int NOT NULL COMMENT 'The time, in milliseconds, this query took to complete.',
  `result_rows` int NOT NULL COMMENT 'Number of rows in the query results.',
  `native` bit(1) NOT NULL COMMENT 'Whether the query was a native query, as opposed to an MBQL one (e.g., created with the GUI).',
  `context` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Short string specifying how this query was executed, e.g. in a Dashboard or Pulse.',
  `error` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `executor_id` int DEFAULT NULL COMMENT 'The ID of the User who triggered this query execution, if any.',
  `card_id` int DEFAULT NULL COMMENT 'The ID of the Card (Question) associated with this query execution, if any.',
  `dashboard_id` int DEFAULT NULL COMMENT 'The ID of the Dashboard associated with this query execution, if any.',
  `pulse_id` int DEFAULT NULL COMMENT 'The ID of the Pulse associated with this query execution, if any.',
  `database_id` int DEFAULT NULL COMMENT 'ID of the database this query was ran against.',
  `cache_hit` bit(1) DEFAULT NULL COMMENT 'Cache hit on query execution',
  `action_id` int DEFAULT NULL COMMENT 'The ID of the action associated with this query execution, if any.',
  `is_sandboxed` bit(1) DEFAULT NULL,
  `cache_hash` blob COMMENT 'Hash of normalized query, calculated in middleware.cache',
  PRIMARY KEY (`id`),
  KEY `idx_query_execution_started_at` (`started_at`),
  KEY `idx_query_execution_query_hash_started_at` (`hash`,`started_at`),
  KEY `idx_query_execution_card_id` (`card_id`),
  KEY `idx_query_execution_card_id_started_at` (`card_id`,`started_at`),
  KEY `idx_query_execution_executor_id` (`executor_id`),
  KEY `idx_query_execution_context` (`context`),
  KEY `idx_query_execution_action_id` (`action_id`),
  KEY `idx_query_execution_card_qualified_id` ((concat(_utf8mb4'card_',`card_id`)))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='A log of executed queries, used for calculating historic execution times, auditing, and other purposes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_execution`
--

LOCK TABLES `query_execution` WRITE;
/*!40000 ALTER TABLE `query_execution` DISABLE KEYS */;
INSERT INTO `query_execution` VALUES (1,_binary 'áD£e\Ì˛b’ä\÷s%\Ã\Êa/\‹Qs2`¿øs¡Fï\ÀE','2024-05-16 20:29:43.692794',42,1,_binary '','ad-hoc',NULL,1,NULL,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(2,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-16 20:30:01.850472',75,1,_binary '','question',NULL,1,1,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(3,_binary '‰§ìÅk)\Â^Ö¸\0u\î°\ÿ\Ï\ıõ!\˜%Qqm*','2024-05-16 20:30:17.723046',62,100,_binary '','ad-hoc',NULL,1,NULL,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(4,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-16 20:30:33.561518',41,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(5,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-16 20:30:33.573110',114,100,_binary '','question',NULL,1,2,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(6,_binary '#±\’‰¢£ÇÆ∏\Z}P∫6µÜY,\‹\„é`FçO','2024-05-16 20:31:26.501060',21,10,_binary '','ad-hoc',NULL,1,NULL,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(7,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-16 20:32:00.195467',37,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(8,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-16 20:32:00.238455',90,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(9,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-16 20:32:00.261255',77,10,_binary '','question',NULL,1,3,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(10,_binary '\Ò]/\Œ\"Çæon®£6\ˆ¢Y\≈\»mgc\‚5\‚\ZG¡`4çã','2024-05-16 20:32:26.350761',21,4,_binary '','ad-hoc',NULL,1,NULL,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(11,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-16 20:32:46.184133',36,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(12,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-16 20:32:46.184993',75,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(13,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-16 20:32:46.213575',49,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(14,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-16 20:32:46.245772',57,4,_binary '','question',NULL,1,4,NULL,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(15,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-17 17:52:18.781109',302,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(16,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-17 17:52:18.781100',304,4,_binary '','dashboard',NULL,1,4,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(17,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-17 17:52:18.781140',304,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(18,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-17 17:52:18.781186',331,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(19,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-17 17:53:07.602053',46,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(20,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-17 17:53:07.610919',46,4,_binary '','dashboard',NULL,1,4,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(21,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-17 17:53:07.603614',59,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(22,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-17 17:53:07.602634',123,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(23,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-17 17:56:44.274092',41,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(24,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-17 17:56:44.274403',45,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(25,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-17 17:56:44.312050',58,4,_binary '','dashboard',NULL,1,4,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(26,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-17 17:56:44.275933',110,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(27,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-17 18:27:53.181080',249,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(28,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-17 18:27:53.181080',250,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(29,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-17 18:27:53.181080',251,4,_binary '','dashboard',NULL,1,4,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(30,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-17 18:27:53.181080',328,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(31,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-17 18:32:15.336268',47,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(32,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-17 18:32:15.370263',48,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(33,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-17 18:32:15.341411',109,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(34,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-17 18:32:15.408167',43,4,_binary '','dashboard',NULL,1,4,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(35,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-17 18:56:36.662115',48,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(36,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-17 18:56:36.674904',52,4,_binary '','dashboard',NULL,1,4,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(37,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-17 18:56:36.662177',66,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(38,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-17 18:56:36.670520',124,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(39,_binary 'fµ<îf≥\ˆ\ÚKF9vÄñ\ÁS1í3¿\ Q\Ÿuﬂç∂vZ','2024-05-17 18:57:02.257136',50,10,_binary '','dashboard',NULL,1,3,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(40,_binary '#ai\\\ÚN}\r˙áïåJü?\«\Áû“©ΩeYú¢\‘(•','2024-05-17 18:57:02.275503',30,1,_binary '','dashboard',NULL,1,1,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(41,_binary 'vh\–EPìÑ±E\Ì\›éIz-pØ^2\Ù«±&∑ªHî\\ÿ\Á','2024-05-17 18:57:02.270938',37,4,_binary '','dashboard',NULL,1,4,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL),(42,_binary '\Ú\ÌØ>®\ÿ#\‘CMÅ/C5w\Ê~\ÀvÜÓïÅ£™)f','2024-05-17 18:57:02.257138',90,100,_binary '','dashboard',NULL,1,2,1,NULL,2,_binary '\0',NULL,_binary '\0',NULL);
/*!40000 ALTER TABLE `query_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recent_views`
--

DROP TABLE IF EXISTS `recent_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recent_views` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'The user associated with this view',
  `model` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The name of the model that was viewed',
  `model_id` int NOT NULL COMMENT 'The ID of the model that was viewed',
  `timestamp` timestamp(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_recent_views_user_id` (`user_id`),
  CONSTRAINT `fk_recent_views_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store recently viewed objects for each user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_views`
--

LOCK TABLES `recent_views` WRITE;
/*!40000 ALTER TABLE `recent_views` DISABLE KEYS */;
INSERT INTO `recent_views` VALUES (1,1,'dashboard',1,'2024-05-16 20:29:20.000000'),(2,1,'dashboard',1,'2024-05-16 20:30:01.000000'),(3,1,'card',1,'2024-05-16 20:30:01.000000'),(4,1,'dashboard',1,'2024-05-16 20:30:11.000000'),(5,1,'dashboard',1,'2024-05-16 20:30:33.000000'),(6,1,'card',2,'2024-05-16 20:30:33.000000'),(7,1,'dashboard',1,'2024-05-16 20:31:12.000000'),(8,1,'dashboard',1,'2024-05-16 20:32:00.000000'),(9,1,'card',3,'2024-05-16 20:32:00.000000'),(10,1,'dashboard',1,'2024-05-16 20:32:19.000000'),(11,1,'dashboard',1,'2024-05-16 20:32:46.000000'),(12,1,'card',4,'2024-05-16 20:32:46.000000'),(13,1,'dashboard',1,'2024-05-16 20:32:53.000000'),(14,1,'dashboard',1,'2024-05-17 17:52:18.000000'),(15,1,'dashboard',1,'2024-05-17 17:53:07.000000'),(16,1,'dashboard',1,'2024-05-17 17:56:44.000000'),(17,1,'dashboard',1,'2024-05-17 18:27:52.000000'),(18,1,'dashboard',1,'2024-05-17 18:32:15.000000'),(19,1,'dashboard',1,'2024-05-17 18:56:33.000000'),(20,1,'dashboard',1,'2024-05-17 18:56:36.000000'),(21,1,'dashboard',1,'2024-05-17 18:57:02.000000'),(22,1,'dashboard',1,'2024-05-17 18:57:02.000000');
/*!40000 ALTER TABLE `recent_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_card`
--

DROP TABLE IF EXISTS `report_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `display` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visualization_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creator_id` int NOT NULL,
  `database_id` int NOT NULL,
  `table_id` int DEFAULT NULL,
  `query_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0',
  `collection_id` int DEFAULT NULL COMMENT 'Optional ID of Collection this Card belongs to.',
  `public_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Card.',
  `made_public_by_id` int DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Card.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Card allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cache_ttl` int DEFAULT NULL COMMENT 'The maximum time, in seconds, to return cached results for this Card rather than running a new query.',
  `result_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `collection_position` smallint DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `dataset` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Indicate whether question is a dataset',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'List of parameter associated to a card',
  `parameter_mappings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'List of parameter associated to a card',
  `collection_preview` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Indicating whether the card should be visualized in the collection preview',
  `metabase_version` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Metabase version used to create the card.',
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'question' COMMENT 'The type of card, could be ''question'', ''model'', ''metric''',
  `initially_published_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp when the card was first published in a static embed',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_card_creator_id` (`creator_id`),
  KEY `idx_card_collection_id` (`collection_id`),
  KEY `idx_card_public_uuid` (`public_uuid`),
  KEY `fk_card_made_public_by_id` (`made_public_by_id`),
  KEY `fk_report_card_ref_database_id` (`database_id`),
  KEY `fk_report_card_ref_table_id` (`table_id`),
  CONSTRAINT `fk_card_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_card_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_card_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_ref_database_id` FOREIGN KEY (`database_id`) REFERENCES `metabase_database` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_card_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_card`
--

LOCK TABLES `report_card` WRITE;
/*!40000 ALTER TABLE `report_card` DISABLE KEYS */;
INSERT INTO `report_card` VALUES (1,'2024-05-16 20:29:58.249250','2024-05-17 18:57:02.298644','Total Calls Received',NULL,'scalar','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  COUNT(*)\\nFROM\\n  `call_record`\"}}','{}',1,2,NULL,'native',_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,'[{\"display_name\":\"COUNT(*)\",\"field_ref\":[\"field\",\"COUNT(*)\",{\"base-type\":\"type/BigInteger\"}],\"name\":\"COUNT(*)\",\"base_type\":\"type/BigInteger\",\"effective_type\":\"type/BigInteger\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":1,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":2376.0,\"q1\":2376.0,\"q3\":2376.0,\"max\":2376.0,\"sd\":null,\"avg\":2376.0}}}}]',NULL,_binary '\0','AEArZcMWtgINw5UG8fLaF','[]','[]',_binary '','v0.49.11 (b894f2d)','question',NULL),(2,'2024-05-16 20:30:30.490389','2024-05-17 18:57:02.340893','All Call Records',NULL,'table','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`timestamp` AS `Time`,\\n  `call_record`.`location` AS `Location`,\\n  `call_record`.`signalStrength` AS `Signal Strength`,\\n  `call_record`.`network` AS `Network`\\nFROM\\n  `call_record`\\nLIMIT\\n  100\"}}','{\"table.pivot_column\":\"Network\",\"table.cell_column\":\"Signal Strength\"}',1,2,NULL,'native',_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,'[{\"display_name\":\"Time\",\"field_ref\":[\"field\",\"Time\",{\"base-type\":\"type/DateTimeWithLocalTZ\"}],\"name\":\"Time\",\"base_type\":\"type/DateTimeWithLocalTZ\",\"effective_type\":\"type/DateTimeWithLocalTZ\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":100,\"nil%\":0.0},\"type\":{\"type/DateTime\":{\"earliest\":\"2024-05-17T18:17:26Z\",\"latest\":\"2024-05-17T18:19:05Z\"}}}},{\"display_name\":\"Location\",\"field_ref\":[\"field\",\"Location\",{\"base-type\":\"type/Text\"}],\"name\":\"Location\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":20,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":11.49}}}},{\"display_name\":\"Signal Strength\",\"field_ref\":[\"field\",\"Signal Strength\",{\"base-type\":\"type/Text\"}],\"name\":\"Signal Strength\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":100,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":17.89}}}},{\"display_name\":\"Network\",\"field_ref\":[\"field\",\"Network\",{\"base-type\":\"type/Text\"}],\"name\":\"Network\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":4,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":2.3}}}}]',NULL,_binary '\0','x_lq2Yjtj0YavQMP-afVc','[]','[]',_binary '','v0.49.11 (b894f2d)','question',NULL),(3,'2024-05-16 20:31:57.666625','2024-05-17 18:57:02.298490','Calls by Location',NULL,'bar','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`location` AS `location`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`location`\\nORDER BY\\n  `count` DESC,\\n  `call_record`.`location` ASC\\nLIMIT\\n  10\"}}','{\"graph.x_axis.labels_enabled\":false,\"graph.dimensions\":[\"location\"],\"graph.metrics\":[\"count\"]}',1,2,NULL,'native',_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,'[{\"display_name\":\"location\",\"field_ref\":[\"field\",\"location\",{\"base-type\":\"type/Text\"}],\"name\":\"location\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":10,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":12.5}}}},{\"display_name\":\"count\",\"field_ref\":[\"field\",\"count\",{\"base-type\":\"type/BigInteger\"}],\"name\":\"count\",\"base_type\":\"type/BigInteger\",\"effective_type\":\"type/BigInteger\",\"semantic_type\":\"type/Quantity\",\"fingerprint\":{\"global\":{\"distinct-count\":9,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":120.0,\"q1\":125.0,\"q3\":134.0,\"max\":136.0,\"sd\":5.342700108039421,\"avg\":129.1}}}}]',NULL,_binary '\0','hXl4kc4cdNXUZasMeXIat','[]','[]',_binary '','v0.49.11 (b894f2d)','question',NULL),(4,'2024-05-16 20:32:43.623063','2024-05-17 18:57:02.298561','Calls By Network Type',NULL,'pie','{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`network` AS `network`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`network`\\nORDER BY\\n  `call_record`.`network` ASC\"}}','{}',1,2,NULL,'native',_binary '\0',NULL,NULL,NULL,_binary '\0',NULL,NULL,'[{\"display_name\":\"network\",\"field_ref\":[\"field\",\"network\",{\"base-type\":\"type/Text\"}],\"name\":\"network\",\"base_type\":\"type/Text\",\"effective_type\":\"type/Text\",\"semantic_type\":null,\"fingerprint\":{\"global\":{\"distinct-count\":4,\"nil%\":0.0},\"type\":{\"type/Text\":{\"percent-json\":0.0,\"percent-url\":0.0,\"percent-email\":0.0,\"percent-state\":0.0,\"average-length\":2.25}}}},{\"display_name\":\"count\",\"field_ref\":[\"field\",\"count\",{\"base-type\":\"type/BigInteger\"}],\"name\":\"count\",\"base_type\":\"type/BigInteger\",\"effective_type\":\"type/BigInteger\",\"semantic_type\":\"type/Quantity\",\"fingerprint\":{\"global\":{\"distinct-count\":4,\"nil%\":0.0},\"type\":{\"type/Number\":{\"min\":564.0,\"q1\":575.5,\"q3\":612.5,\"max\":622.0,\"sd\":24.589970855343985,\"avg\":594.0}}}}]',NULL,_binary '\0','fVrG9YaCkxqOCS5f5piZR','[]','[]',_binary '','v0.49.11 (b894f2d)','question',NULL);
/*!40000 ALTER TABLE `report_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_cardfavorite`
--

DROP TABLE IF EXISTS `report_cardfavorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_cardfavorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `card_id` int NOT NULL,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_cardfavorite_card_id_owner_id` (`card_id`,`owner_id`),
  KEY `idx_cardfavorite_card_id` (`card_id`),
  KEY `idx_cardfavorite_owner_id` (`owner_id`),
  CONSTRAINT `fk_cardfavorite_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_cardfavorite_ref_user_id` FOREIGN KEY (`owner_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_cardfavorite`
--

LOCK TABLES `report_cardfavorite` WRITE;
/*!40000 ALTER TABLE `report_cardfavorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_cardfavorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_dashboard`
--

DROP TABLE IF EXISTS `report_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_dashboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `creator_id` int NOT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `points_of_interest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caveats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `public_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique UUID used to in publically-accessible links to this Dashboard.',
  `made_public_by_id` int DEFAULT NULL COMMENT 'The ID of the User who first publically shared this Dashboard.',
  `enable_embedding` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard allowed to be embedded in different websites (using a signed JWT)?',
  `embedding_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Is this Dashboard archived (effectively treated as deleted?)',
  `position` int DEFAULT NULL COMMENT 'The position this Dashboard should appear in the Dashboards list, lower-numbered positions appearing before higher numbered ones.',
  `collection_id` int DEFAULT NULL COMMENT 'Optional ID of Collection this Dashboard belongs to.',
  `collection_position` smallint DEFAULT NULL COMMENT 'Optional pinned position for this item in its Collection. NULL means item is not pinned.',
  `cache_ttl` int DEFAULT NULL COMMENT 'Granular cache TTL for specific dashboard.',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `auto_apply_filters` bit(1) NOT NULL DEFAULT b'1',
  `width` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `initially_published_at` timestamp(6) NULL DEFAULT NULL COMMENT 'The timestamp when the dashboard was first published in a static embed',
  PRIMARY KEY (`id`),
  UNIQUE KEY `public_uuid` (`public_uuid`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_dashboard_creator_id` (`creator_id`),
  KEY `idx_report_dashboard_show_in_getting_started` (`show_in_getting_started`),
  KEY `idx_dashboard_public_uuid` (`public_uuid`),
  KEY `idx_dashboard_collection_id` (`collection_id`),
  KEY `fk_dashboard_made_public_by_id` (`made_public_by_id`),
  CONSTRAINT `fk_dashboard_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_dashboard_made_public_by_id` FOREIGN KEY (`made_public_by_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboard_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_dashboard`
--

LOCK TABLES `report_dashboard` WRITE;
/*!40000 ALTER TABLE `report_dashboard` DISABLE KEYS */;
INSERT INTO `report_dashboard` VALUES (1,'2024-05-16 20:29:19.746663','2024-05-16 20:32:53.277682','Sensor Data',NULL,1,'[]',NULL,NULL,_binary '\0',NULL,NULL,_binary '\0',NULL,_binary '\0',NULL,NULL,NULL,NULL,'uMQ5ZcGsMBk0_u7kg0dFN',_binary '','fixed',NULL);
/*!40000 ALTER TABLE `report_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_dashboardcard`
--

DROP TABLE IF EXISTS `report_dashboardcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_dashboardcard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `size_x` int DEFAULT NULL,
  `size_y` int DEFAULT NULL,
  `row` int NOT NULL,
  `col` int NOT NULL,
  `card_id` int DEFAULT NULL,
  `dashboard_id` int NOT NULL,
  `parameter_mappings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visualization_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  `action_id` int DEFAULT NULL COMMENT 'The related action',
  `dashboard_tab_id` int DEFAULT NULL COMMENT 'The referenced tab id that dashcard is on, it''s nullable for dashboard with no tab',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_dashboardcard_card_id` (`card_id`),
  KEY `idx_dashboardcard_dashboard_id` (`dashboard_id`),
  KEY `fk_report_dashboardcard_ref_action_id` (`action_id`),
  KEY `fk_report_dashboardcard_ref_dashboard_tab_id` (`dashboard_tab_id`),
  CONSTRAINT `fk_dashboardcard_ref_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dashboardcard_ref_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `report_dashboard` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_dashboardcard_ref_action_id` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_report_dashboardcard_ref_dashboard_tab_id` FOREIGN KEY (`dashboard_tab_id`) REFERENCES `dashboard_tab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_dashboardcard`
--

LOCK TABLES `report_dashboardcard` WRITE;
/*!40000 ALTER TABLE `report_dashboardcard` DISABLE KEYS */;
INSERT INTO `report_dashboardcard` VALUES (1,'2024-05-16 20:30:11.490530','2024-05-16 20:31:12.096294',12,8,0,0,1,1,'[]','{}','nTMhsZQBnrvcSxCDtB3ts',NULL,NULL),(2,'2024-05-16 20:31:12.114359','2024-05-16 20:31:12.114359',12,8,0,12,2,1,'[]','{}','0uXuq16YzSk2GydU_kAAM',NULL,NULL),(3,'2024-05-16 20:32:19.295579','2024-05-16 20:32:19.295579',12,8,8,0,3,1,'[]','{}','Ofzw5_-aREvw77xn6MVQl',NULL,NULL),(4,'2024-05-16 20:32:53.312722','2024-05-16 20:32:53.312722',12,8,8,12,4,1,'[]','{}','iymOxyFRT_CZ17jQzRqvw',NULL,NULL);
/*!40000 ALTER TABLE `report_dashboardcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revision`
--

DROP TABLE IF EXISTS `revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int NOT NULL,
  `user_id` int NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `object` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_reversion` bit(1) NOT NULL DEFAULT b'0',
  `is_creation` bit(1) NOT NULL DEFAULT b'0',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `most_recent` bit(1) NOT NULL DEFAULT b'0',
  `metabase_version` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Metabase version used to create the revision.',
  PRIMARY KEY (`id`),
  KEY `idx_revision_model_model_id` (`model`,`model_id`),
  KEY `fk_revision_ref_user_id` (`user_id`),
  KEY `idx_revision_most_recent` (`most_recent`),
  CONSTRAINT `fk_revision_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revision`
--

LOCK TABLES `revision` WRITE;
/*!40000 ALTER TABLE `revision` DISABLE KEYS */;
INSERT INTO `revision` VALUES (1,'Dashboard',1,1,'2024-05-16 20:29:19.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Sensor Data\",\"width\":\"fixed\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[],\"parameters\":[],\"auto_apply_filters\":true}',_binary '\0',_binary '',NULL,_binary '\0','v0.49.11 (b894f2d)'),(2,'Card',1,1,'2024-05-16 20:29:58.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Total Calls Received\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  COUNT(*)\\nFROM\\n  `call_record`\"}},\"parameter_mappings\":[],\"display\":\"scalar\",\"collection_preview\":true,\"visualization_settings\":{},\"parameters\":[]}',_binary '\0',_binary '',NULL,_binary '','v0.49.11 (b894f2d)'),(3,'Dashboard',1,1,'2024-05-16 20:30:11.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Sensor Data\",\"width\":\"fixed\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":6,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":0,\"id\":1,\"parameter_mappings\":[],\"card_id\":1,\"visualization_settings\":{},\"size_y\":3,\"dashboard_id\":1,\"row\":0}],\"parameters\":[],\"auto_apply_filters\":true}',_binary '\0',_binary '\0',NULL,_binary '\0','v0.49.11 (b894f2d)'),(4,'Card',2,1,'2024-05-16 20:30:30.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"All Call Records\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`timestamp` AS `Time`,\\n  `call_record`.`location` AS `Location`,\\n  `call_record`.`signalStrength` AS `Signal Strength`,\\n  `call_record`.`network` AS `Network`\\nFROM\\n  `call_record`\\nLIMIT\\n  100\"}},\"parameter_mappings\":[],\"display\":\"table\",\"collection_preview\":true,\"visualization_settings\":{\"table.pivot_column\":\"Network\",\"table.cell_column\":\"Signal Strength\"},\"parameters\":[]}',_binary '\0',_binary '',NULL,_binary '','v0.49.11 (b894f2d)'),(5,'Dashboard',1,1,'2024-05-16 20:31:12.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Sensor Data\",\"width\":\"fixed\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":0,\"id\":1,\"parameter_mappings\":[],\"card_id\":1,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":0},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":12,\"id\":2,\"parameter_mappings\":[],\"card_id\":2,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":0}],\"parameters\":[],\"auto_apply_filters\":true}',_binary '\0',_binary '\0',NULL,_binary '\0','v0.49.11 (b894f2d)'),(6,'Card',3,1,'2024-05-16 20:31:57.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Calls by Location\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`location` AS `location`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`location`\\nORDER BY\\n  `count` DESC,\\n  `call_record`.`location` ASC\\nLIMIT\\n  10\"}},\"parameter_mappings\":[],\"display\":\"bar\",\"collection_preview\":true,\"visualization_settings\":{\"graph.x_axis.labels_enabled\":false,\"graph.dimensions\":[\"location\"],\"graph.metrics\":[\"count\"]},\"parameters\":[]}',_binary '\0',_binary '',NULL,_binary '','v0.49.11 (b894f2d)'),(7,'Dashboard',1,1,'2024-05-16 20:32:19.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Sensor Data\",\"width\":\"fixed\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":0,\"id\":1,\"parameter_mappings\":[],\"card_id\":1,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":0},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":12,\"id\":2,\"parameter_mappings\":[],\"card_id\":2,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":0},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":0,\"id\":3,\"parameter_mappings\":[],\"card_id\":3,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":8}],\"parameters\":[],\"auto_apply_filters\":true}',_binary '\0',_binary '\0',NULL,_binary '\0','v0.49.11 (b894f2d)'),(8,'Card',4,1,'2024-05-16 20:32:43.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"table_id\":null,\"database_id\":2,\"enable_embedding\":false,\"collection_id\":null,\"query_type\":\"native\",\"name\":\"Calls By Network Type\",\"type\":\"question\",\"embedding_params\":null,\"cache_ttl\":null,\"dataset_query\":{\"database\":2,\"type\":\"native\",\"native\":{\"template-tags\":{},\"query\":\"SELECT\\n  `call_record`.`network` AS `network`,\\n  COUNT(*) AS `count`\\nFROM\\n  `call_record`\\nGROUP BY\\n  `call_record`.`network`\\nORDER BY\\n  `call_record`.`network` ASC\"}},\"parameter_mappings\":[],\"display\":\"pie\",\"collection_preview\":true,\"visualization_settings\":{},\"parameters\":[]}',_binary '\0',_binary '',NULL,_binary '','v0.49.11 (b894f2d)'),(9,'Dashboard',1,1,'2024-05-16 20:32:53.000000','{\"description\":null,\"archived\":false,\"collection_position\":null,\"tabs\":[],\"enable_embedding\":false,\"collection_id\":null,\"name\":\"Sensor Data\",\"width\":\"fixed\",\"embedding_params\":null,\"cache_ttl\":null,\"cards\":[{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":0,\"id\":1,\"parameter_mappings\":[],\"card_id\":1,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":0},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":12,\"id\":2,\"parameter_mappings\":[],\"card_id\":2,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":0},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":0,\"id\":3,\"parameter_mappings\":[],\"card_id\":3,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":8},{\"size_x\":12,\"dashboard_tab_id\":null,\"series\":[],\"action_id\":null,\"col\":12,\"id\":4,\"parameter_mappings\":[],\"card_id\":4,\"visualization_settings\":{},\"size_y\":8,\"dashboard_id\":1,\"row\":8}],\"parameters\":[],\"auto_apply_filters\":true}',_binary '\0',_binary '\0',NULL,_binary '','v0.49.11 (b894f2d)');
/*!40000 ALTER TABLE `revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sandboxes`
--

DROP TABLE IF EXISTS `sandboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sandboxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL COMMENT 'ID of the Permissions Group this policy affects.',
  `table_id` int NOT NULL COMMENT 'ID of the Table that should get automatically replaced as query source for the Permissions Group.',
  `card_id` int DEFAULT NULL,
  `attribute_remappings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permission_id` int DEFAULT NULL COMMENT 'The ID of the corresponding permissions path for this sandbox',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_gtap_table_id_group_id` (`table_id`,`group_id`),
  KEY `fk_gtap_group_id` (`group_id`),
  KEY `idx_gtap_table_id_group_id` (`table_id`,`group_id`),
  KEY `fk_gtap_card_id` (`card_id`),
  KEY `fk_sandboxes_ref_permissions` (`permission_id`),
  CONSTRAINT `fk_gtap_card_id` FOREIGN KEY (`card_id`) REFERENCES `report_card` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gtap_group_id` FOREIGN KEY (`group_id`) REFERENCES `permissions_group` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gtap_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sandboxes_ref_permissions` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Records that a given Card (Question) should automatically replace a given Table as query source for a given a Perms Group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sandboxes`
--

LOCK TABLES `sandboxes` WRITE;
/*!40000 ALTER TABLE `sandboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sandboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secret`
--

DROP TABLE IF EXISTS `secret`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secret` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'Part of composite primary key for secret; this is the uniquely generted ID column',
  `version` int NOT NULL DEFAULT '1' COMMENT 'Part of composite primary key for secret; this is the version column',
  `creator_id` int DEFAULT NULL COMMENT 'User ID who created this secret instance',
  `created_at` timestamp(6) NOT NULL COMMENT 'Timestamp for when this secret instance was created',
  `updated_at` timestamp(6) NULL DEFAULT NULL COMMENT 'Timestamp for when this secret record was updated. Only relevant when non-value field changes since a value change will result in a new version being inserted.',
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The name of this secret record.',
  `kind` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The kind of secret this record represents; the value is interpreted as a Clojure keyword with a hierarchy. Ex: ''bytes'' means generic binary data, ''jks-keystore'' extends ''bytes'' but has a specific meaning.',
  `source` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The source of secret record, which controls how Metabase interprets the value (ex: ''file-path'' means the ''simple_value'' is not the real value, but a pointer to a file that contains the value).',
  `value` longblob,
  PRIMARY KEY (`id`,`version`),
  KEY `fk_secret_ref_user_id` (`creator_id`),
  CONSTRAINT `fk_secret_ref_user_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Storage for managed secrets (passwords, binary data, etc.)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secret`
--

LOCK TABLES `secret` WRITE;
/*!40000 ALTER TABLE `secret` DISABLE KEYS */;
/*!40000 ALTER TABLE `secret` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `segment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `creator_id` int NOT NULL,
  `name` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `archived` bit(1) DEFAULT b'0',
  `definition` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp(6) NOT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `points_of_interest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `caveats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `show_in_getting_started` bit(1) NOT NULL DEFAULT b'0',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `idx_segment_creator_id` (`creator_id`),
  KEY `idx_segment_table_id` (`table_id`),
  KEY `idx_segment_show_in_getting_started` (`show_in_getting_started`),
  CONSTRAINT `fk_segment_ref_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_segment_ref_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segment`
--

LOCK TABLES `segment` WRITE;
/*!40000 ALTER TABLE `segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setting` (
  `key` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES ('admin-email','someone@someone.com'),('analytics-uuid','a2ef22ac-1379-4213-acf4-4b09dcdbe059'),('anon-tracking-enabled','false'),('custom-homepage','true'),('custom-homepage-dashboard','1'),('instance-creation','2024-05-16T19:40:44.792691Z'),('redirect-all-requests-to-https','false'),('settings-last-updated','2024-05-17 18:56:36'),('setup-token','65ad1a01-e590-41f6-8058-a8cb004d62d0'),('site-locale','en'),('site-name','RH'),('site-url','http://metabase-openshift-operators.apps.cluster-56pxv.dynamic.redhatworkshops.io'),('site-uuid','92dcf5ff-fe1a-4894-9855-e57e3ceeb101'),('startup-time-millis','3038');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_privileges`
--

DROP TABLE IF EXISTS `table_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_privileges` (
  `table_id` int NOT NULL COMMENT 'Table ID',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Role name. NULL indicates the privileges are the current user''s',
  `select` bit(1) NOT NULL DEFAULT b'0',
  `update` bit(1) NOT NULL DEFAULT b'0',
  `insert` bit(1) NOT NULL DEFAULT b'0',
  `delete` bit(1) NOT NULL DEFAULT b'0',
  KEY `fk_table_privileges_table_id` (`table_id`),
  KEY `idx_table_privileges_role` (`role`),
  CONSTRAINT `fk_table_privileges_table_id` FOREIGN KEY (`table_id`) REFERENCES `metabase_table` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table for user and role privileges by table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_privileges`
--

LOCK TABLES `table_privileges` WRITE;
/*!40000 ALTER TABLE `table_privileges` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_history`
--

DROP TABLE IF EXISTS `task_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the task',
  `db_id` int DEFAULT NULL,
  `started_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `ended_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `duration` int NOT NULL,
  `task_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idx_task_history_end_time` (`ended_at`),
  KEY `idx_task_history_db_id` (`db_id`),
  KEY `idx_task_history_started_at` (`started_at`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timing and metadata info about background/quartz processes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_history`
--

LOCK TABLES `task_history` WRITE;
/*!40000 ALTER TABLE `task_history` DISABLE KEYS */;
INSERT INTO `task_history` VALUES (1,'sync',1,'2024-05-16 19:34:30.332884','2024-05-16 19:34:33.353221',3020,NULL),(2,'sync-dbms-version',1,'2024-05-16 19:34:30.333386','2024-05-16 19:34:30.393565',60,'{\"flavor\":\"H2\",\"version\":\"2.1.214 (2022-06-13)\",\"semantic-version\":[2,1]}'),(3,'sync-timezone',1,'2024-05-16 19:34:30.393666','2024-05-16 19:34:30.425325',31,'{\"timezone-id\":\"GMT\"}'),(4,'sync-tables',1,'2024-05-16 19:34:30.425364','2024-05-16 19:34:30.688604',263,'{\"updated-tables\":8,\"total-tables\":0}'),(5,'sync-fields',1,'2024-05-16 19:34:30.688636','2024-05-16 19:34:31.245108',556,'{\"total-fields\":71,\"updated-fields\":71}'),(6,'sync-fks',1,'2024-05-16 19:34:31.245133','2024-05-16 19:34:31.358870',113,'{\"total-fks\":6,\"updated-fks\":6,\"total-failed\":0}'),(7,'sync-indexes',1,'2024-05-16 19:34:31.358944','2024-05-16 19:34:31.785535',426,'{\"total-indexes\":14,\"added-indexes\":14,\"removed-indexes\":0}'),(8,'sync-metabase-metadata',1,'2024-05-16 19:34:31.785554','2024-05-16 19:34:33.352541',1566,NULL),(9,'sync-table-privileges',1,'2024-05-16 19:34:33.352563','2024-05-16 19:34:33.353207',0,NULL),(10,'analyze',1,'2024-05-16 19:34:33.504653','2024-05-16 19:34:39.179277',5674,NULL),(11,'fingerprint-fields',1,'2024-05-16 19:34:33.504694','2024-05-16 19:34:38.347574',4842,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":63,\"fingerprints-attempted\":63}'),(12,'classify-fields',1,'2024-05-16 19:34:38.347607','2024-05-16 19:34:39.075960',728,'{\"fields-classified\":63,\"fields-failed\":0}'),(13,'classify-tables',1,'2024-05-16 19:34:39.075979','2024-05-16 19:34:39.179259',103,'{\"total-tables\":8,\"tables-classified\":8}'),(14,'field values scanning',1,'2024-05-16 19:34:39.263485','2024-05-16 19:34:41.247090',1983,NULL),(15,'delete-expired-advanced-field-values',1,'2024-05-16 19:34:39.263501','2024-05-16 19:34:39.558145',294,'{\"deleted\":0}'),(16,'update-field-values',1,'2024-05-16 19:34:39.558172','2024-05-16 19:34:41.247071',1688,'{\"errors\":0,\"created\":24,\"updated\":0,\"deleted\":1}'),(17,'sync',2,'2024-05-16 19:55:25.691450','2024-05-16 19:55:25.889567',198,NULL),(18,'sync-dbms-version',2,'2024-05-16 19:55:25.691469','2024-05-16 19:55:25.725403',33,'{\"flavor\":\"MySQL\",\"version\":\"8.0.36\",\"semantic-version\":[8,0]}'),(19,'sync-timezone',2,'2024-05-16 19:55:25.725433','2024-05-16 19:55:25.759218',33,'{\"timezone-id\":\"UTC\"}'),(20,'sync-tables',2,'2024-05-16 19:55:25.759245','2024-05-16 19:55:25.799937',40,'{\"updated-tables\":1,\"total-tables\":0}'),(21,'sync-fields',2,'2024-05-16 19:55:25.799962','2024-05-16 19:55:25.845585',45,'{\"total-fields\":5,\"updated-fields\":5}'),(22,'sync-fks',2,'2024-05-16 19:55:25.845603','2024-05-16 19:55:25.863401',17,'{\"total-fks\":0,\"updated-fks\":0,\"total-failed\":0}'),(23,'sync-indexes',2,'2024-05-16 19:55:25.863423','2024-05-16 19:55:25.888633',25,'{\"total-indexes\":1,\"added-indexes\":1,\"removed-indexes\":0}'),(24,'sync-metabase-metadata',2,'2024-05-16 19:55:25.888657','2024-05-16 19:55:25.889299',0,NULL),(25,'sync-table-privileges',2,'2024-05-16 19:55:25.889312','2024-05-16 19:55:25.889557',0,NULL),(26,'analyze',2,'2024-05-16 19:55:25.991563','2024-05-16 19:55:26.487596',496,NULL),(27,'fingerprint-fields',2,'2024-05-16 19:55:25.991579','2024-05-16 19:55:26.451652',460,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":4,\"fingerprints-attempted\":4}'),(28,'classify-fields',2,'2024-05-16 19:55:26.451677','2024-05-16 19:55:26.474923',23,'{\"fields-classified\":4,\"fields-failed\":0}'),(29,'classify-tables',2,'2024-05-16 19:55:26.474942','2024-05-16 19:55:26.487580',12,'{\"total-tables\":1,\"tables-classified\":1}'),(30,'field values scanning',2,'2024-05-16 19:55:26.533855','2024-05-16 19:55:26.632130',98,NULL),(31,'delete-expired-advanced-field-values',2,'2024-05-16 19:55:26.533868','2024-05-16 19:55:26.556336',22,'{\"deleted\":0}'),(32,'update-field-values',2,'2024-05-16 19:55:26.556358','2024-05-16 19:55:26.632115',75,'{\"errors\":0,\"created\":2,\"updated\":0,\"deleted\":0}'),(33,'send-pulses',NULL,'2024-05-16 20:00:00.033000','2024-05-16 20:00:00.049000',16,NULL),(34,'sync',2,'2024-05-16 20:13:00.148108','2024-05-16 20:13:00.219817',71,NULL),(35,'sync-dbms-version',2,'2024-05-16 20:13:00.148126','2024-05-16 20:13:00.150417',2,'{\"flavor\":\"MySQL\",\"version\":\"8.0.36\",\"semantic-version\":[8,0]}'),(36,'sync-timezone',2,'2024-05-16 20:13:00.150434','2024-05-16 20:13:00.152230',1,'{\"timezone-id\":\"UTC\"}'),(37,'sync-tables',2,'2024-05-16 20:13:00.152242','2024-05-16 20:13:00.157054',4,'{\"updated-tables\":0,\"total-tables\":1}'),(38,'sync-fields',2,'2024-05-16 20:13:00.157072','2024-05-16 20:13:00.187547',30,'{\"total-fields\":5,\"updated-fields\":0}'),(39,'sync-fks',2,'2024-05-16 20:13:00.187567','2024-05-16 20:13:00.208662',21,'{\"total-fks\":0,\"updated-fks\":0,\"total-failed\":0}'),(40,'sync-indexes',2,'2024-05-16 20:13:00.208687','2024-05-16 20:13:00.219222',10,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}'),(41,'sync-metabase-metadata',2,'2024-05-16 20:13:00.219240','2024-05-16 20:13:00.219514',0,NULL),(42,'sync-table-privileges',2,'2024-05-16 20:13:00.219523','2024-05-16 20:13:00.219809',0,NULL),(43,'analyze',2,'2024-05-16 20:13:00.324391','2024-05-16 20:13:00.337557',13,NULL),(44,'fingerprint-fields',2,'2024-05-16 20:13:00.324413','2024-05-16 20:13:00.332330',7,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}'),(45,'classify-fields',2,'2024-05-16 20:13:00.332353','2024-05-16 20:13:00.334538',2,'{\"fields-classified\":0,\"fields-failed\":0}'),(46,'classify-tables',2,'2024-05-16 20:13:00.334553','2024-05-16 20:13:00.337542',2,'{\"total-tables\":1,\"tables-classified\":0}'),(47,'send-pulses',NULL,'2024-05-17 18:00:00.023000','2024-05-17 18:00:00.049000',26,NULL),(48,'sync',2,'2024-05-17 18:17:55.409601','2024-05-17 18:17:55.628215',218,NULL),(49,'sync-dbms-version',2,'2024-05-17 18:17:55.409960','2024-05-17 18:17:55.415072',5,'{\"flavor\":\"MySQL\",\"version\":\"8.0.36\",\"semantic-version\":[8,0]}'),(50,'sync-timezone',2,'2024-05-17 18:17:55.415140','2024-05-17 18:17:55.421563',6,'{\"timezone-id\":\"UTC\"}'),(51,'sync-tables',2,'2024-05-17 18:17:55.421598','2024-05-17 18:17:55.450944',29,'{\"updated-tables\":0,\"total-tables\":1}'),(52,'sync-fields',2,'2024-05-17 18:17:55.450973','2024-05-17 18:17:55.545284',94,'{\"total-fields\":5,\"updated-fields\":0}'),(53,'sync-fks',2,'2024-05-17 18:17:55.545328','2024-05-17 18:17:55.587532',42,'{\"total-fks\":0,\"updated-fks\":0,\"total-failed\":0}'),(54,'sync-indexes',2,'2024-05-17 18:17:55.587561','2024-05-17 18:17:55.625993',38,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}'),(55,'sync-metabase-metadata',2,'2024-05-17 18:17:55.626018','2024-05-17 18:17:55.627398',1,NULL),(56,'sync-table-privileges',2,'2024-05-17 18:17:55.627419','2024-05-17 18:17:55.628186',0,NULL),(57,'analyze',2,'2024-05-17 18:17:55.748146','2024-05-17 18:17:55.790422',42,NULL),(58,'fingerprint-fields',2,'2024-05-17 18:17:55.748165','2024-05-17 18:17:55.773936',25,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}'),(59,'classify-fields',2,'2024-05-17 18:17:55.773960','2024-05-17 18:17:55.783858',9,'{\"fields-classified\":0,\"fields-failed\":0}'),(60,'classify-tables',2,'2024-05-17 18:17:55.783884','2024-05-17 18:17:55.790398',6,'{\"total-tables\":1,\"tables-classified\":0}'),(61,'send-pulses',NULL,'2024-05-17 19:00:00.023000','2024-05-17 19:00:00.044000',21,NULL),(62,'sync',2,'2024-05-17 19:13:00.059330','2024-05-17 19:13:00.128664',69,NULL),(63,'sync-dbms-version',2,'2024-05-17 19:13:00.059369','2024-05-17 19:13:00.061841',2,'{\"flavor\":\"MySQL\",\"version\":\"8.0.36\",\"semantic-version\":[8,0]}'),(64,'sync-timezone',2,'2024-05-17 19:13:00.061859','2024-05-17 19:13:00.063936',2,'{\"timezone-id\":\"UTC\"}'),(65,'sync-tables',2,'2024-05-17 19:13:00.063948','2024-05-17 19:13:00.069058',5,'{\"updated-tables\":0,\"total-tables\":1}'),(66,'sync-fields',2,'2024-05-17 19:13:00.069085','2024-05-17 19:13:00.098111',29,'{\"total-fields\":5,\"updated-fields\":0}'),(67,'sync-fks',2,'2024-05-17 19:13:00.098132','2024-05-17 19:13:00.116492',18,'{\"total-fks\":0,\"updated-fks\":0,\"total-failed\":0}'),(68,'sync-indexes',2,'2024-05-17 19:13:00.116510','2024-05-17 19:13:00.128052',11,'{\"total-indexes\":0,\"added-indexes\":0,\"removed-indexes\":0}'),(69,'sync-metabase-metadata',2,'2024-05-17 19:13:00.128067','2024-05-17 19:13:00.128402',0,NULL),(70,'sync-table-privileges',2,'2024-05-17 19:13:00.128411','2024-05-17 19:13:00.128656',0,NULL),(71,'analyze',2,'2024-05-17 19:13:00.213954','2024-05-17 19:13:00.225514',11,NULL),(72,'fingerprint-fields',2,'2024-05-17 19:13:00.213964','2024-05-17 19:13:00.219469',5,'{\"no-data-fingerprints\":0,\"failed-fingerprints\":0,\"updated-fingerprints\":0,\"fingerprints-attempted\":0}'),(73,'classify-fields',2,'2024-05-17 19:13:00.219487','2024-05-17 19:13:00.221746',2,'{\"fields-classified\":0,\"fields-failed\":0}'),(74,'classify-tables',2,'2024-05-17 19:13:00.221763','2024-05-17 19:13:00.225501',3,'{\"total-tables\":1,\"tables-classified\":0}');
/*!40000 ALTER TABLE `task_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline`
--

DROP TABLE IF EXISTS `timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the timeline',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional description of the timeline',
  `icon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_id` int DEFAULT NULL COMMENT 'ID of the collection containing the timeline',
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether or not the timeline has been archived',
  `creator_id` int NOT NULL COMMENT 'ID of the user who created the timeline',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the timeline was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the timeline was updated',
  `default` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Boolean value indicating if the timeline is the default one for the containing Collection',
  `entity_id` char(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Random NanoID tag for unique identity.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_id` (`entity_id`),
  KEY `fk_timeline_creator_id` (`creator_id`),
  KEY `idx_timeline_collection_id` (`collection_id`),
  CONSTRAINT `fk_timeline_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_timeline_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Timeline table to organize events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline`
--

LOCK TABLES `timeline` WRITE;
/*!40000 ALTER TABLE `timeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline_event`
--

DROP TABLE IF EXISTS `timeline_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline_event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timeline_id` int NOT NULL COMMENT 'ID of the timeline containing the event',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of the event',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Optional markdown description of the event',
  `timestamp` timestamp(6) NOT NULL COMMENT 'When the event happened',
  `time_matters` bit(1) NOT NULL COMMENT 'Indicate whether the time component matters or if the timestamp should just serve to indicate the day of the event without any time associated to it.',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Timezone to display the underlying UTC timestamp in for the client',
  `icon` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived` bit(1) NOT NULL DEFAULT b'0' COMMENT 'Whether or not the event has been archived',
  `creator_id` int NOT NULL COMMENT 'ID of the user who created the event',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the event was created',
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT 'The timestamp of when the event was modified',
  PRIMARY KEY (`id`),
  KEY `fk_event_creator_id` (`creator_id`),
  KEY `idx_timeline_event_timeline_id` (`timeline_id`),
  KEY `idx_timeline_event_timeline_id_timestamp` (`timeline_id`,`timestamp`),
  CONSTRAINT `fk_event_creator_id` FOREIGN KEY (`creator_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_events_timeline_id` FOREIGN KEY (`timeline_id`) REFERENCES `timeline` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Events table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline_event`
--

LOCK TABLES `timeline_event` WRITE;
/*!40000 ALTER TABLE `timeline_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `timeline_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_alerts`
--

DROP TABLE IF EXISTS `v_alerts`;
/*!50001 DROP VIEW IF EXISTS `v_alerts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_alerts` AS SELECT 
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `creator_id`,
 1 AS `card_id`,
 1 AS `card_qualified_id`,
 1 AS `alert_condition`,
 1 AS `schedule_type`,
 1 AS `schedule_day`,
 1 AS `schedule_hour`,
 1 AS `archived`,
 1 AS `recipient_type`,
 1 AS `recipients`,
 1 AS `recipient_external`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_audit_log`
--

DROP TABLE IF EXISTS `v_audit_log`;
/*!50001 DROP VIEW IF EXISTS `v_audit_log`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_audit_log` AS SELECT 
 1 AS `id`,
 1 AS `topic`,
 1 AS `timestamp`,
 1 AS `end_timestamp`,
 1 AS `user_id`,
 1 AS `entity_type`,
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_content`
--

DROP TABLE IF EXISTS `v_content`;
/*!50001 DROP VIEW IF EXISTS `v_content`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_content` AS SELECT 
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `entity_type`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `creator_id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `collection_id`,
 1 AS `made_public_by_user`,
 1 AS `is_embedding_enabled`,
 1 AS `archived`,
 1 AS `action_type`,
 1 AS `action_model_id`,
 1 AS `collection_is_official`,
 1 AS `collection_is_personal`,
 1 AS `question_viz_type`,
 1 AS `question_database_id`,
 1 AS `question_is_native`,
 1 AS `event_timestamp`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_dashboardcard`
--

DROP TABLE IF EXISTS `v_dashboardcard`;
/*!50001 DROP VIEW IF EXISTS `v_dashboardcard`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_dashboardcard` AS SELECT 
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `dashboard_qualified_id`,
 1 AS `dashboardtab_id`,
 1 AS `card_qualified_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `size_x`,
 1 AS `size_y`,
 1 AS `visualization_settings`,
 1 AS `parameter_mappings`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_databases`
--

DROP TABLE IF EXISTS `v_databases`;
/*!50001 DROP VIEW IF EXISTS `v_databases`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_databases` AS SELECT 
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `name`,
 1 AS `description`,
 1 AS `database_type`,
 1 AS `metadata_sync_schedule`,
 1 AS `cache_field_values_schedule`,
 1 AS `timezone`,
 1 AS `is_on_demand`,
 1 AS `auto_run_queries`,
 1 AS `cache_ttl`,
 1 AS `creator_id`,
 1 AS `db_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_fields`
--

DROP TABLE IF EXISTS `v_fields`;
/*!50001 DROP VIEW IF EXISTS `v_fields`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_fields` AS SELECT 
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `name`,
 1 AS `display_name`,
 1 AS `description`,
 1 AS `base_type`,
 1 AS `visibility_type`,
 1 AS `fk_target_field_id`,
 1 AS `has_field_values`,
 1 AS `active`,
 1 AS `table_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_group_members`
--

DROP TABLE IF EXISTS `v_group_members`;
/*!50001 DROP VIEW IF EXISTS `v_group_members`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_group_members` AS SELECT 
 1 AS `user_id`,
 1 AS `group_id`,
 1 AS `group_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_query_log`
--

DROP TABLE IF EXISTS `v_query_log`;
/*!50001 DROP VIEW IF EXISTS `v_query_log`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_query_log` AS SELECT 
 1 AS `entity_id`,
 1 AS `started_at`,
 1 AS `running_time_seconds`,
 1 AS `result_rows`,
 1 AS `is_native`,
 1 AS `query_source`,
 1 AS `error`,
 1 AS `user_id`,
 1 AS `card_id`,
 1 AS `card_qualified_id`,
 1 AS `dashboard_id`,
 1 AS `dashboard_qualified_id`,
 1 AS `pulse_id`,
 1 AS `database_id`,
 1 AS `database_qualified_id`,
 1 AS `cache_hit`,
 1 AS `action_id`,
 1 AS `action_qualified_id`,
 1 AS `query`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_subscriptions`
--

DROP TABLE IF EXISTS `v_subscriptions`;
/*!50001 DROP VIEW IF EXISTS `v_subscriptions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_subscriptions` AS SELECT 
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `creator_id`,
 1 AS `archived`,
 1 AS `dashboard_qualified_id`,
 1 AS `schedule_type`,
 1 AS `schedule_day`,
 1 AS `schedule_hour`,
 1 AS `recipient_type`,
 1 AS `recipients`,
 1 AS `recipient_external`,
 1 AS `parameters`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_tables`
--

DROP TABLE IF EXISTS `v_tables`;
/*!50001 DROP VIEW IF EXISTS `v_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_tables` AS SELECT 
 1 AS `entity_id`,
 1 AS `entity_qualified_id`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `name`,
 1 AS `display_name`,
 1 AS `description`,
 1 AS `active`,
 1 AS `database_id`,
 1 AS `schema`,
 1 AS `is_upload`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_tasks`
--

DROP TABLE IF EXISTS `v_tasks`;
/*!50001 DROP VIEW IF EXISTS `v_tasks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_tasks` AS SELECT 
 1 AS `id`,
 1 AS `task`,
 1 AS `database_qualified_id`,
 1 AS `started_at`,
 1 AS `ended_at`,
 1 AS `duration_seconds`,
 1 AS `details`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_users`
--

DROP TABLE IF EXISTS `v_users`;
/*!50001 DROP VIEW IF EXISTS `v_users`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_users` AS SELECT 
 1 AS `user_id`,
 1 AS `entity_qualified_id`,
 1 AS `type`,
 1 AS `email`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `full_name`,
 1 AS `date_joined`,
 1 AS `last_login`,
 1 AS `updated_at`,
 1 AS `is_admin`,
 1 AS `is_active`,
 1 AS `sso_source`,
 1 AS `locale`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_view_log`
--

DROP TABLE IF EXISTS `v_view_log`;
/*!50001 DROP VIEW IF EXISTS `v_view_log`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_view_log` AS SELECT 
 1 AS `id`,
 1 AS `timestamp`,
 1 AS `user_id`,
 1 AS `entity_type`,
 1 AS `entity_id`,
 1 AS `entity_qualified_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `view_log`
--

DROP TABLE IF EXISTS `view_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `view_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `model` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int NOT NULL,
  `timestamp` timestamp(6) NULL DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `has_access` bit(1) DEFAULT NULL,
  `context` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The context of the view, can be collection, question, or dashboard. Only for cards.',
  PRIMARY KEY (`id`),
  KEY `idx_view_log_user_id` (`user_id`),
  KEY `idx_view_log_model_id` (`model_id`),
  KEY `idx_view_log_timestamp` (`timestamp`),
  KEY `idx_view_log_entity_qualified_id` ((concat(`model`,_utf8mb4'_',`model_id`))),
  CONSTRAINT `fk_view_log_ref_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_log`
--

LOCK TABLES `view_log` WRITE;
/*!40000 ALTER TABLE `view_log` DISABLE KEYS */;
INSERT INTO `view_log` VALUES (1,1,'dashboard',1,'2024-05-16 20:29:19.000000',NULL,_binary '',NULL),(2,1,'card',1,'2024-05-16 20:29:58.000000',NULL,_binary '','question'),(3,1,'dashboard',1,'2024-05-16 20:30:01.000000',NULL,_binary '',NULL),(4,1,'dashboard',1,'2024-05-16 20:30:11.000000',NULL,_binary '',NULL),(5,1,'card',1,'2024-05-16 20:30:11.000000',NULL,_binary '','dashboard'),(6,1,'card',2,'2024-05-16 20:30:30.000000',NULL,_binary '','question'),(7,1,'dashboard',1,'2024-05-16 20:30:33.000000',NULL,_binary '',NULL),(8,1,'card',1,'2024-05-16 20:30:33.000000',NULL,_binary '','dashboard'),(9,1,'dashboard',1,'2024-05-16 20:31:12.000000',NULL,_binary '',NULL),(10,1,'card',1,'2024-05-16 20:31:12.000000',NULL,_binary '','dashboard'),(11,1,'card',2,'2024-05-16 20:31:12.000000',NULL,_binary '','dashboard'),(12,1,'card',3,'2024-05-16 20:31:58.000000',NULL,_binary '','question'),(13,1,'dashboard',1,'2024-05-16 20:32:00.000000',NULL,_binary '',NULL),(14,1,'card',1,'2024-05-16 20:32:00.000000',NULL,_binary '','dashboard'),(15,1,'card',2,'2024-05-16 20:32:00.000000',NULL,_binary '','dashboard'),(16,1,'dashboard',1,'2024-05-16 20:32:19.000000',NULL,_binary '',NULL),(17,1,'card',1,'2024-05-16 20:32:19.000000',NULL,_binary '','dashboard'),(18,1,'card',2,'2024-05-16 20:32:19.000000',NULL,_binary '','dashboard'),(19,1,'card',3,'2024-05-16 20:32:19.000000',NULL,_binary '','dashboard'),(20,1,'card',4,'2024-05-16 20:32:43.000000',NULL,_binary '','question'),(21,1,'dashboard',1,'2024-05-16 20:32:46.000000',NULL,_binary '',NULL),(22,1,'card',1,'2024-05-16 20:32:46.000000',NULL,_binary '','dashboard'),(23,1,'card',2,'2024-05-16 20:32:46.000000',NULL,_binary '','dashboard'),(24,1,'card',3,'2024-05-16 20:32:46.000000',NULL,_binary '','dashboard'),(25,1,'dashboard',1,'2024-05-16 20:32:53.000000',NULL,_binary '',NULL),(26,1,'card',1,'2024-05-16 20:32:53.000000',NULL,_binary '','dashboard'),(27,1,'card',2,'2024-05-16 20:32:53.000000',NULL,_binary '','dashboard'),(28,1,'card',3,'2024-05-16 20:32:53.000000',NULL,_binary '','dashboard'),(29,1,'card',4,'2024-05-16 20:32:53.000000',NULL,_binary '','dashboard'),(30,1,'dashboard',1,'2024-05-17 17:52:18.000000',NULL,_binary '',NULL),(31,1,'card',1,'2024-05-17 17:52:18.000000',NULL,_binary '','dashboard'),(32,1,'card',2,'2024-05-17 17:52:18.000000',NULL,_binary '','dashboard'),(33,1,'card',3,'2024-05-17 17:52:18.000000',NULL,_binary '','dashboard'),(34,1,'card',4,'2024-05-17 17:52:18.000000',NULL,_binary '','dashboard'),(35,1,'dashboard',1,'2024-05-17 17:53:07.000000',NULL,_binary '',NULL),(36,1,'card',1,'2024-05-17 17:53:07.000000',NULL,_binary '','dashboard'),(37,1,'card',2,'2024-05-17 17:53:07.000000',NULL,_binary '','dashboard'),(38,1,'card',3,'2024-05-17 17:53:07.000000',NULL,_binary '','dashboard'),(39,1,'card',4,'2024-05-17 17:53:07.000000',NULL,_binary '','dashboard'),(40,1,'dashboard',1,'2024-05-17 17:56:44.000000',NULL,_binary '',NULL),(41,1,'card',1,'2024-05-17 17:56:44.000000',NULL,_binary '','dashboard'),(42,1,'card',2,'2024-05-17 17:56:44.000000',NULL,_binary '','dashboard'),(43,1,'card',3,'2024-05-17 17:56:44.000000',NULL,_binary '','dashboard'),(44,1,'card',4,'2024-05-17 17:56:44.000000',NULL,_binary '','dashboard'),(45,1,'dashboard',1,'2024-05-17 18:27:52.000000',NULL,_binary '',NULL),(46,1,'card',1,'2024-05-17 18:27:52.000000',NULL,_binary '','dashboard'),(47,1,'card',2,'2024-05-17 18:27:52.000000',NULL,_binary '','dashboard'),(48,1,'card',3,'2024-05-17 18:27:52.000000',NULL,_binary '','dashboard'),(49,1,'card',4,'2024-05-17 18:27:52.000000',NULL,_binary '','dashboard'),(50,1,'dashboard',1,'2024-05-17 18:32:15.000000',NULL,_binary '',NULL),(51,1,'card',1,'2024-05-17 18:32:15.000000',NULL,_binary '','dashboard'),(52,1,'card',2,'2024-05-17 18:32:15.000000',NULL,_binary '','dashboard'),(53,1,'card',3,'2024-05-17 18:32:15.000000',NULL,_binary '','dashboard'),(54,1,'card',4,'2024-05-17 18:32:15.000000',NULL,_binary '','dashboard'),(55,1,'dashboard',1,'2024-05-17 18:56:33.000000',NULL,_binary '',NULL),(56,1,'card',1,'2024-05-17 18:56:33.000000',NULL,_binary '','dashboard'),(57,1,'card',2,'2024-05-17 18:56:33.000000',NULL,_binary '','dashboard'),(58,1,'card',3,'2024-05-17 18:56:33.000000',NULL,_binary '','dashboard'),(59,1,'card',4,'2024-05-17 18:56:33.000000',NULL,_binary '','dashboard'),(60,1,'dashboard',1,'2024-05-17 18:56:36.000000',NULL,_binary '',NULL),(61,1,'card',1,'2024-05-17 18:56:36.000000',NULL,_binary '','dashboard'),(62,1,'card',2,'2024-05-17 18:56:36.000000',NULL,_binary '','dashboard'),(63,1,'card',3,'2024-05-17 18:56:36.000000',NULL,_binary '','dashboard'),(64,1,'card',4,'2024-05-17 18:56:36.000000',NULL,_binary '','dashboard'),(65,1,'dashboard',1,'2024-05-17 18:57:02.000000',NULL,_binary '',NULL),(66,1,'card',1,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard'),(67,1,'card',2,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard'),(68,1,'card',3,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard'),(69,1,'card',4,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard'),(70,1,'dashboard',1,'2024-05-17 18:57:02.000000',NULL,_binary '',NULL),(71,1,'card',1,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard'),(72,1,'card',2,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard'),(73,1,'card',3,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard'),(74,1,'card',4,'2024-05-17 18:57:02.000000',NULL,_binary '','dashboard');
/*!40000 ALTER TABLE `view_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `v_alerts`
--

/*!50001 DROP VIEW IF EXISTS `v_alerts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_alerts` AS with `agg_recipients` as (select `pulse_channel_recipient`.`pulse_channel_id` AS `pulse_channel_id`,group_concat(`core_user`.`email` separator ',') AS `recipients` from (`pulse_channel_recipient` left join `core_user` on((`pulse_channel_recipient`.`user_id` = `core_user`.`id`))) group by `pulse_channel_recipient`.`pulse_channel_id`) select `pulse`.`id` AS `entity_id`,concat('pulse_',`pulse`.`id`) AS `entity_qualified_id`,`pulse`.`created_at` AS `created_at`,`pulse`.`updated_at` AS `updated_at`,`pulse`.`creator_id` AS `creator_id`,`pulse_card`.`card_id` AS `card_id`,concat('card_',`pulse_card`.`card_id`) AS `card_qualified_id`,`pulse`.`alert_condition` AS `alert_condition`,`pulse_channel`.`schedule_type` AS `schedule_type`,`pulse_channel`.`schedule_day` AS `schedule_day`,`pulse_channel`.`schedule_hour` AS `schedule_hour`,`pulse`.`archived` AS `archived`,`pulse_channel`.`channel_type` AS `recipient_type`,`agg_recipients`.`recipients` AS `recipients`,`pulse_channel`.`details` AS `recipient_external` from (((`pulse` left join `pulse_card` on((`pulse`.`id` = `pulse_card`.`pulse_id`))) left join `pulse_channel` on((`pulse`.`id` = `pulse_channel`.`pulse_id`))) left join `agg_recipients` on((`pulse_channel`.`id` = `agg_recipients`.`pulse_channel_id`))) where (`pulse`.`alert_condition` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_audit_log`
--

/*!50001 DROP VIEW IF EXISTS `v_audit_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_audit_log` AS select `audit_log`.`id` AS `id`,(case when (`audit_log`.`topic` = 'card-create') then 'card-create' when (`audit_log`.`topic` = 'card-delete') then 'card-delete' when (`audit_log`.`topic` = 'card-update') then 'card-update' when (`audit_log`.`topic` = 'pulse-create') then 'subscription-create' when (`audit_log`.`topic` = 'pulse-delete') then 'subscription-delete' else `audit_log`.`topic` end) AS `topic`,`audit_log`.`timestamp` AS `timestamp`,NULL AS `end_timestamp`,coalesce(`audit_log`.`user_id`,0) AS `user_id`,lower(`audit_log`.`model`) AS `entity_type`,`audit_log`.`model_id` AS `entity_id`,(case when (`audit_log`.`model` = 'Dataset') then concat('card_',`audit_log`.`model_id`) when (`audit_log`.`model_id` is null) then NULL else concat(lower(`audit_log`.`model`),'_',`audit_log`.`model_id`) end) AS `entity_qualified_id`,`audit_log`.`details` AS `details` from `audit_log` where (`audit_log`.`topic` not in ('card-read','card-query','dashboard-read','dashboard-query')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_content`
--

/*!50001 DROP VIEW IF EXISTS `v_content`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_content` AS select `action`.`id` AS `entity_id`,concat('action_',`action`.`id`) AS `entity_qualified_id`,'action' AS `entity_type`,`action`.`created_at` AS `created_at`,`action`.`updated_at` AS `updated_at`,`action`.`creator_id` AS `creator_id`,`action`.`name` AS `name`,`action`.`description` AS `description`,NULL AS `collection_id`,`action`.`made_public_by_id` AS `made_public_by_user`,NULL AS `is_embedding_enabled`,`action`.`archived` AS `archived`,`action`.`type` AS `action_type`,`action`.`model_id` AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,NULL AS `event_timestamp` from `action` union select `collection`.`id` AS `entity_id`,concat('collection_',`collection`.`id`) AS `entity_qualified_id`,'collection' AS `entity_type`,`collection`.`created_at` AS `created_at`,NULL AS `updated_at`,NULL AS `creator_id`,`collection`.`name` AS `name`,`collection`.`description` AS `description`,NULL AS `collection_id`,NULL AS `made_public_by_user`,NULL AS `is_embedding_enabled`,`collection`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,(case when (`collection`.`authority_level` = 'official') then true else false end) AS `collection_is_official`,(case when (`collection`.`personal_owner_id` is not null) then true else false end) AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,NULL AS `event_timestamp` from `collection` union select `report_card`.`id` AS `entity_id`,concat('card_',`report_card`.`id`) AS `entity_qualified_id`,(case when `report_card`.`dataset` then 'model' else 'question' end) AS `entity_type`,`report_card`.`created_at` AS `created_at`,`report_card`.`updated_at` AS `updated_at`,`report_card`.`creator_id` AS `creator_id`,`report_card`.`name` AS `name`,`report_card`.`description` AS `description`,`report_card`.`collection_id` AS `collection_id`,`report_card`.`made_public_by_id` AS `made_public_by_user`,`report_card`.`enable_embedding` AS `is_embedding_enabled`,`report_card`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,`report_card`.`display` AS `question_viz_type`,concat('database_',`report_card`.`database_id`) AS `question_database_id`,(case when (`report_card`.`query_type` = 'native') then true else false end) AS `question_is_native`,NULL AS `event_timestamp` from `report_card` union select `report_dashboard`.`id` AS `entity_id`,concat('dashboard_',`report_dashboard`.`id`) AS `entity_qualified_id`,'dashboard' AS `entity_type`,`report_dashboard`.`created_at` AS `created_at`,`report_dashboard`.`updated_at` AS `updated_at`,`report_dashboard`.`creator_id` AS `creator_id`,`report_dashboard`.`name` AS `name`,`report_dashboard`.`description` AS `description`,`report_dashboard`.`collection_id` AS `collection_id`,`report_dashboard`.`made_public_by_id` AS `made_public_by_user`,`report_dashboard`.`enable_embedding` AS `is_embedding_enabled`,`report_dashboard`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,NULL AS `event_timestamp` from `report_dashboard` union select `event`.`id` AS `entity_id`,concat('event_',`event`.`id`) AS `entity_qualified_id`,'event' AS `entity_type`,`event`.`created_at` AS `created_at`,`event`.`updated_at` AS `updated_at`,`event`.`creator_id` AS `creator_id`,`event`.`name` AS `name`,`event`.`description` AS `description`,`timeline`.`collection_id` AS `collection_id`,NULL AS `made_public_by_user`,NULL AS `is_embedding_enabled`,`event`.`archived` AS `archived`,NULL AS `action_type`,NULL AS `action_model_id`,NULL AS `collection_is_official`,NULL AS `collection_is_personal`,NULL AS `question_viz_type`,NULL AS `question_database_id`,NULL AS `question_is_native`,`event`.`timestamp` AS `event_timestamp` from (`timeline_event` `event` left join `timeline` on((`event`.`timeline_id` = `timeline`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_dashboardcard`
--

/*!50001 DROP VIEW IF EXISTS `v_dashboardcard`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_dashboardcard` AS select `report_dashboardcard`.`id` AS `entity_id`,concat('dashboardcard_',`report_dashboardcard`.`id`) AS `entity_qualified_id`,concat('dashboard_',`report_dashboardcard`.`dashboard_id`) AS `dashboard_qualified_id`,concat('dashboardtab_',`report_dashboardcard`.`dashboard_tab_id`) AS `dashboardtab_id`,concat('card_',`report_dashboardcard`.`card_id`) AS `card_qualified_id`,`report_dashboardcard`.`created_at` AS `created_at`,`report_dashboardcard`.`updated_at` AS `updated_at`,`report_dashboardcard`.`size_x` AS `size_x`,`report_dashboardcard`.`size_y` AS `size_y`,`report_dashboardcard`.`visualization_settings` AS `visualization_settings`,`report_dashboardcard`.`parameter_mappings` AS `parameter_mappings` from `report_dashboardcard` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_databases`
--

/*!50001 DROP VIEW IF EXISTS `v_databases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_databases` AS select `metabase_database`.`id` AS `entity_id`,concat('database_',`metabase_database`.`id`) AS `entity_qualified_id`,`metabase_database`.`created_at` AS `created_at`,`metabase_database`.`updated_at` AS `updated_at`,`metabase_database`.`name` AS `name`,`metabase_database`.`description` AS `description`,`metabase_database`.`engine` AS `database_type`,`metabase_database`.`metadata_sync_schedule` AS `metadata_sync_schedule`,`metabase_database`.`cache_field_values_schedule` AS `cache_field_values_schedule`,`metabase_database`.`timezone` AS `timezone`,`metabase_database`.`is_on_demand` AS `is_on_demand`,`metabase_database`.`auto_run_queries` AS `auto_run_queries`,`metabase_database`.`cache_ttl` AS `cache_ttl`,`metabase_database`.`creator_id` AS `creator_id`,`metabase_database`.`dbms_version` AS `db_version` from `metabase_database` where (`metabase_database`.`id` <> 13371337) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_fields`
--

/*!50001 DROP VIEW IF EXISTS `v_fields`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_fields` AS select `metabase_field`.`id` AS `entity_id`,concat('field_',`metabase_field`.`id`) AS `entity_qualified_id`,`metabase_field`.`created_at` AS `created_at`,`metabase_field`.`updated_at` AS `updated_at`,`metabase_field`.`name` AS `name`,`metabase_field`.`display_name` AS `display_name`,`metabase_field`.`description` AS `description`,`metabase_field`.`base_type` AS `base_type`,`metabase_field`.`visibility_type` AS `visibility_type`,`metabase_field`.`fk_target_field_id` AS `fk_target_field_id`,`metabase_field`.`has_field_values` AS `has_field_values`,`metabase_field`.`active` AS `active`,`metabase_field`.`table_id` AS `table_id` from `metabase_field` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_group_members`
--

/*!50001 DROP VIEW IF EXISTS `v_group_members`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_group_members` AS select `permissions_group_membership`.`user_id` AS `user_id`,`permissions_group`.`id` AS `group_id`,`permissions_group`.`name` AS `group_name` from (`permissions_group_membership` left join `permissions_group` on((`permissions_group_membership`.`group_id` = `permissions_group`.`id`))) union select 0 AS `user_id`,0 AS `group_id`,'Anonymous users' AS `group_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_query_log`
--

/*!50001 DROP VIEW IF EXISTS `v_query_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_query_log` AS select `query_execution`.`id` AS `entity_id`,`query_execution`.`started_at` AS `started_at`,(cast(`query_execution`.`running_time` as double) / 1000) AS `running_time_seconds`,`query_execution`.`result_rows` AS `result_rows`,`query_execution`.`native` AS `is_native`,`query_execution`.`context` AS `query_source`,`query_execution`.`error` AS `error`,coalesce(`query_execution`.`executor_id`,0) AS `user_id`,`query_execution`.`card_id` AS `card_id`,concat('card_',`query_execution`.`card_id`) AS `card_qualified_id`,`query_execution`.`dashboard_id` AS `dashboard_id`,concat('dashboard_',`query_execution`.`dashboard_id`) AS `dashboard_qualified_id`,`query_execution`.`pulse_id` AS `pulse_id`,`query_execution`.`database_id` AS `database_id`,concat('database_',`query_execution`.`database_id`) AS `database_qualified_id`,`query_execution`.`cache_hit` AS `cache_hit`,`query_execution`.`action_id` AS `action_id`,concat('action_',`query_execution`.`action_id`) AS `action_qualified_id`,`query`.`query` AS `query` from (`query_execution` left join `query` on((`query_execution`.`hash` = `query`.`query_hash`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_subscriptions`
--

/*!50001 DROP VIEW IF EXISTS `v_subscriptions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_subscriptions` AS with `agg_recipients` as (select `pulse_channel_recipient`.`pulse_channel_id` AS `pulse_channel_id`,group_concat(`core_user`.`email` separator ',') AS `recipients` from (`pulse_channel_recipient` left join `core_user` on((`pulse_channel_recipient`.`user_id` = `core_user`.`id`))) group by `pulse_channel_recipient`.`pulse_channel_id`) select `pulse`.`id` AS `entity_id`,concat('pulse_',`pulse`.`id`) AS `entity_qualified_id`,`pulse`.`created_at` AS `created_at`,`pulse`.`updated_at` AS `updated_at`,`pulse`.`creator_id` AS `creator_id`,`pulse`.`archived` AS `archived`,concat('dashboard_',`pulse`.`dashboard_id`) AS `dashboard_qualified_id`,`pulse_channel`.`schedule_type` AS `schedule_type`,`pulse_channel`.`schedule_day` AS `schedule_day`,`pulse_channel`.`schedule_hour` AS `schedule_hour`,`pulse_channel`.`channel_type` AS `recipient_type`,`agg_recipients`.`recipients` AS `recipients`,`pulse_channel`.`details` AS `recipient_external`,`pulse`.`parameters` AS `parameters` from ((`pulse` left join `pulse_channel` on((`pulse`.`id` = `pulse_channel`.`pulse_id`))) left join `agg_recipients` on((`pulse_channel`.`id` = `agg_recipients`.`pulse_channel_id`))) where (`pulse`.`alert_condition` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_tables`
--

/*!50001 DROP VIEW IF EXISTS `v_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tables` AS select `metabase_table`.`id` AS `entity_id`,concat('table_',`metabase_table`.`id`) AS `entity_qualified_id`,`metabase_table`.`created_at` AS `created_at`,`metabase_table`.`updated_at` AS `updated_at`,`metabase_table`.`name` AS `name`,`metabase_table`.`display_name` AS `display_name`,`metabase_table`.`description` AS `description`,`metabase_table`.`active` AS `active`,`metabase_table`.`db_id` AS `database_id`,'schema' AS `schema`,`metabase_table`.`is_upload` AS `is_upload` from `metabase_table` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_tasks`
--

/*!50001 DROP VIEW IF EXISTS `v_tasks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tasks` AS select `task_history`.`id` AS `id`,`task_history`.`task` AS `task`,concat('database_',`task_history`.`db_id`) AS `database_qualified_id`,`task_history`.`started_at` AS `started_at`,`task_history`.`ended_at` AS `ended_at`,(cast(`task_history`.`duration` as double) / 1000) AS `duration_seconds`,`task_history`.`task_details` AS `details` from `task_history` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_users`
--

/*!50001 DROP VIEW IF EXISTS `v_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_users` AS select `core_user`.`id` AS `user_id`,concat('user_',`core_user`.`id`) AS `entity_qualified_id`,`core_user`.`type` AS `type`,(case when (`core_user`.`type` = 'api-key') then NULL else `core_user`.`email` end) AS `email`,`core_user`.`first_name` AS `first_name`,`core_user`.`last_name` AS `last_name`,concat(`core_user`.`first_name`,' ',`core_user`.`last_name`) AS `full_name`,`core_user`.`date_joined` AS `date_joined`,`core_user`.`last_login` AS `last_login`,`core_user`.`updated_at` AS `updated_at`,`core_user`.`is_superuser` AS `is_admin`,`core_user`.`is_active` AS `is_active`,`core_user`.`sso_source` AS `sso_source`,`core_user`.`locale` AS `locale` from `core_user` union select 0 AS `user_id`,'user_0' AS `entity_qualified_id`,'anonymous' AS `type`,NULL AS `email`,'External' AS `first_name`,'User' AS `last_name`,'External User' AS `full_name`,NULL AS `date_joined`,NULL AS `last_login`,NULL AS `updated_at`,false AS `is_admin`,NULL AS `is_active`,NULL AS `sso_source`,NULL AS `locale` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_view_log`
--

/*!50001 DROP VIEW IF EXISTS `v_view_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`tolarewaju3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_view_log` AS select `view_log`.`id` AS `id`,`view_log`.`timestamp` AS `timestamp`,coalesce(`view_log`.`user_id`,0) AS `user_id`,`view_log`.`model` AS `entity_type`,`view_log`.`model_id` AS `entity_id`,concat(`view_log`.`model`,'_',`view_log`.`model_id`) AS `entity_qualified_id` from `view_log` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-17 19:49:06
