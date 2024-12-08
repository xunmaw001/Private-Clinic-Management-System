-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot6t4o8
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springboot6t4o8`
--

/*!40000 DROP DATABASE IF EXISTS `springboot6t4o8`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot6t4o8` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot6t4o8`;

--
-- Table structure for table `binglixinxi`
--

DROP TABLE IF EXISTS `binglixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binglixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `binglibianhao` varchar(200) DEFAULT NULL COMMENT '病历编号',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `zhenduanneirong` longtext NOT NULL COMMENT '诊断内容',
  `zhenduanjieguo` longtext NOT NULL COMMENT '诊断结果',
  `binglimiaoshu` longtext NOT NULL COMMENT '病历描述',
  `yizhuxinxi` longtext NOT NULL COMMENT '医嘱信息',
  `binglibaogao` longtext NOT NULL COMMENT '病例报告',
  `jiuzhenshijian` datetime DEFAULT NULL COMMENT '就诊时间',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `binglibianhao` (`binglibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360696736 DEFAULT CHARSET=utf8 COMMENT='病历信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binglixinxi`
--

LOCK TABLES `binglixinxi` WRITE;
/*!40000 ALTER TABLE `binglixinxi` DISABLE KEYS */;
INSERT INTO `binglixinxi` VALUES (71,'2023-04-13 04:29:02','1111111111','患者账号1','患者姓名1','诊断内容1','诊断结果1','病历描述1','医嘱信息1','','2023-04-13 12:29:02','医生账号1','医生姓名1'),(72,'2023-04-13 04:29:02','2222222222','患者账号2','患者姓名2','诊断内容2','诊断结果2','病历描述2','医嘱信息2','','2023-04-13 12:29:02','医生账号2','医生姓名2'),(73,'2023-04-13 04:29:02','3333333333','患者账号3','患者姓名3','诊断内容3','诊断结果3','病历描述3','医嘱信息3','','2023-04-13 12:29:02','医生账号3','医生姓名3'),(74,'2023-04-13 04:29:02','4444444444','患者账号4','患者姓名4','诊断内容4','诊断结果4','病历描述4','医嘱信息4','','2023-04-13 12:29:02','医生账号4','医生姓名4'),(75,'2023-04-13 04:29:02','5555555555','患者账号5','患者姓名5','诊断内容5','诊断结果5','病历描述5','医嘱信息5','','2023-04-13 12:29:02','医生账号5','医生姓名5'),(76,'2023-04-13 04:29:02','6666666666','患者账号6','患者姓名6','诊断内容6','诊断结果6','病历描述6','医嘱信息6','','2023-04-13 12:29:02','医生账号6','医生姓名6'),(77,'2023-04-13 04:29:02','7777777777','患者账号7','患者姓名7','诊断内容7','诊断结果7','病历描述7','医嘱信息7','','2023-04-13 12:29:02','医生账号7','医生姓名7'),(78,'2023-04-13 04:29:02','8888888888','患者账号8','患者姓名8','诊断内容8','诊断结果8','病历描述8','医嘱信息8','','2023-04-13 12:29:02','医生账号8','医生姓名8'),(1681360696735,'2023-04-13 04:38:15','1681360698509','001','王强','基于协同过滤算法的私人诊所管理系统','基于协同过滤算法的私人诊所管理系统','基于协同过滤算法的私人诊所管理系统','基于协同过滤算法的私人诊所管理系统','upload/1681360687998.xlsx','2023-04-13 12:38:18','002','陈红');
/*!40000 ALTER TABLE `binglixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chufangkaiju`
--

DROP TABLE IF EXISTS `chufangkaiju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chufangkaiju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chufangbianhao` varchar(200) DEFAULT NULL COMMENT '处方编号',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `danjia` float DEFAULT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `chufangxiangqing` longtext COMMENT '处方详情',
  `kaijushijian` datetime DEFAULT NULL COMMENT '开具时间',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chufangbianhao` (`chufangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360709673 DEFAULT CHARSET=utf8 COMMENT='处方开具';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chufangkaiju`
--

LOCK TABLES `chufangkaiju` WRITE;
/*!40000 ALTER TABLE `chufangkaiju` DISABLE KEYS */;
INSERT INTO `chufangkaiju` VALUES (91,'2023-04-13 04:29:03','1111111111','患者账号1','患者姓名1','性别1','药品名称1',1,1,1,'处方详情1','2023-04-13 12:29:03','医生账号1','医生姓名1','未支付'),(92,'2023-04-13 04:29:03','2222222222','患者账号2','患者姓名2','性别2','药品名称2',2,2,2,'处方详情2','2023-04-13 12:29:03','医生账号2','医生姓名2','未支付'),(93,'2023-04-13 04:29:03','3333333333','患者账号3','患者姓名3','性别3','药品名称3',3,3,3,'处方详情3','2023-04-13 12:29:03','医生账号3','医生姓名3','未支付'),(94,'2023-04-13 04:29:03','4444444444','患者账号4','患者姓名4','性别4','药品名称4',4,4,4,'处方详情4','2023-04-13 12:29:03','医生账号4','医生姓名4','未支付'),(95,'2023-04-13 04:29:03','5555555555','患者账号5','患者姓名5','性别5','药品名称5',5,5,5,'处方详情5','2023-04-13 12:29:03','医生账号5','医生姓名5','未支付'),(96,'2023-04-13 04:29:03','6666666666','患者账号6','患者姓名6','性别6','药品名称6',6,6,6,'处方详情6','2023-04-13 12:29:03','医生账号6','医生姓名6','未支付'),(97,'2023-04-13 04:29:03','7777777777','患者账号7','患者姓名7','性别7','药品名称7',7,7,7,'处方详情7','2023-04-13 12:29:03','医生账号7','医生姓名7','未支付'),(98,'2023-04-13 04:29:03','8888888888','患者账号8','患者姓名8','性别8','药品名称8',8,8,8,'处方详情8','2023-04-13 12:29:03','医生账号8','医生姓名8','未支付'),(1681360709672,'2023-04-13 04:38:29','1681360717661','001','王强','男','感冒灵',26,2,52,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(101, 101, 48);\">基于协同过滤算法的私人诊所管理系统</span></p>','2023-04-13 12:38:37','002','陈红','已支付');
/*!40000 ALTER TABLE `chufangkaiju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuzhenyisheng`
--

DROP TABLE IF EXISTS `chuzhenyisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuzhenyisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) NOT NULL COMMENT '医生账号',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  `guahaoleixing` varchar(200) NOT NULL COMMENT '挂号类型',
  `guahaoshu` int(11) NOT NULL COMMENT '挂号数',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `chuzhenriqi` date DEFAULT NULL COMMENT '出诊日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360530237 DEFAULT CHARSET=utf8 COMMENT='出诊医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuzhenyisheng`
--

LOCK TABLES `chuzhenyisheng` WRITE;
/*!40000 ALTER TABLE `chuzhenyisheng` DISABLE KEYS */;
INSERT INTO `chuzhenyisheng` VALUES (41,'2023-04-13 04:29:02','医生账号1','upload/chuzhenyisheng_touxiang1.jpg,upload/chuzhenyisheng_touxiang2.jpg,upload/chuzhenyisheng_touxiang3.jpg','男','医生姓名1','职称1','科室1','普通号',1,1,'上班时间1','2023-04-13','2023-04-13 12:29:02'),(42,'2023-04-13 04:29:02','医生账号2','upload/chuzhenyisheng_touxiang2.jpg,upload/chuzhenyisheng_touxiang3.jpg,upload/chuzhenyisheng_touxiang4.jpg','男','医生姓名2','职称2','科室2','普通号',2,2,'上班时间2','2023-04-13','2023-04-13 12:32:36'),(43,'2023-04-13 04:29:02','医生账号3','upload/chuzhenyisheng_touxiang3.jpg,upload/chuzhenyisheng_touxiang4.jpg,upload/chuzhenyisheng_touxiang5.jpg','男','医生姓名3','职称3','科室3','普通号',3,3,'上班时间3','2023-04-13','2023-04-13 12:29:02'),(44,'2023-04-13 04:29:02','医生账号4','upload/chuzhenyisheng_touxiang4.jpg,upload/chuzhenyisheng_touxiang5.jpg,upload/chuzhenyisheng_touxiang6.jpg','男','医生姓名4','职称4','科室4','普通号',4,4,'上班时间4','2023-04-13','2023-04-13 12:33:27'),(45,'2023-04-13 04:29:02','医生账号5','upload/chuzhenyisheng_touxiang5.jpg,upload/chuzhenyisheng_touxiang6.jpg,upload/chuzhenyisheng_touxiang7.jpg','男','医生姓名5','职称5','科室5','普通号',5,5,'上班时间5','2023-04-13','2023-04-13 12:29:02'),(46,'2023-04-13 04:29:02','医生账号6','upload/chuzhenyisheng_touxiang6.jpg,upload/chuzhenyisheng_touxiang7.jpg,upload/chuzhenyisheng_touxiang8.jpg','男','医生姓名6','职称6','科室6','普通号',6,6,'上班时间6','2023-04-13','2023-04-13 12:29:02'),(47,'2023-04-13 04:29:02','医生账号7','upload/chuzhenyisheng_touxiang7.jpg,upload/chuzhenyisheng_touxiang8.jpg,upload/chuzhenyisheng_touxiang9.jpg','男','医生姓名7','职称7','科室7','普通号',7,7,'上班时间7','2023-04-13','2023-04-13 12:29:02'),(48,'2023-04-13 04:29:02','医生账号8','upload/chuzhenyisheng_touxiang8.jpg,upload/chuzhenyisheng_touxiang9.jpg,upload/chuzhenyisheng_touxiang10.jpg','男','医生姓名8','职称8','科室8','普通号',8,8,'上班时间8','2023-04-13','2023-04-13 12:29:02'),(1681360530236,'2023-04-13 04:35:29','002','upload/1681360507998.jpeg','女','陈红','主任','外科','专家号',19,12,'8:00-17:00','2023-04-17','2023-04-13 12:37:16');
/*!40000 ALTER TABLE `chuzhenyisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huanzhe`
--

DROP TABLE IF EXISTS `huanzhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huanzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huanzhezhanghao` varchar(200) NOT NULL COMMENT '患者账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huanzhexingming` varchar(200) NOT NULL COMMENT '患者姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `huanzhezhuzhi` varchar(200) DEFAULT NULL COMMENT '患者住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huanzhezhanghao` (`huanzhezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360397012 DEFAULT CHARSET=utf8 COMMENT='患者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huanzhe`
--

LOCK TABLES `huanzhe` WRITE;
/*!40000 ALTER TABLE `huanzhe` DISABLE KEYS */;
INSERT INTO `huanzhe` VALUES (11,'2023-04-13 04:29:02','患者账号1','123456','患者姓名1','upload/huanzhe_touxiang1.jpg','男','13823888881','440300199101010001','患者住址1'),(12,'2023-04-13 04:29:02','患者账号2','123456','患者姓名2','upload/huanzhe_touxiang2.jpg','男','13823888882','440300199202020002','患者住址2'),(13,'2023-04-13 04:29:02','患者账号3','123456','患者姓名3','upload/huanzhe_touxiang3.jpg','男','13823888883','440300199303030003','患者住址3'),(14,'2023-04-13 04:29:02','患者账号4','123456','患者姓名4','upload/huanzhe_touxiang4.jpg','男','13823888884','440300199404040004','患者住址4'),(15,'2023-04-13 04:29:02','患者账号5','123456','患者姓名5','upload/huanzhe_touxiang5.jpg','男','13823888885','440300199505050005','患者住址5'),(16,'2023-04-13 04:29:02','患者账号6','123456','患者姓名6','upload/huanzhe_touxiang6.jpg','男','13823888886','440300199606060006','患者住址6'),(17,'2023-04-13 04:29:02','患者账号7','123456','患者姓名7','upload/huanzhe_touxiang7.jpg','男','13823888887','440300199707070007','患者住址7'),(18,'2023-04-13 04:29:02','患者账号8','123456','患者姓名8','upload/huanzhe_touxiang8.jpg','男','13823888888','440300199808080008','患者住址8'),(1681360397011,'2023-04-13 04:33:17','001','001','王强','upload/1681360380711.jpeg','男','13823877774','414561990020314562','人民北路5号');
/*!40000 ALTER TABLE `huanzhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keshi`
--

DROP TABLE IF EXISTS `keshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360470176 DEFAULT CHARSET=utf8 COMMENT='科室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keshi`
--

LOCK TABLES `keshi` WRITE;
/*!40000 ALTER TABLE `keshi` DISABLE KEYS */;
INSERT INTO `keshi` VALUES (31,'2023-04-13 04:29:02','科室1'),(32,'2023-04-13 04:29:02','科室2'),(33,'2023-04-13 04:29:02','科室3'),(34,'2023-04-13 04:29:02','科室4'),(35,'2023-04-13 04:29:02','科室5'),(36,'2023-04-13 04:29:02','科室6'),(37,'2023-04-13 04:29:02','科室7'),(38,'2023-04-13 04:29:02','科室8'),(1681360470175,'2023-04-13 04:34:29','外科');
/*!40000 ALTER TABLE `keshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360424248 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (121,'2023-04-13 04:29:03',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(122,'2023-04-13 04:29:03',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(123,'2023-04-13 04:29:03',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(124,'2023-04-13 04:29:03',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(125,'2023-04-13 04:29:03',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(126,'2023-04-13 04:29:03',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(127,'2023-04-13 04:29:03',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(128,'2023-04-13 04:29:03',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg'),(1681360424247,'2023-04-13 04:33:44',1681360397011,'001','upload/1681360380711.jpeg','输入留言内容',NULL,'查看回复留言',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2023-04-13 04:29:03','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(112,'2023-04-13 04:29:03','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(113,'2023-04-13 04:29:03','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2023-04-13 04:29:03','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2023-04-13 04:29:03','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2023-04-13 04:29:03','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(117,'2023-04-13 04:29:03','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(118,'2023-04-13 04:29:03','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360408905 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1681360408904,'2023-04-13 04:33:28',1681360397011,44,'chuzhenyisheng','医生姓名4','upload/chuzhenyisheng_touxiang4.jpg','1','科室4',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'患者账号1','huanzhe','患者','6pwn71k4a5bra7wy44d26gc9g7qfm93n','2023-04-13 04:31:45','2023-04-13 05:31:46'),(2,1681360397011,'001','huanzhe','患者','qr8m65986faxecgqsr0h46ugc550lybg','2023-04-13 04:33:21','2023-04-13 05:38:40'),(3,1,'admin','users','管理员','j0rs9sdc50f3tt8j75tmqn6x7y8w5qfj','2023-04-13 04:34:18','2023-04-13 05:34:18'),(4,1681360496463,'002','yisheng','医生','xu6d37che1lfodt20n0u90huw8qt6lr2','2023-04-13 04:36:35','2023-04-13 05:37:51');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-13 04:29:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopintupian` longtext COMMENT '药品图片',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `yaopinshuoming` longtext COMMENT '药品说明',
  `shengchanchangjia` varchar(200) DEFAULT NULL COMMENT '生产厂家',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `danjia` float NOT NULL COMMENT '单价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360570297 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (81,'2023-04-13 04:29:02','药品名称1','upload/yaopinxinxi_yaopintupian1.jpg,upload/yaopinxinxi_yaopintupian2.jpg,upload/yaopinxinxi_yaopintupian3.jpg','保质期1','颗粒','药品说明1','生产厂家1','规格1',1,1),(82,'2023-04-13 04:29:02','药品名称2','upload/yaopinxinxi_yaopintupian2.jpg,upload/yaopinxinxi_yaopintupian3.jpg,upload/yaopinxinxi_yaopintupian4.jpg','保质期2','颗粒','药品说明2','生产厂家2','规格2',2,2),(83,'2023-04-13 04:29:02','药品名称3','upload/yaopinxinxi_yaopintupian3.jpg,upload/yaopinxinxi_yaopintupian4.jpg,upload/yaopinxinxi_yaopintupian5.jpg','保质期3','颗粒','药品说明3','生产厂家3','规格3',3,3),(84,'2023-04-13 04:29:03','药品名称4','upload/yaopinxinxi_yaopintupian4.jpg,upload/yaopinxinxi_yaopintupian5.jpg,upload/yaopinxinxi_yaopintupian6.jpg','保质期4','颗粒','药品说明4','生产厂家4','规格4',4,4),(85,'2023-04-13 04:29:03','药品名称5','upload/yaopinxinxi_yaopintupian5.jpg,upload/yaopinxinxi_yaopintupian6.jpg,upload/yaopinxinxi_yaopintupian7.jpg','保质期5','颗粒','药品说明5','生产厂家5','规格5',5,5),(86,'2023-04-13 04:29:03','药品名称6','upload/yaopinxinxi_yaopintupian6.jpg,upload/yaopinxinxi_yaopintupian7.jpg,upload/yaopinxinxi_yaopintupian8.jpg','保质期6','颗粒','药品说明6','生产厂家6','规格6',6,6),(87,'2023-04-13 04:29:03','药品名称7','upload/yaopinxinxi_yaopintupian7.jpg,upload/yaopinxinxi_yaopintupian8.jpg,upload/yaopinxinxi_yaopintupian9.jpg','保质期7','颗粒','药品说明7','生产厂家7','规格7',7,7),(88,'2023-04-13 04:29:03','药品名称8','upload/yaopinxinxi_yaopintupian8.jpg,upload/yaopinxinxi_yaopintupian9.jpg,upload/yaopinxinxi_yaopintupian10.jpg','保质期8','颗粒','药品说明8','生产厂家8','规格8',8,8),(1681360570296,'2023-04-13 04:36:10','感冒灵','upload/1681360550104.jpeg','一年','颗粒','<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(101, 101, 48);\">基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统基于协同过滤算法的私人诊所管理系统</span></p>','生物制药','50粒',26,48);
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) NOT NULL COMMENT '医生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` longtext COMMENT '头像',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishengzhanghao` (`yishengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360496464 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2023-04-13 04:29:02','医生账号1','123456','upload/yisheng_touxiang1.jpg','医生姓名1','男','13823888881','科室1','职称1'),(22,'2023-04-13 04:29:02','医生账号2','123456','upload/yisheng_touxiang2.jpg','医生姓名2','男','13823888882','科室2','职称2'),(23,'2023-04-13 04:29:02','医生账号3','123456','upload/yisheng_touxiang3.jpg','医生姓名3','男','13823888883','科室3','职称3'),(24,'2023-04-13 04:29:02','医生账号4','123456','upload/yisheng_touxiang4.jpg','医生姓名4','男','13823888884','科室4','职称4'),(25,'2023-04-13 04:29:02','医生账号5','123456','upload/yisheng_touxiang5.jpg','医生姓名5','男','13823888885','科室5','职称5'),(26,'2023-04-13 04:29:02','医生账号6','123456','upload/yisheng_touxiang6.jpg','医生姓名6','男','13823888886','科室6','职称6'),(27,'2023-04-13 04:29:02','医生账号7','123456','upload/yisheng_touxiang7.jpg','医生姓名7','男','13823888887','科室7','职称7'),(28,'2023-04-13 04:29:02','医生账号8','123456','upload/yisheng_touxiang8.jpg','医生姓名8','男','13823888888','科室8','职称8'),(1681360496463,'2023-04-13 04:34:56','002','002','upload/1681360482973.jpeg','陈红','女','13823855552','外科','主任');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyueguahao`
--

DROP TABLE IF EXISTS `yuyueguahao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `guahaoleixing` varchar(200) DEFAULT NULL COMMENT '挂号类型',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `guahaoshu` int(11) DEFAULT NULL COMMENT '挂号数',
  `chuzhenriqi` varchar(200) DEFAULT NULL COMMENT '出诊日期',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681360635142 DEFAULT CHARSET=utf8 COMMENT='预约挂号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyueguahao`
--

LOCK TABLES `yuyueguahao` WRITE;
/*!40000 ALTER TABLE `yuyueguahao` DISABLE KEYS */;
INSERT INTO `yuyueguahao` VALUES (51,'2023-04-13 04:29:02','1111111111','医生账号1','医生姓名1','职称1','科室1','挂号类型1',1,1,'出诊日期1','2023-04-13 12:29:02','患者账号1','患者姓名1','手机号码1','是','','未支付'),(52,'2023-04-13 04:29:02','2222222222','医生账号2','医生姓名2','职称2','科室2','挂号类型2',2,1,'出诊日期2','2023-04-13 12:29:02','患者账号2','患者姓名2','手机号码2','是','','未支付'),(53,'2023-04-13 04:29:02','3333333333','医生账号3','医生姓名3','职称3','科室3','挂号类型3',3,1,'出诊日期3','2023-04-13 12:29:02','患者账号3','患者姓名3','手机号码3','是','','未支付'),(54,'2023-04-13 04:29:02','4444444444','医生账号4','医生姓名4','职称4','科室4','挂号类型4',4,1,'出诊日期4','2023-04-13 12:29:02','患者账号4','患者姓名4','手机号码4','是','','未支付'),(55,'2023-04-13 04:29:02','5555555555','医生账号5','医生姓名5','职称5','科室5','挂号类型5',5,1,'出诊日期5','2023-04-13 12:29:02','患者账号5','患者姓名5','手机号码5','是','','未支付'),(56,'2023-04-13 04:29:02','6666666666','医生账号6','医生姓名6','职称6','科室6','挂号类型6',6,1,'出诊日期6','2023-04-13 12:29:02','患者账号6','患者姓名6','手机号码6','是','','未支付'),(57,'2023-04-13 04:29:02','7777777777','医生账号7','医生姓名7','职称7','科室7','挂号类型7',7,1,'出诊日期7','2023-04-13 12:29:02','患者账号7','患者姓名7','手机号码7','是','','未支付'),(58,'2023-04-13 04:29:02','8888888888','医生账号8','医生姓名8','职称8','科室8','挂号类型8',8,1,'出诊日期8','2023-04-13 12:29:02','患者账号8','患者姓名8','手机号码8','是','','未支付'),(1681360635141,'2023-04-13 04:37:14','1681360640939','002','陈红','主任','外科','专家号',12,1,'2023-04-17','2023-04-17 09:00:00','001','王强','13823877774','是','预约成功','已支付');
/*!40000 ALTER TABLE `yuyueguahao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuequxiao`
--

DROP TABLE IF EXISTS `yuyuequxiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuequxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yishengzhanghao` varchar(200) NOT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `guahaofei` int(11) DEFAULT NULL COMMENT '挂号费',
  `chuzhenriqi` varchar(200) DEFAULT NULL COMMENT '出诊日期',
  `quxiaoyuanyin` varchar(200) NOT NULL COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `huanzhezhanghao` varchar(200) DEFAULT NULL COMMENT '患者账号',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='预约取消';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuequxiao`
--

LOCK TABLES `yuyuequxiao` WRITE;
/*!40000 ALTER TABLE `yuyuequxiao` DISABLE KEYS */;
INSERT INTO `yuyuequxiao` VALUES (61,'2023-04-13 04:29:02','1111111111','医生账号1','医生姓名1','职称1','科室1',1,'出诊日期1','取消原因1','2023-04-13 12:29:02','患者账号1','患者姓名1','手机号码1',1,1,'是',''),(62,'2023-04-13 04:29:02','2222222222','医生账号2','医生姓名2','职称2','科室2',2,'出诊日期2','取消原因2','2023-04-13 12:29:02','患者账号2','患者姓名2','手机号码2',2,2,'是',''),(63,'2023-04-13 04:29:02','3333333333','医生账号3','医生姓名3','职称3','科室3',3,'出诊日期3','取消原因3','2023-04-13 12:29:02','患者账号3','患者姓名3','手机号码3',3,3,'是',''),(64,'2023-04-13 04:29:02','4444444444','医生账号4','医生姓名4','职称4','科室4',4,'出诊日期4','取消原因4','2023-04-13 12:29:02','患者账号4','患者姓名4','手机号码4',4,4,'是',''),(65,'2023-04-13 04:29:02','5555555555','医生账号5','医生姓名5','职称5','科室5',5,'出诊日期5','取消原因5','2023-04-13 12:29:02','患者账号5','患者姓名5','手机号码5',5,5,'是',''),(66,'2023-04-13 04:29:02','6666666666','医生账号6','医生姓名6','职称6','科室6',6,'出诊日期6','取消原因6','2023-04-13 12:29:02','患者账号6','患者姓名6','手机号码6',6,6,'是',''),(67,'2023-04-13 04:29:02','7777777777','医生账号7','医生姓名7','职称7','科室7',7,'出诊日期7','取消原因7','2023-04-13 12:29:02','患者账号7','患者姓名7','手机号码7',7,7,'是',''),(68,'2023-04-13 04:29:02','8888888888','医生账号8','医生姓名8','职称8','科室8',8,'出诊日期8','取消原因8','2023-04-13 12:29:02','患者账号8','患者姓名8','手机号码8',8,8,'是','');
/*!40000 ALTER TABLE `yuyuequxiao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 12:42:29
