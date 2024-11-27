-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 03:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Saroj Dhakal', 'saroj@gmail.com', 7894561239, 'f925916e2754e5e03f75dd58a5733251', '2024-01-10 11:18:49'),
(2, 'ram', 'Ram Bdr', 'ram@gmail.com', 9864943299, '$2y$10$kNsFL8hdfQIlYZwl0G/dDOqT/qnBuJAWYb9yOp.hqjU8R0faxBRRC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2024-01-16 06:38:36', 2, 'u', '2024-01-30 05:18:29'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2024-01-17 06:43:25', 1, NULL, '2024-01-31 01:21:17'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2024-01-17 06:44:39', 2, 'a', '2024-01-30 05:18:52'),
(4, 2, 'test@gmail.com', '2024-02-02', '2024-02-08', 'NA', '2024-01-31 02:03:27', 1, NULL, '2024-01-31 06:35:08'),
(5, 3, 'test@gmail.com', '2024-01-31', '2024-02-05', 'please offer some discount', '2024-01-31 05:21:52', 2, 'a', '2024-09-17 07:53:26'),
(6, 2, 'garima12@gmail.com', '2024-03-01', '2024-03-05', 'NA', '2024-02-03 13:04:33', 1, NULL, '2024-02-03 13:05:29'),
(7, 11, 'ram1@gmail.com', '2024-09-22', '2024-09-25', 'I am booking.', '2024-09-17 07:49:23', 2, 'u', '2024-09-17 07:53:11'),
(8, 15, 'ram1@gmail.com', '2024-09-23', '2024-09-30', 'I am booking.', '2024-09-23 05:48:32', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2024-01-18 06:31:38', 1),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2024-01-19 06:32:41', 1),
(5, 'hohn Doe', 'John12@gmail.com', '142536254', 'Test Subject', 'this is for testing', '2024-02-03 13:07:50', 1),
(6, 'Saroj', 'saroj@gmail.com', '9800557887', 'EBC trek', 'I want to know about EBC trek', '2024-09-20 14:45:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2024-01-25 06:56:29', NULL, '2024-01-30 05:20:14'),
(10, 'test@gmail.com', 'Other', 'Test Sample', '2024-01-31 05:24:40', 'ok', '2024-09-17 14:10:10'),
(13, 'garima12@gmail.com', 'Booking Issues', 'I want some information ragrding booking', '2024-02-03 13:06:00', 'Infromation provided', '2024-02-03 13:06:26'),
(15, 'ram1@gmail.com', 'Cancellation', 'I cancel my booking By mistakenly. ', '2024-09-17 08:53:13', 'Ok Try Again', '2024-09-17 14:57:28'),
(17, 'ram1@gmail.com', 'Other', 'this is awesome website i like this', '2024-09-22 10:36:56', 'thank you so much', '2024-09-22 10:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<h3><strong>Terms and Conditions</strong></h3><p>Welcome to <strong>Trekking Management System</strong>. By using our platform, you agree to the following terms and conditions:</p><h4>1. <strong>General</strong></h4><ul><li>By accessing or using our services, you acknowledge that you have read, understood, and agree to be bound by these terms.</li><li>We reserve the right to update or modify these terms at any time without prior notice.</li></ul><h4>2. <strong>Bookings and Payments</strong></h4><ul><li>All trekking bookings are subject to availability and confirmation from local guides or service providers.</li><li>Full or partial payment may be required at the time of booking, depending on the trek or services chosen.</li><li>All payments must be made through our secure payment gateway. We do not store or share your payment details with third parties.</li></ul><h4>3. <strong>Cancellations and Refunds</strong></h4><ul><li>Cancellations made at least 7 days prior to the trek will be eligible for a full refund.</li><li>Cancellations within 7 days of the trek may result in a partial refund, depending on the policy of the respective guides or service providers.</li><li>No refunds will be provided for last-minute cancellations or no-shows.</li></ul><h4>4. <strong>Liability</strong></h4><ul><li><strong>Trekking Management System</strong> acts as a platform connecting trekkers with local guides, accommodations, and service providers. We are not liable for any injuries, accidents, delays, or disruptions during the trek.</li><li>Trekkers are advised to have their own travel insurance, including coverage for high-altitude trekking and emergencies.</li></ul><h4>5. <strong>User Responsibilities</strong></h4><ul><li>Users must provide accurate personal and payment information during booking.</li><li>Trekkers are responsible for being physically and mentally fit for the trek. We recommend consulting a physician before undertaking any trekking activity.</li><li>Respect local customs and the natural environment. Any form of littering, defacing cultural heritage, or causing harm to wildlife will not be tolerated.</li></ul><h4>6. <strong>Data Privacy</strong></h4><ul><li>We collect personal information for the purpose of booking and providing services. Your data will not be shared with third parties, except as required to fulfill bookings.</li><li>Refer to our Privacy Policy for more details on how we handle your information.</li></ul><h4>7. <strong>Governing Law</strong></h4><ul><li>These terms and conditions shall be governed by and construed in accordance with the laws of Nepal. Any disputes arising from the use of our platform will be subject to the jurisdiction of the courts of Nepal.</li></ul>\r\n										\r\n										\r\n										'),
(2, 'privacy', '										<h3><br></h3><p>At <strong>Trekking Management System</strong>, we are committed to protecting your privacy and ensuring that your personal information is handled securely and responsibly. This Privacy Policy outlines how we collect, use, and protect your information when you use our platform.</p><h4>1. <strong>Information We Collect</strong></h4><p>We may collect the following types of information from users:</p><ul><li><strong>Personal Information</strong>: Name, email address, phone number, and billing information provided during registration or booking.</li><li><strong>Location Data</strong>: Information related to the trekking locations you choose or access on our platform.</li><li><strong>Payment Information</strong>: Payment details provided during the booking process (processed through secure payment gateways).</li><li><strong>Usage Data</strong>: Information about how you use our website, such as IP address, browser type, pages visited, and interaction with our services.</li></ul><h4>2. <strong>How We Use Your Information</strong></h4><p>We use the collected information for the following purposes:</p><ul><li><strong>Booking Management</strong>: To facilitate your trekking bookings and ensure smooth communication with local guides and service providers.</li><li><strong>Payment Processing</strong>: To process payments securely via our payment gateways.</li><li><strong>Customer Support</strong>: To respond to inquiries, provide assistance, and manage feedback or complaints.</li><li><strong>Improvement of Services</strong>: To improve our platform, enhance user experience, and develop new features based on user interactions and feedback.</li><li><strong>Marketing Communications</strong>: With your consent, we may send you newsletters, special offers, and updates about our services.</li></ul><h4>3. <strong>Data Sharing</strong></h4><p>We do not sell or rent your personal information to third parties. However, we may share your data under the following circumstances:</p><ul><li><strong>Service Providers</strong>: With trusted third-party service providers, such as local guides, payment processors, or trekking-related services, strictly for fulfilling your bookings.</li><li><strong>Legal Compliance</strong>: If required by law or in response to valid legal requests (e.g., subpoenas, court orders).</li><li><strong>Business Transfers</strong>: In the event of a merger, acquisition, or asset sale, your information may be transferred as part of the business assets.</li></ul><h4>4. <strong>Data Security</strong></h4><p>We take the security of your personal data seriously and implement industry-standard security measures to protect it. This includes encryption, secure payment processing, and restricted access to personal information. However, no method of transmission over the internet is 100% secure, and we cannot guarantee absolute security.</p><h4>5. <strong>Your Rights</strong></h4><p>You have the following rights concerning your personal information:</p><ul><li><strong>Access and Correction</strong>: You can access or update your personal information through your account settings.</li><li><strong>Data Deletion</strong>: You may request the deletion of your personal data by contacting us at [your contact information].</li><li><strong>Marketing Preferences</strong>: You can opt out of receiving promotional communications at any time by following the unsubscribe link in our emails or contacting us.</li></ul><h4>6. <strong>Cookies</strong></h4><p>We use cookies to enhance your browsing experience, improve website performance, and analyze site traffic. You can control your cookie preferences through your browser settings. However, disabling cookies may affect certain features of our platform.</p><h4>7. <strong>Third-Party Links</strong></h4><p>Our website may contain links to third-party sites. We are not responsible for the privacy practices or content of these external sites. We encourage users to read the privacy policies of any third-party sites they visit.</p><h4>8. <strong>Changes to This Policy</strong></h4><p>We may update this Privacy Policy from time to time. Any changes will be posted on this page, and we will notify users of significant updates. Please review this policy periodically to stay informed about how we protect your data.</p>\r\n										'),
(3, 'aboutus', '																														<div><span style=\"color: rgb(0, 0, 0); text-align: justify; font-weight: bold; font-family: arial; font-size: x-large;\">Welcome to Trekking Management System!!!</span></div><h3><br></h3><p>Welcome t<span style=\"font-weight: 700;\">o Trekking Management System</span>, your trusted partner for discovering and exploring Nepal’s breathtaking trekking destinations. We specialize in providing comprehensive trekking management services, offering a seamless platform for trekkers and adventure enthusiasts to plan their treks across Nepal’s diverse landscapes.</p><p>Whether you\'re looking to experience the famous Annapurna Circuit, Everest Base Camp, or the hidden gems like Ghandruk and Langtang, our system ensures a hassle-free experience by connecting you with local guides, accommodations, and detailed trekking information. We aim to promote sustainable and responsible tourism, ensuring that both trekkers and local communities benefit from the adventure.</p><p>Join us to embark on unforgettable journeys through the Himalayas, where every trail tells a story!</p>\r\n										'),
(11, 'contact', '<h3><br></h3><p>If you have any questions or concerns about our Privacy Policy or need assistance, please feel free to contact us:</p><p><strong>Address</strong>:<br>Trekking Management System<br>[Koteshwor]<br>Kathmandu,&nbsp; Nepal</p><p><strong>Email</strong>: <a rel=\"noopener\">support@trekkingmanagement.com</a><br><strong>Phone</strong>: +977-987654000</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(11, 'Ghandruk Village - Kaski Pokhara (Very Affordable )', 'Family/Friends- Trekking ', 'Kaski, Nepal', 4500, 'Included 3x food || Health Insurance', 'Ghandruk Village Trek - Overview\r\nLocation: Annapurna Region, Nepal\r\nStart/End: Nayapul (1.5-hour drive from Pokhara)\r\nElevation: 2,010 meters\r\nDuration: 3-4 days\r\nDifficulty: Easy to Moderate\r\nTrek Route:\r\nDay 1: Drive to Nayapul ? 4-5 hour trek to Ghandruk\r\nDay 2: Explore Ghandruk (Gurung culture, museum, views of Annapurna South, Machapuchare)\r\nDay 3: Return trek to Nayapul ? Drive to Pokhara\r\nHighlights:\r\nPanoramic views of Annapurna and Machapuchare\r\nRich Gurung culture and traditional village experience\r\nAnnapurna Conservation Area scenery\r\nBest Time:\r\nSpring (March-May)\r\nAutumn (Sept-Nov)\r\nPermits:\r\nTIMS Card, ACAP\r\nPacking:\r\nComfortable boots, warm clothes, sunscreen, trekking poles\r\nAccommodation:\r\nTeahouses with local meals (dal bhat, Tibetan bread)\r\n', 'download (1).jpeg', '2024-09-17 07:44:48', NULL),
(12, 'Annapurna Base Camp Trek', 'Family/Friends- Trekking / Individual', 'Kaski, Nepal', 17000, 'Charging | 3x Meal | Hot water', 'Annapurna Base Camp Trek - Overview\r\n\r\nLocation: Annapurna Region, Nepal\r\nStart/End: Nayapul (1.5-hour drive from Pokhara)\r\nElevation: 4,130 meters (ABC)\r\nDuration: 7-12 days\r\nDifficulty: Moderate to Difficult\r\n\r\n\r\nTrek Route:\r\nDay 1: Drive to Nayapul ? Trek to Tikhedhunga\r\nDay 2: Tikhedhunga ? Ghorepani\r\nDay 3: Ghorepani ? Poon Hill (sunrise view) ? Tadapani\r\nDay 4: Tadapani ? Chhomrong\r\nDay 5: Chhomrong ? Bamboo\r\nDay 6: Bamboo ? Deurali\r\nDay 7: Deurali ? Annapurna Base Camp\r\nDay 8: Explore ABC ? Trek down to Bamboo\r\nDay 9-10: Return trek to Nayapul via Jhinu Danda (hot springs)\r\n\r\n\r\nHighlights:\r\nStunning views of Annapurna I, Machapuchare, Hiunchuli, and Dhaulagiri\r\nSunrise from Poon Hill\r\nLush rhododendron forests, terraced fields, and river valleys\r\nImmersion in Gurung culture\r\n\r\n\r\nBest Time:\r\nSpring (March-May)\r\nAutumn (Sept-Nov)\r\nPermits:\r\nTIMS Card, ACAP\r\n\r\n\r\nPacking:\r\nWarm clothes, trekking poles, sleeping bag, headlamp, and high-altitude gear\r\nAccommodation:\r\nTeahouses with basic facilities (local food, simple rooms)', 'anna.jpg', '2024-09-17 14:39:48', '2024-09-17 14:49:10'),
(13, 'Everest Base Camp Trekking', 'Family/Friends- Trekking / Individual', 'Solukhumbu (Chola Circuit ) Nepal', 70000, 'Charging | 3x Meal | Hot water | Health Insurance ', 'Everest Base Camp Trek - Overview\r\n\r\nLocation: Everest Region, Nepal\r\n\r\nStart/End: Lukla (35-minute flight from Kathmandu)\r\n\r\nElevation: 5,364 meters (EBC)\r\nDuration: 12-14 days\r\nDifficulty: Moderate to Challenging\r\n\r\nTrek Route:\r\nDay 1: Fly to Lukla ? Trek to Phakding\r\nDay 2: Phakding ? Namche Bazaar\r\nDay 3: Acclimatization at Namche (Explore Everest View Hotel, Khumjung)\r\nDay 4: Namche ? Tengboche (Monastery visit)\r\nDay 5: Tengboche ? Dingboche\r\nDay 6: Acclimatization at Dingboche\r\nDay 7: Dingboche ? Lobuche\r\nDay 8: Lobuche ? Gorak Shep ? Everest Base Camp\r\nDay 9: Hike to Kala Patthar (Sunrise) ? Return to Pheriche\r\nDay 10-12: Return trek to Lukla\r\nHighlights:\r\nPanoramic views of Everest, Lhotse, Nuptse, and Ama Dablam\r\nVisit to Tengboche Monastery\r\nSunrise from Kala Patthar (5,545 meters)\r\nExperience Sherpa culture and Everest region\'s rugged beauty\r\nBest Time:\r\nSpring (March-May)\r\nAutumn (Sept-Nov)\r\nPermits:\r\nSagarmatha National Park Permit, TIMS Card\r\nPacking:\r\nHigh-altitude gear, warm layers, sleeping bag, trekking poles, and hydration system\r\nAccommodation:\r\nTeahouses with basic amenities (heaters, limited electricity)', 'Top 10 Trekking trails - EBC Trek.jpeg', '2024-09-17 14:43:23', '2024-09-17 14:47:32'),
(14, 'Mardi Himal Base Camp Trekking', 'Family/Friends- Trekking / Individual', 'Kaski, Nepal', 12000, 'Charging | 3x Meal | Hot water | Health Insurance ', 'Mardi Himal Trek - Overview\r\nLocation: Annapurna Region, Nepal\r\nStart/End: Kande or Phedi (1-hour drive from Pokhara)\r\nElevation: 4,500 meters (Mardi Himal Base Camp)\r\nDuration: 5-7 days\r\nDifficulty: Moderate\r\nTrek Route:\r\nDay 1: Drive to Kande ? Trek to Australian Camp ? Pothana\r\nDay 2: Pothana ? Forest Camp\r\nDay 3: Forest Camp ? Low Camp\r\nDay 4: Low Camp ? High Camp\r\nDay 5: High Camp ? Mardi Himal Base Camp ? Return to High Camp\r\nDay 6: High Camp ? Sidhing\r\nDay 7: Sidhing ? Return to Pokhara\r\nHighlights:\r\nSpectacular views of Machapuchare, Annapurna South, and Hiunchuli\r\nLess crowded, off-the-beaten-path trek\r\nDense rhododendron forests and high-altitude landscapes\r\nPanoramic sunrise from Mardi Himal Base Camp\r\nBest Time:\r\nSpring (March-May)\r\nAutumn (Sept-Nov)\r\nPermits:\r\nTIMS Card, ACAP\r\nPacking:\r\nWarm layers, trekking poles, sturdy boots, and sleeping bag\r\nAccommodation:\r\nTeahouses with basic amenities', 'mardi.jpg', '2024-09-17 14:50:27', '2024-09-17 14:52:24'),
(15, 'Gokyo Lake Trek', 'Family/Friends- Trekking / Individual', 'Solukhumbu (Chola Circuit ) Nepal', 30000, 'Charging | 3x Meal | Hot water | Health Insurance ', 'Gokyo Lake Trek - Overview\r\nLocation: Everest Region, Nepal\r\nStart/End: Lukla (35-minute flight from Kathmandu)\r\nElevation: 4,800 meters (Gokyo Lakes), 5,357 meters (Gokyo Ri)\r\nDuration: 12-14 days\r\nDifficulty: Moderate to Challenging\r\nTrek Route:\r\nDay 1: Fly to Lukla ? Trek to Phakding\r\nDay 2: Phakding ? Namche Bazaar\r\nDay 3: Acclimatization at Namche (Explore Everest View Hotel, Khumjung)\r\nDay 4: Namche ? Dole\r\nDay 5: Dole ? Machhermo\r\nDay 6: Machhermo ? Gokyo (Explore Gokyo Lakes)\r\nDay 7: Hike to Gokyo Ri (Sunrise view) ? Return to Gokyo\r\nDay 8: Explore Fifth Lake or Rest at Gokyo\r\nDay 9-11: Return trek to Lukla via Machhermo and Namche\r\nHighlights:\r\nSpectacular views of Everest, Cho Oyu, and Makalu from Gokyo Ri\r\nStunning turquoise Gokyo Lakes\r\nLess crowded alternative to Everest Base Camp\r\nPanoramic views of the Ngozumpa Glacier (largest glacier in Nepal)\r\nBest Time:\r\nSpring (March-May)\r\nAutumn (Sept-Nov)\r\nPermits:\r\nSagarmatha National Park Permit, TIMS Card\r\nPacking:\r\nHigh-altitude gear, warm layers, trekking poles, and hydration system\r\nAccommodation:\r\nTeahouses with basic facilities', 'gokyo.jpg', '2024-09-23 05:44:34', '2024-09-23 05:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:40'),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(5, 'Test', '1987894654', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-16 06:33:20', '2024-01-31 02:00:48'),
(9, 'Test Sample', '4654654564', 'testsample@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-01-31 06:32:51', NULL),
(10, 'Garima Singh', '1425362540', 'garima12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-02-03 13:03:43', '2024-02-03 13:04:02'),
(12, 'Ram Bdr', '9800000000', 'ram1@gmail.com', '734379e382de4feb0dce07cb1061ef48', '2024-09-17 07:12:50', NULL),
(13, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2024-09-17 08:53:13', NULL),
(14, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2024-09-17 14:56:34', NULL),
(15, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2024-09-22 10:36:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
