-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.33 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para filmes
CREATE DATABASE IF NOT EXISTS `filmes` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `filmes`;

-- Copiando estrutura para tabela filmes.cadastro
CREATE TABLE IF NOT EXISTS `cadastro` (
  `nome_cd` varchar(30) DEFAULT NULL,
  `email_cd` varchar(60) DEFAULT NULL,
  `data_nascimento_cd` date DEFAULT NULL,
  `senha_cd` varchar(15) DEFAULT NULL,
  `confirm_senha_cd` varchar(15) DEFAULT NULL,
  `id_cd` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_cd`),
  UNIQUE KEY `email_cd` (`email_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela filmes.cd_filme
CREATE TABLE IF NOT EXISTS `cd_filme` (
  `nome_film` varchar(40) DEFAULT NULL,
  `classificacao` int(3) DEFAULT NULL,
  `sinopse` varchar(350) DEFAULT NULL,
  `ano_lancamento` year(4) DEFAULT NULL,
  `duracao_film` time DEFAULT NULL,
  `img_film` varchar(1) DEFAULT NULL,
  `id_film` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  UNIQUE KEY `id_film` (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela filmes.entrar
CREATE TABLE IF NOT EXISTS `entrar` (
  `email` varchar(60) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `confirm_senha` varchar(15) DEFAULT NULL,
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
