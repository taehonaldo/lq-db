CREATE DATABASE  IF NOT EXISTS `lq` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lq`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lq
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `histories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `qid` int NOT NULL,
  `datetime` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` VALUES (15,5,10,'1725862129174'),(16,4,11,'1725862235010'),(29,4,11,'1725935316916'),(102,4,19,'1726030093614'),(104,4,3,'1726030098212'),(105,4,1,'1726030098432'),(107,4,1,'1726202287365'),(108,4,3,'1726202287652'),(109,4,11,'1726202288076'),(110,4,19,'1726202290016'),(120,4,8,'1726202311372'),(121,4,7,'1726202372064'),(124,4,11,'1726710479905'),(125,4,11,'1726805555104'),(127,4,4,'1726806763006'),(132,4,46,'1726814705682'),(134,4,45,'1726814710895'),(136,4,11,'1727048670919'),(169,4,1,'1727170839330'),(194,4,66,'1727228204530'),(195,4,5,'1727228738247'),(196,4,2,'1727228753440');
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_types`
--

DROP TABLE IF EXISTS `quest_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest_types` (
  `code` varchar(4) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_types`
--

LOCK TABLES `quest_types` WRITE;
/*!40000 ALTER TABLE `quest_types` DISABLE KEYS */;
INSERT INTO `quest_types` VALUES ('DIET','diet'),('FAMI','family'),('FINA','finance'),('HEAL','health'),('LOVE','love'),('RELA','relationship'),('UNDE','undefined'),('WORK','work');
/*!40000 ALTER TABLE `quest_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quests` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `period` enum('day','week','month','year','life') NOT NULL,
  `createdDatetime` varchar(45) NOT NULL,
  `lastDoneDatetime` varchar(45) DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  `type` varchar(4) DEFAULT NULL,
  `combo` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`),
  UNIQUE KEY `id_UNIQUE` (`qid`),
  KEY `type_idx` (`type`),
  KEY `uid_idx` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT INTO `quests` VALUES (1,4,'유산소',NULL,'day','1725859448758','1727170839330',0,3,'UNDE',2),(2,4,'재활용',NULL,'week','1725859465918','1727228753440',0,1,'UNDE',1),(3,4,'근력',NULL,'day','1725860979740','1726202287652',0,2,'UNDE',0),(4,4,'월세 납부',NULL,'month','1725861726054','1726806763006',0,1,'UNDE',1),(5,4,'관리비 납부',NULL,'month','1725861732589','1727228738247',0,1,'UNDE',1),(6,4,'가스비 납부',NULL,'month','1725861735860',NULL,0,0,'UNDE',0),(7,4,'가족회비 납부',NULL,'month','1725861741300','1726202372064',0,1,'UNDE',1),(8,4,'결혼자금 저축',NULL,'month','1725861750339','1726202311372',0,1,'UNDE',1),(9,4,'연말정산',NULL,'year','1725861764632',NULL,0,0,'UNDE',0),(10,5,'일간 테스트 1',NULL,'day','1725862128538','1725862129174',0,0,'UNDE',0),(11,4,'개발',NULL,'day','1725862233241','1727048670919',0,6,'UNDE',0),(12,4,'바닥 청소',NULL,'day','1725864124978','1727048670919',1,1,'UNDE',0),(13,4,'undefined',NULL,'day','1725864125771',NULL,1,0,'UNDE',0),(14,4,'3',NULL,'day','1725864128072',NULL,1,0,'UNDE',0),(15,4,'4',NULL,'day','1725864129766',NULL,1,0,'UNDE',0),(16,4,'5',NULL,'day','1725928417628',NULL,1,0,'UNDE',0),(17,4,'6',NULL,'day','1725928419306',NULL,1,0,'UNDE',0),(18,4,'7',NULL,'day','1725928426497',NULL,1,0,'UNDE',0),(19,4,'일찍 눕기',NULL,'day','1726016366107','1726202290016',0,1,'UNDE',0),(20,4,'5',NULL,'day','1726030300194',NULL,1,0,'UNDE',0),(21,4,'6',NULL,'day','1726030353307',NULL,1,0,'UNDE',0),(22,4,'7',NULL,'day','1726030444914',NULL,1,0,'UNDE',0),(23,4,'8',NULL,'day','1726030447290',NULL,1,0,'UNDE',0),(24,4,'일간 퀘스트 생성 테스트','aㅁㅁㅁ','day','1726709357595',NULL,1,0,'UNDE',0),(25,4,'연간 퀘스트 생성 테스트','연간 1','year','1726709495922',NULL,1,0,'UNDE',0),(26,4,'wsdqaswdas','daASD','day','1726717255822',NULL,1,0,'UNDE',0),(27,4,'11','222','week','1726720187975',NULL,1,0,'UNDE',0),(28,4,'주간 테스트','주간 테스트 설명','week','1726720273855',NULL,1,0,'UNDE',0),(29,4,'2','2','week','1726720770187',NULL,1,0,'UNDE',0),(30,4,'11','1','day','1726721839370',NULL,1,0,'UNDE',0),(31,4,'11','1','day','1726721840557',NULL,1,0,'UNDE',0),(32,4,'1',NULL,'month','1726730349930',NULL,1,0,'UNDE',0),(33,4,'11','11','day','1726731752801',NULL,1,0,'UNDE',0),(34,4,'11','11','day','1726731782587',NULL,1,0,'UNDE',0),(35,4,'111','222','week','1726733169465',NULL,1,0,'UNDE',0),(36,4,'11','11','day','1726733425575',NULL,1,0,'UNDE',0),(37,4,'iiii',NULL,'week','1726805625668',NULL,1,0,'UNDE',0),(38,4,'iii',NULL,'month','1726805654386',NULL,1,0,'UNDE',0),(39,4,'1','1','year','1726811126675',NULL,1,0,'UNDE',0),(40,4,'1','1','year','1726812017852',NULL,1,0,'UNDE',0),(41,4,'1','2','week','1726812085724',NULL,1,0,'UNDE',0),(42,4,'11','22','month','1726812654231',NULL,1,0,'UNDE',0),(43,4,'aaa','aa','day','1726812864000',NULL,1,0,'DIET',0),(44,4,'책읽기','','month','1726813042096',NULL,0,0,'UNDE',0),(45,4,'할거1','','week','1726814584550','1726814710895',1,1,'FINA',0),(46,4,';./.',',ㅡㅡ','day','1726814695570','1726814705682',1,1,'DIET',0),(47,4,'ㅁ','ㅁㅁㅁ','day','1726815797360',NULL,1,0,'FINA',0),(48,4,'20자 테스트20자 테스트20자 테스','ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ','day','1727066306507',NULL,1,0,'UNDE',0),(49,4,'1','12','day','1727143981908',NULL,1,0,'FINA',0),(50,4,'2','3','day','1727144030547',NULL,1,0,'DIET',0),(51,4,'213','214124','month','1727144530322',NULL,1,0,'FINA',0),(52,4,'3123','123213','day','1727148942332',NULL,1,0,'FINA',0),(53,4,'1234','4567','day','1727149808597',NULL,1,0,'WORK',0),(54,4,'123','4356','week','1727167931296',NULL,1,0,'UNDE',0),(55,4,'55','555','month','1727168004049',NULL,1,0,'UNDE',0),(56,4,'333','444','month','1727168068829',NULL,1,0,'FINA',0),(57,4,'555','666','year','1727168101928',NULL,1,0,'FINA',0),(58,4,'555','','year','1727168111776',NULL,1,0,'UNDE',0),(59,4,'1313','11313','day','1727168462969',NULL,1,0,'UNDE',0),(60,4,'5656','6767','day','1727168501319',NULL,1,0,'UNDE',0),(61,4,'1515','5656','day','1727168790581',NULL,1,0,'UNDE',0),(62,4,'454545','565656','day','1727168828554',NULL,1,0,'UNDE',0),(63,4,'1212','3434','day','1727168854849',NULL,1,0,'UNDE',0),(64,4,'바닥 청소','','week','1727223125752',NULL,0,0,'UNDE',0),(65,4,'123','','day','1727223267421',NULL,1,0,'LIFE',0),(66,4,'123','','day','1727100001776','1727100001776',0,1,'UNDE',0),(67,4,'기념일(12.24)','용은이랑 사귄날','year','1727228536931',NULL,0,0,'RELA',0),(68,4,'결혼기념일(10.25)','삼성역 그랜드힐컨벤션\n2층','year','1727228549511',NULL,0,0,'RELA',0),(69,4,'용은 생일(7.29)','','year','1727228565774',NULL,0,0,'RELA',0),(70,4,'아빠 생일(7.29)','','year','1727228706154',NULL,0,0,'RELA',0),(71,4,'엄마 생일(3.17)','','year','1727228718203',NULL,0,0,'RELA',0);
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `picture` varchar(256) DEFAULT NULL,
  `createdDatetime` varchar(45) NOT NULL,
  `accessToken` varchar(256) DEFAULT NULL,
  `refreshToken` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`uid`,`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'domybestatleastonceaweek@gmail.com','Taeho Kim','https://lh3.googleusercontent.com/a/ACg8ocJ3KTL56xFeATbgUxknaj8d5aOlGPxvQSn3Kd1OI8T1TEOKTA=s96-c','1725858182187',NULL,NULL),(5,'taeho.innodep@gmail.com','Taeho Kim','https://lh3.googleusercontent.com/a/ACg8ocI3ZQ0M_VhcIs7J0CILUi3w7nfN91SQ2JTk2-g6_ZuNK9-kMA=s96-c','1725861968824',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26 14:52:27
