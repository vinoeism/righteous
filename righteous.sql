-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2019 at 09:03 AM
-- Server version: 5.6.13
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `righteous`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `party_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `line_1` varchar(100) DEFAULT NULL,
  `line_2` varchar(100) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `landline_number` varchar(12) DEFAULT NULL,
  `fax_number` varchar(12) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `contact_1` varchar(100) DEFAULT NULL,
  `contact_1_designation` varchar(100) DEFAULT NULL,
  `contact_1_phone` varchar(100) DEFAULT NULL,
  `contact_1_email` varchar(100) DEFAULT NULL,
  `contact_2` varchar(100) DEFAULT NULL,
  `contact_2_designation` varchar(100) DEFAULT NULL,
  `contact_2_phone` varchar(100) DEFAULT NULL,
  `contact_2_email` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `subtype` varchar(50) DEFAULT NULL,
  `length` double DEFAULT NULL,
  `breadth` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `dimension_unit` varchar(20) DEFAULT NULL,
  `gross_weight` double DEFAULT NULL,
  `net_weight` double DEFAULT NULL,
  `chargeable_weight` double DEFAULT NULL,
  `weight_unit` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cargo` varchar(500) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `wo_id` int(11) DEFAULT NULL,
  `quote_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `party_name` varchar(150) NOT NULL,
  `party_type` varchar(30) NOT NULL,
  `short_code` varchar(5) NOT NULL,
  `is_blacklisted` tinyint(1) NOT NULL,
  `pan_no` varchar(10) DEFAULT NULL,
  `gstin` varchar(15) DEFAULT NULL,
  `credit_days` int(11) DEFAULT NULL,
  `debit_days` int(11) DEFAULT NULL COMMENT 'days extended by party to us',
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(11) NOT NULL,
  `vehicle_regn_no` varchar(20) DEFAULT NULL,
  `vehicle_type` varchar(20) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `trip_type` varchar(200) DEFAULT NULL,
  `trip_date_start` date DEFAULT NULL,
  `trip_date_end` date DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_phone` varchar(50) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `start_odo` int(11) DEFAULT NULL,
  `end_odo` int(11) DEFAULT NULL,
  `from_location` varchar(200) DEFAULT NULL,
  `from_location_id` int(11) DEFAULT NULL,
  `to_location` varchar(200) DEFAULT NULL,
  `to_location_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `transporter_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `booked_by` int(11) DEFAULT NULL,
  `booked_on` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
