USE [master]
GO
/****** Object:  Database [CSDL_Trung_Tâm_Đào_Tạo]    Script Date: 1/3/2021 4:09:52 PM ******/
CREATE DATABASE [CSDL_Trung_Tâm_Đào_Tạo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDL_Trung_Tâm_Đào_Tạo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CSDL_Trung_Tâm_Đào_Tạo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CSDL_Trung_Tâm_Đào_Tạo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CSDL_Trung_Tâm_Đào_Tạo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDL_Trung_Tâm_Đào_Tạo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET RECOVERY FULL 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET  MULTI_USER 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CSDL_Trung_Tâm_Đào_Tạo', N'ON'
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET QUERY_STORE = OFF
GO
USE [CSDL_Trung_Tâm_Đào_Tạo]
GO
/****** Object:  Table [dbo].[account]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_taikhoan] [nvarchar](50) NOT NULL,
	[mat_khau] [nvarchar](100) NOT NULL,
	[quyen] [nvarchar](30) NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[ngay_tao] [datetime] NOT NULL,
	[trang_thai] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_nang]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_nang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_chucnang_cha] [int] NOT NULL,
	[ten_chucnang] [nvarchar](100) NOT NULL,
	[stt] [int] NOT NULL,
	[icon] [nvarchar](100) NULL,
	[ten_dieukhien] [nvarchar](100) NOT NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[trang_thai] [int] NOT NULL,
	[nguoi_tao] [nvarchar](50) NOT NULL,
	[ngay_tao] [datetime] NOT NULL,
 CONSTRAINT [PK_chuc_nang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chuc_vu]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chuc_vu](
	[ma_chucvu] [nvarchar](10) NOT NULL,
	[ten_chucvu] [nvarchar](100) NULL,
	[mo_ta] [nvarchar](200) NULL,
	[ghi_chu] [nvarchar](300) NULL,
 CONSTRAINT [PK_chuc_vu] PRIMARY KEY CLUSTERED 
(
	[ma_chucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dia_diem]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dia_diem](
	[id] [int] NOT NULL,
	[ten_dia_diem] [nvarchar](300) NOT NULL,
	[dia_chi] [nvarchar](300) NOT NULL,
	[mo_ta] [nvarchar](500) NULL,
	[trang_thai] [int] NOT NULL,
 CONSTRAINT [PK_dia_diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diem]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diem](
	[id_diem] [int] IDENTITY(1,1) NOT NULL,
	[ma_hocvien] [nvarchar](10) NULL,
	[ma_monhoc] [nvarchar](10) NULL,
	[ma_lophoc] [nvarchar](10) NULL,
	[diem_giuaki] [float] NULL,
	[diem_cuoiki] [float] NULL,
	[nhan_xet] [nvarchar](100) NULL,
	[ghi_chu] [nvarchar](300) NULL,
 CONSTRAINT [PK_diem] PRIMARY KEY CLUSTERED 
(
	[id_diem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giang_vien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giang_vien](
	[id_giangvien] [int] IDENTITY(1,1) NOT NULL,
	[ho_ten] [nvarchar](100) NOT NULL,
	[ngay_sinh] [date] NOT NULL,
	[gioi_tinh] [nvarchar](5) NULL,
	[cmtnd] [nvarchar](12) NOT NULL,
	[que_quan] [nvarchar](200) NOT NULL,
	[so_dien_thoai] [nvarchar](12) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[hoc_van] [nvarchar](100) NULL,
	[ngay_bat_dau_lv] [date] NULL,
	[trang_thai] [int] NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[anh] [nvarchar](max) NULL,
 CONSTRAINT [PK_giang_vien] PRIMARY KEY CLUSTERED 
(
	[id_giangvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoc_phi]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoc_phi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_hocvien] [nvarchar](10) NOT NULL,
	[ma_lophoc] [nvarchar](10) NOT NULL,
	[id_taikhoan_hocphi] [int] NULL,
	[hinhthuc_dong] [nvarchar](50) NULL,
	[hoc_phi] [int] NOT NULL,
	[da_dong] [int] NULL,
	[ngay_dong] [datetime] NULL,
	[trang_thai] [int] NOT NULL,
 CONSTRAINT [PK_hoc_phi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoc_vien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoc_vien](
	[ma_hocvien] [nvarchar](10) NOT NULL,
	[ho_ten] [nvarchar](100) NOT NULL,
	[ngay_sinh] [date] NOT NULL,
	[gioi_tinh] [nvarchar](5) NOT NULL,
	[cmtnd] [nvarchar](12) NOT NULL,
	[quoc_tich] [nvarchar](50) NULL,
	[que_quan] [nvarchar](200) NOT NULL,
	[so_dien_thoai] [nvarchar](12) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[ngay_nhap_hoc] [date] NOT NULL,
	[trang_thai] [int] NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[anh] [nvarchar](max) NULL,
 CONSTRAINT [PK_hoc_vien] PRIMARY KEY CLUSTERED 
(
	[ma_hocvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hocvien_dangky]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hocvien_dangky](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_hocvien] [nvarchar](10) NOT NULL,
	[id_taikhoan] [int] NOT NULL,
	[ma_monhoc] [nvarchar](10) NOT NULL,
	[ngay_dangky] [datetime] NOT NULL,
	[hinhthuc_dangky] [nvarchar](50) NOT NULL,
	[trang_thai] [nchar](10) NOT NULL,
	[thu_2] [int] NULL,
	[thu_3] [int] NULL,
	[thu_4] [int] NULL,
	[thu_5] [int] NULL,
	[thu_6] [int] NULL,
	[thu_7] [int] NULL,
	[chu_nhat] [int] NULL,
 CONSTRAINT [PK_hocvien_dangky] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hocvien_monhoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hocvien_monhoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_hocvien] [nvarchar](10) NOT NULL,
	[ma_monhoc] [nvarchar](10) NOT NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_hocvien_monhoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hop_dong]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hop_dong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_nhanvien] [nvarchar](10) NOT NULL,
	[ma_chucvu] [nvarchar](10) NOT NULL,
	[muc_luong] [int] NULL,
	[so_quyetdinh] [nvarchar](100) NULL,
	[ngay_ky] [datetime] NOT NULL,
	[ngay_hieuluc] [datetime] NOT NULL,
	[ngay_hethan] [datetime] NULL,
	[trang_thai] [int] NOT NULL,
	[ngay_chamdut] [datetime] NULL,
	[nguoi_ky] [nvarchar](100) NOT NULL,
	[ghi_chu] [nvarchar](300) NULL,
 CONSTRAINT [PK_hop_dong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khoa_hoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khoa_hoc](
	[ma_khoahoc] [nvarchar](10) NOT NULL,
	[ten_khoahoc] [nvarchar](100) NOT NULL,
	[thoi_gian_bd] [datetime] NOT NULL,
	[thoi_gian_kt] [datetime] NOT NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_khoa_hoc] PRIMARY KEY CLUSTERED 
(
	[ma_khoahoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lop_hoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lop_hoc](
	[ma_lophoc] [nvarchar](10) NOT NULL,
	[ma_khoahoc] [nvarchar](10) NOT NULL,
	[ten_lophoc] [nvarchar](100) NOT NULL,
	[ma_monhoc] [nvarchar](10) NULL,
	[so_hocvien] [int] NULL,
	[thoi_gian_bd] [date] NULL,
	[thoi_gian_kt] [date] NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_lop_hoc] PRIMARY KEY CLUSTERED 
(
	[ma_lophoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lop_hocvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lop_hocvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_lophoc] [nvarchar](10) NOT NULL,
	[ma_hocvien] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_lop_hocvien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lophoc_giangvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lophoc_giangvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_lophoc] [nvarchar](10) NULL,
	[id_giangvien] [int] NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_lophoc_giangvien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mon_hoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mon_hoc](
	[ma_monhoc] [nvarchar](10) NOT NULL,
	[ten_monhoc] [nvarchar](100) NOT NULL,
	[so_buoihoc] [int] NULL,
	[thoi_gian_buoihoc] [int] NULL,
	[hoc_phi] [int] NULL,
	[mo_ta] [nvarchar](100) NULL,
	[yeu_cau] [nvarchar](100) NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[trang_thai] [int] NULL,
 CONSTRAINT [PK_mon_hoc] PRIMARY KEY CLUSTERED 
(
	[ma_monhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[ma_nhanvien] [nvarchar](10) NOT NULL,
	[ma_chucvu] [nvarchar](10) NOT NULL,
	[ho_ten] [nvarchar](100) NOT NULL,
	[ngay_sinh] [datetime] NOT NULL,
	[gioi_tinh] [nvarchar](5) NOT NULL,
	[cmtnd] [nvarchar](12) NULL,
	[que_quan] [nvarchar](200) NULL,
	[so_dien_thoai] [nvarchar](12) NULL,
	[email] [nvarchar](200) NULL,
	[ngay_bd_lv] [datetime] NOT NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[trang_thai] [int] NOT NULL,
	[anh] [nvarchar](max) NULL,
 CONSTRAINT [PK_nhan_vien] PRIMARY KEY CLUSTERED 
(
	[ma_nhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien_chucvu]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien_chucvu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_nhanvien] [nvarchar](10) NULL,
	[ma_chucvu] [nvarchar](10) NULL,
 CONSTRAINT [PK_nhanvien_chucvu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien_taikhoan]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien_taikhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_nhanvien] [nvarchar](10) NOT NULL,
	[id_taikhoan] [int] NOT NULL,
 CONSTRAINT [PK_nhanvien_taikhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong_hoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong_hoc](
	[id_phonghoc] [int] NOT NULL,
	[id_diadiem] [int] NOT NULL,
	[ten_phong] [nvarchar](100) NOT NULL,
	[tang] [int] NOT NULL,
	[so_luong_hocvien] [int] NOT NULL,
	[ghi_chu] [nvarchar](300) NULL,
 CONSTRAINT [PK_phong_hoc] PRIMARY KEY CLUSTERED 
(
	[id_phonghoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quyen]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_quyen] [nvarchar](100) NOT NULL,
	[mo_ta] [nvarchar](100) NULL,
 CONSTRAINT [PK_quyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quyen_chucnang]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen_chucnang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_quyen] [int] NOT NULL,
	[id_chucnang] [int] NOT NULL,
 CONSTRAINT [PK_quyen_chucnang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quyen_nguoidung]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen_nguoidung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ma_nhanvien] [nvarchar](10) NOT NULL,
	[id_quyen] [int] NOT NULL,
 CONSTRAINT [PK_quyen_nguoidung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_taikhoan] [nvarchar](100) NOT NULL,
	[mat_khau] [nvarchar](300) NOT NULL,
	[ngay_hieuluc] [datetime] NOT NULL,
	[thoigian_hieuluc] [int] NOT NULL,
	[ghi_chu] [nvarchar](300) NULL,
	[trang_thai] [int] NOT NULL,
	[nguoi_tao] [nvarchar](50) NOT NULL,
	[ngay_tao] [datetime] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [ten_taikhoan], [mat_khau], [quyen], [ghi_chu], [ngay_tao], [trang_thai]) VALUES (1, N'phamvantu', N'tupham', N'Admin', N'no notes', CAST(N'2020-03-11T11:52:43.000' AS DateTime), 1)
INSERT [dbo].[account] ([id], [ten_taikhoan], [mat_khau], [quyen], [ghi_chu], [ngay_tao], [trang_thai]) VALUES (2, N'nguyenphuongtrang', N'trangnguyen', N'Users', N'no notes', CAST(N'2020-03-11T11:47:34.000' AS DateTime), 1)
INSERT [dbo].[account] ([id], [ten_taikhoan], [mat_khau], [quyen], [ghi_chu], [ngay_tao], [trang_thai]) VALUES (3, N'phamthuthu', N'thupham', N'Admin', N'no notes', CAST(N'2020-03-11T11:46:17.000' AS DateTime), 1)
INSERT [dbo].[account] ([id], [ten_taikhoan], [mat_khau], [quyen], [ghi_chu], [ngay_tao], [trang_thai]) VALUES (5, N'phamthidung', N'dungpham', N'Users', N'no notes', CAST(N'2020-06-11T08:48:54.000' AS DateTime), 0)
INSERT [dbo].[account] ([id], [ten_taikhoan], [mat_khau], [quyen], [ghi_chu], [ngay_tao], [trang_thai]) VALUES (8, N'phamnhathoang', N'1', N'Admin', N'no notes', CAST(N'2021-01-21T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[account] OFF
INSERT [dbo].[chuc_vu] ([ma_chucvu], [ten_chucvu], [mo_ta], [ghi_chu]) VALUES (N'GD', N'Giám đốc', N'Người điều hành công ty', N'no notes')
INSERT [dbo].[chuc_vu] ([ma_chucvu], [ten_chucvu], [mo_ta], [ghi_chu]) VALUES (N'NV', N'Nhân viên', N'Nhân viên hành chính', N'no notes')
INSERT [dbo].[chuc_vu] ([ma_chucvu], [ten_chucvu], [mo_ta], [ghi_chu]) VALUES (N'PGD', N'Phó Giám Ðốc', N'Người điều hành công ty', N'no notes')
INSERT [dbo].[chuc_vu] ([ma_chucvu], [ten_chucvu], [mo_ta], [ghi_chu]) VALUES (N'PGD1', N'Phó giám đốc', N'Điều hành công ty', N'No Notes')
SET IDENTITY_INSERT [dbo].[giang_vien] ON 

INSERT [dbo].[giang_vien] ([id_giangvien], [ho_ten], [ngay_sinh], [gioi_tinh], [cmtnd], [que_quan], [so_dien_thoai], [email], [hoc_van], [ngay_bat_dau_lv], [trang_thai], [ghi_chu], [anh]) VALUES (1, N'Phạm Thị Thu', CAST(N'1992-09-20' AS Date), N'Nữ', N'036099009515', N'Nam Định', N'0947417910', N'thupham@gmail.com', N'Đại học', CAST(N'2016-07-01' AS Date), 1, N'Tốt nghiệp trường đại học thương mại', N'D:\Picture\Ảnh thẻ\photo-14-15459815947791508851746.jpg')
SET IDENTITY_INSERT [dbo].[giang_vien] OFF
SET IDENTITY_INSERT [dbo].[hoc_phi] ON 

INSERT [dbo].[hoc_phi] ([id], [ma_hocvien], [ma_lophoc], [id_taikhoan_hocphi], [hinhthuc_dong], [hoc_phi], [da_dong], [ngay_dong], [trang_thai]) VALUES (1, N'HT00001', N'LH00001', 1, N'Tiền mặt', 3000000, 1000000, CAST(N'2020-02-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoc_phi] ([id], [ma_hocvien], [ma_lophoc], [id_taikhoan_hocphi], [hinhthuc_dong], [hoc_phi], [da_dong], [ngay_dong], [trang_thai]) VALUES (2, N'HT00005', N'LH00001', 1, N'Tiền mặt', 3000000, 3000000, CAST(N'2020-11-06T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[hoc_phi] ([id], [ma_hocvien], [ma_lophoc], [id_taikhoan_hocphi], [hinhthuc_dong], [hoc_phi], [da_dong], [ngay_dong], [trang_thai]) VALUES (6, N'HT00004', N'LH00006', 1, N'Tiền mặt', 1500000, 3000000, CAST(N'2020-06-11T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[hoc_phi] OFF
INSERT [dbo].[hoc_vien] ([ma_hocvien], [ho_ten], [ngay_sinh], [gioi_tinh], [cmtnd], [quoc_tich], [que_quan], [so_dien_thoai], [email], [ngay_nhap_hoc], [trang_thai], [ghi_chu], [anh]) VALUES (N'HT00001', N'Phạm Nhật Hoàng', CAST(N'1998-07-07' AS Date), N'Nam', N'036099009515', N'Việt Nam', N'Nam Định', N'0947417910', N'pttu99@gmail.com', CAST(N'2019-07-07' AS Date), 1, N'Trường đại học công nghệ giao thông vận tải', N'D:\Picture\Ảnh thẻ\140298192_820306555185872_1703433035494616453_n.png')
INSERT [dbo].[hoc_vien] ([ma_hocvien], [ho_ten], [ngay_sinh], [gioi_tinh], [cmtnd], [quoc_tich], [que_quan], [so_dien_thoai], [email], [ngay_nhap_hoc], [trang_thai], [ghi_chu], [anh]) VALUES (N'HT00004', N'Trần Mỹ Duyên', CAST(N'1990-06-07' AS Date), N'Nữ', N'036099009515', N'Việt Nam', N'Hà Nội', N'0947417910', N'myduyen@gmail.com', CAST(N'2020-01-02' AS Date), 1, N'Trường đại học quốc gia Hà Nội', N'D:\Picture\Ảnh thẻ\da1f3f435a05b35bea14.jpg')
INSERT [dbo].[hoc_vien] ([ma_hocvien], [ho_ten], [ngay_sinh], [gioi_tinh], [cmtnd], [quoc_tich], [que_quan], [so_dien_thoai], [email], [ngay_nhap_hoc], [trang_thai], [ghi_chu], [anh]) VALUES (N'HT00005', N'Phạm Thị Huyền', CAST(N'1996-09-09' AS Date), N'Nữ', N'036099009515', N'Việt Nam', N'Nam Định', N'0947417910', N'phamhuyen@gmail.com', CAST(N'2018-09-09' AS Date), 1, N'Trường đại học quốc gia', N'D:\Picture\Ảnh thẻ\nu-sinh-hai-duong-so-huu-anh-the-tuyet-depdocx-1559060708555.jpeg')
SET IDENTITY_INSERT [dbo].[hocvien_dangky] ON 

INSERT [dbo].[hocvien_dangky] ([id], [ma_hocvien], [id_taikhoan], [ma_monhoc], [ngay_dangky], [hinhthuc_dangky], [trang_thai], [thu_2], [thu_3], [thu_4], [thu_5], [thu_6], [thu_7], [chu_nhat]) VALUES (1, N'HT00001', 1, N'NN001', CAST(N'2020-09-20T19:27:50.920' AS DateTime), N'offline', N'1         ', 0, 1, 0, 1, 1, 0, 1)
INSERT [dbo].[hocvien_dangky] ([id], [ma_hocvien], [id_taikhoan], [ma_monhoc], [ngay_dangky], [hinhthuc_dangky], [trang_thai], [thu_2], [thu_3], [thu_4], [thu_5], [thu_6], [thu_7], [chu_nhat]) VALUES (4, N'HT00004', 1, N'NN002', CAST(N'2020-09-20T00:00:00.000' AS DateTime), N'offline', N'1         ', 0, 1, 1, 0, 1, 1, 0)
INSERT [dbo].[hocvien_dangky] ([id], [ma_hocvien], [id_taikhoan], [ma_monhoc], [ngay_dangky], [hinhthuc_dangky], [trang_thai], [thu_2], [thu_3], [thu_4], [thu_5], [thu_6], [thu_7], [chu_nhat]) VALUES (6, N'HT00005', 1, N'NN001', CAST(N'2020-09-21T00:00:00.000' AS DateTime), N'offline', N'1         ', 1, 1, 0, 1, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[hocvien_dangky] OFF
SET IDENTITY_INSERT [dbo].[hop_dong] ON 

INSERT [dbo].[hop_dong] ([id], [ma_nhanvien], [ma_chucvu], [muc_luong], [so_quyetdinh], [ngay_ky], [ngay_hieuluc], [ngay_hethan], [trang_thai], [ngay_chamdut], [nguoi_ky], [ghi_chu]) VALUES (2, N'NV00001', N'NV', 15000000, N'A1', CAST(N'2020-09-30T00:00:00.000' AS DateTime), CAST(N'2020-09-30T00:00:00.000' AS DateTime), CAST(N'2030-09-30T00:00:00.000' AS DateTime), 1, CAST(N'2020-09-30T00:00:00.000' AS DateTime), N'Phạm Ngọc Tuấn', N'no notes')
INSERT [dbo].[hop_dong] ([id], [ma_nhanvien], [ma_chucvu], [muc_luong], [so_quyetdinh], [ngay_ky], [ngay_hieuluc], [ngay_hethan], [trang_thai], [ngay_chamdut], [nguoi_ky], [ghi_chu]) VALUES (4, N'NV00002', N'GD', 20000000, N'A1', CAST(N'2020-09-30T00:00:00.000' AS DateTime), CAST(N'2020-09-30T00:00:00.000' AS DateTime), CAST(N'2030-09-30T00:00:00.000' AS DateTime), 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'Phạm Ngọc Tuấn', N'No Notes')
SET IDENTITY_INSERT [dbo].[hop_dong] OFF
INSERT [dbo].[khoa_hoc] ([ma_khoahoc], [ten_khoahoc], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'KH00001', N'C#', CAST(N'2020-01-01T00:00:00.000' AS DateTime), CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'No Notes', 1)
INSERT [dbo].[khoa_hoc] ([ma_khoahoc], [ten_khoahoc], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'KH00002', N'Java', CAST(N'2019-01-01T00:00:00.000' AS DateTime), CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'No Notes', 1)
INSERT [dbo].[khoa_hoc] ([ma_khoahoc], [ten_khoahoc], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'KH00003', N'Php', CAST(N'2020-06-01T00:00:00.000' AS DateTime), CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'No Notes', 1)
INSERT [dbo].[khoa_hoc] ([ma_khoahoc], [ten_khoahoc], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'KH00004', N'Ruby', CAST(N'2018-02-01T00:00:00.000' AS DateTime), CAST(N'2020-10-10T00:00:00.000' AS DateTime), N'No Notes', 1)
INSERT [dbo].[lop_hoc] ([ma_lophoc], [ma_khoahoc], [ten_lophoc], [ma_monhoc], [so_hocvien], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'LH00001', N'KH00001', N'CE00001', N'NN001', 15, CAST(N'2020-01-01' AS Date), CAST(N'2020-10-01' AS Date), N'No Notes', 1)
INSERT [dbo].[lop_hoc] ([ma_lophoc], [ma_khoahoc], [ten_lophoc], [ma_monhoc], [so_hocvien], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'LH00002', N'KH00001', N'CE00002', N'NN001', 15, CAST(N'2020-01-01' AS Date), CAST(N'2020-10-01' AS Date), N'No Notes', 1)
INSERT [dbo].[lop_hoc] ([ma_lophoc], [ma_khoahoc], [ten_lophoc], [ma_monhoc], [so_hocvien], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'LH00003', N'KH00002', N'CE00003', N'NN003', 15, CAST(N'2020-01-01' AS Date), CAST(N'2020-10-01' AS Date), N'No Notes', 1)
INSERT [dbo].[lop_hoc] ([ma_lophoc], [ma_khoahoc], [ten_lophoc], [ma_monhoc], [so_hocvien], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'LH00004', N'KH00001', N'CE00004', N'NN001', 15, CAST(N'2020-01-01' AS Date), CAST(N'2020-01-10' AS Date), N'No Notes', 1)
INSERT [dbo].[lop_hoc] ([ma_lophoc], [ma_khoahoc], [ten_lophoc], [ma_monhoc], [so_hocvien], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'LH00005', N'KH00001', N'CE00005', N'NN001', 15, CAST(N'2020-01-01' AS Date), CAST(N'2020-10-01' AS Date), N'No Notes', 1)
INSERT [dbo].[lop_hoc] ([ma_lophoc], [ma_khoahoc], [ten_lophoc], [ma_monhoc], [so_hocvien], [thoi_gian_bd], [thoi_gian_kt], [ghi_chu], [trang_thai]) VALUES (N'LH00006', N'KH00004', N'CE00006', N'NN002', 15, CAST(N'2020-01-01' AS Date), CAST(N'2020-10-01' AS Date), N'No Notes', 1)
SET IDENTITY_INSERT [dbo].[lop_hocvien] ON 

INSERT [dbo].[lop_hocvien] ([id], [ma_lophoc], [ma_hocvien]) VALUES (1, N'LH00001', N'HT00005')
INSERT [dbo].[lop_hocvien] ([id], [ma_lophoc], [ma_hocvien]) VALUES (2, N'LH00006', N'HT00004')
SET IDENTITY_INSERT [dbo].[lop_hocvien] OFF
INSERT [dbo].[mon_hoc] ([ma_monhoc], [ten_monhoc], [so_buoihoc], [thoi_gian_buoihoc], [hoc_phi], [mo_ta], [yeu_cau], [ghi_chu], [trang_thai]) VALUES (N'NN001', N'Lập trình C#', 15, 150, 3000000, N'Lập trình từ cơ bản đến nâng cao', N'Laptop', N'No Notes', 1)
INSERT [dbo].[mon_hoc] ([ma_monhoc], [ten_monhoc], [so_buoihoc], [thoi_gian_buoihoc], [hoc_phi], [mo_ta], [yeu_cau], [ghi_chu], [trang_thai]) VALUES (N'NN002', N'Lập trình C', 15, 120, 1500000, N'lập trình cơ bản', N'Laptop', N'no notes', 0)
INSERT [dbo].[mon_hoc] ([ma_monhoc], [ten_monhoc], [so_buoihoc], [thoi_gian_buoihoc], [hoc_phi], [mo_ta], [yeu_cau], [ghi_chu], [trang_thai]) VALUES (N'NN003', N'Lập trình Java', 15, 150, 3000000, N'Cơ bản, nâng cao', N'Laptop', N'No Notes', 1)
INSERT [dbo].[mon_hoc] ([ma_monhoc], [ten_monhoc], [so_buoihoc], [thoi_gian_buoihoc], [hoc_phi], [mo_ta], [yeu_cau], [ghi_chu], [trang_thai]) VALUES (N'NN004', N'Lập trình Php', 15, 150, 3000000, N'Cơ bản, nâng cao', N'Laptop', N'no notes', 1)
INSERT [dbo].[mon_hoc] ([ma_monhoc], [ten_monhoc], [so_buoihoc], [thoi_gian_buoihoc], [hoc_phi], [mo_ta], [yeu_cau], [ghi_chu], [trang_thai]) VALUES (N'NN005', N'Lập trình Ruby', 15, 150, 5000000, N'Lập trình cơ bản', N'Laptop', N'No Notes', 1)
INSERT [dbo].[nhan_vien] ([ma_nhanvien], [ma_chucvu], [ho_ten], [ngay_sinh], [gioi_tinh], [cmtnd], [que_quan], [so_dien_thoai], [email], [ngay_bd_lv], [ghi_chu], [trang_thai], [anh]) VALUES (N'NV00001', N'NV', N'Phạm Thị Huyền', CAST(N'1990-02-01T00:00:00.000' AS DateTime), N'Nữ', N'036099009515', N'Nam Định', N'0947417910', N'phamhuyen@gmail.com', CAST(N'2020-09-20T00:00:00.000' AS DateTime), N'Tốt nghiệp trường đại học quốc gia Hà Nội', 1, N'D:\Picture\Ảnh thẻ\phamanh.jpg')
INSERT [dbo].[nhan_vien] ([ma_nhanvien], [ma_chucvu], [ho_ten], [ngay_sinh], [gioi_tinh], [cmtnd], [que_quan], [so_dien_thoai], [email], [ngay_bd_lv], [ghi_chu], [trang_thai], [anh]) VALUES (N'NV00002', N'NV', N'Phạm Thị Ánh', CAST(N'1992-09-20T22:51:27.000' AS DateTime), N'Nữ', N'036099009515', N'Nam Định', N'0947417910', N'phamanh@gmail.com', CAST(N'2020-09-20T22:51:27.000' AS DateTime), N'Trường đại học công nghiệp', 1, N'D:\Picture\Ảnh thẻ\hang-phan-10-1568815680078.jpg')
SET IDENTITY_INSERT [dbo].[tai_khoan] ON 

INSERT [dbo].[tai_khoan] ([id], [ten_taikhoan], [mat_khau], [ngay_hieuluc], [thoigian_hieuluc], [ghi_chu], [trang_thai], [nguoi_tao], [ngay_tao]) VALUES (1, N'trangnguyen', N'1', CAST(N'2020-10-13T00:00:00.000' AS DateTime), 30, N'admin', 1, N'Phạm Văn Tú', CAST(N'2020-10-13T00:00:00.000' AS DateTime))
INSERT [dbo].[tai_khoan] ([id], [ten_taikhoan], [mat_khau], [ngay_hieuluc], [thoigian_hieuluc], [ghi_chu], [trang_thai], [nguoi_tao], [ngay_tao]) VALUES (47, N'phamvantu', N'1', CAST(N'2020-10-22T00:00:00.000' AS DateTime), 30, N'admin', 1, N'Phạm Văn Tú', CAST(N'2020-10-22T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tai_khoan] OFF
ALTER TABLE [dbo].[hocvien_monhoc]  WITH CHECK ADD  CONSTRAINT [FK_hocvien_monhoc_hoc_vien] FOREIGN KEY([ma_hocvien])
REFERENCES [dbo].[hoc_vien] ([ma_hocvien])
GO
ALTER TABLE [dbo].[hocvien_monhoc] CHECK CONSTRAINT [FK_hocvien_monhoc_hoc_vien]
GO
ALTER TABLE [dbo].[hocvien_monhoc]  WITH CHECK ADD  CONSTRAINT [FK_hocvien_monhoc_mon_hoc] FOREIGN KEY([ma_monhoc])
REFERENCES [dbo].[mon_hoc] ([ma_monhoc])
GO
ALTER TABLE [dbo].[hocvien_monhoc] CHECK CONSTRAINT [FK_hocvien_monhoc_mon_hoc]
GO
ALTER TABLE [dbo].[lop_hoc]  WITH CHECK ADD  CONSTRAINT [FK_lop_hoc_mon_hoc] FOREIGN KEY([ma_monhoc])
REFERENCES [dbo].[mon_hoc] ([ma_monhoc])
GO
ALTER TABLE [dbo].[lop_hoc] CHECK CONSTRAINT [FK_lop_hoc_mon_hoc]
GO
ALTER TABLE [dbo].[lophoc_giangvien]  WITH CHECK ADD  CONSTRAINT [FK_lophoc_giangvien_giang_vien] FOREIGN KEY([id_giangvien])
REFERENCES [dbo].[giang_vien] ([id_giangvien])
GO
ALTER TABLE [dbo].[lophoc_giangvien] CHECK CONSTRAINT [FK_lophoc_giangvien_giang_vien]
GO
ALTER TABLE [dbo].[lophoc_giangvien]  WITH CHECK ADD  CONSTRAINT [FK_lophoc_giangvien_lop_hoc] FOREIGN KEY([ma_lophoc])
REFERENCES [dbo].[lop_hoc] ([ma_lophoc])
GO
ALTER TABLE [dbo].[lophoc_giangvien] CHECK CONSTRAINT [FK_lophoc_giangvien_lop_hoc]
GO
/****** Object:  StoredProcedure [dbo].[check_exits_khoahoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[check_exits_khoahoc]
	(@ma_khoahoc nvarchar(10))
as
begin
	select * from 
	khoa_hoc 
	where 
	ma_khoahoc = @ma_khoahoc
end
GO
/****** Object:  StoredProcedure [dbo].[check_exits_lophoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[check_exits_lophoc]
	@ma_lophoc nvarchar(10)
as
begin
	select * 
	from lop_hoc
	where ma_lophoc = @ma_lophoc 
end
GO
/****** Object:  StoredProcedure [dbo].[check_exits_monhoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[check_exits_monhoc]
	@ma_monhoc nvarchar(10)
as
begin
	select * 
	from mon_hoc
	where ma_monhoc = @ma_monhoc
end
GO
/****** Object:  StoredProcedure [dbo].[chitielophoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[chitielophoc]
 as
 begin
	select lop_hoc.ma_lophoc, lop_hoc.ten_lophoc, khoa_hoc.ma_khoahoc,khoa_hoc.ten_khoahoc, mon_hoc.ma_monhoc, mon_hoc.ten_monhoc, lop_hoc.so_hocvien, lop_hoc.thoi_gian_bd, lop_hoc.thoi_gian_kt, lop_hoc.trang_thai, lop_hoc.ghi_chu
	from 
	lop_hoc, mon_hoc, khoa_hoc 
	where 
	lop_hoc.ma_monhoc = mon_hoc.ma_monhoc 
	and
	lop_hoc.ma_khoahoc = khoa_hoc.ma_khoahoc
 end
GO
/****** Object:  StoredProcedure [dbo].[get_chucvu]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_chucvu]
as
begin
	select * from chuc_vu
end
GO
/****** Object:  StoredProcedure [dbo].[get_danhsach_donghoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_danhsach_donghoc]
as
begin
	select A.ma_hocvien, A.ma_lophoc, C.ten_monhoc, C.hoc_phi
	from lop_hocvien A
	left join (lop_hoc B left join mon_hoc C on B.ma_monhoc = C.ma_monhoc)
	on A.ma_lophoc = B.ma_lophoc
end
GO
/****** Object:  StoredProcedure [dbo].[get_danhsach_hocvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_danhsach_hocvien]
	@ma_lophoc nvarchar(10)
as
begin
	select B.id , C.ten_lophoc, A.ma_hocvien, A.ho_ten, A.ngay_sinh, A.gioi_tinh
	from hoc_vien A 
	inner join (lop_hocvien B inner join lop_hoc C on B.ma_lophoc = C.ma_lophoc)
	on A.ma_hocvien = B.ma_hocvien
	where C.ma_lophoc = @ma_lophoc or '-1' = @ma_lophoc
end
GO
/****** Object:  StoredProcedure [dbo].[get_gioitinh_hocvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_gioitinh_hocvien]
as
begin
	select gioi_tinh, count(*) as tong
	from hoc_vien
	where trang_thai = 1
	group by gioi_tinh
end
GO
/****** Object:  StoredProcedure [dbo].[get_hocphi]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_hocphi]
as
begin
	select B.ma_hocvien, C.ma_lophoc, A.ten_monhoc, C.hinhthuc_dong, A.hoc_phi, C.da_dong, C.ngay_dong, C.trang_thai
	from mon_hoc A
	right join (hocvien_dangky B right join hoc_phi C on B.ma_hocvien = C.ma_hocvien)
	on A.ma_monhoc = B.ma_monhoc
	where A.ma_monhoc = B.ma_monhoc and B.ma_hocvien = C.ma_hocvien
end
GO
/****** Object:  StoredProcedure [dbo].[get_hocvien_dangky_phanlop]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_hocvien_dangky_phanlop]
	@ma_monhoc nvarchar(10)
as
begin
	select A.ma_hocvien, C.ho_ten,  D.ma_monhoc, D.ten_monhoc, A.ngay_dangky, A.thu_2, A.thu_3, A.thu_4, A.thu_5, A.thu_6, A.thu_7, A.chu_nhat
	from ((hocvien_dangky A left join hoc_vien C on A.ma_hocvien = C.ma_hocvien) inner join mon_hoc D on A.ma_monhoc = D.ma_monhoc)
	left join lop_hocvien B
	on A.ma_hocvien = B.ma_hocvien
	where A.ma_hocvien not in (select ma_hocvien from lop_hocvien) and (A.ma_monhoc = @ma_monhoc or '-1' = @ma_monhoc)
	order by A.ngay_dangky asc 
end
GO
/****** Object:  StoredProcedure [dbo].[get_hocvien_donghoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_hocvien_donghoc]
	@ma_hocvien nvarchar(10)
as
begin
	select A.ma_hocvien, A.ma_lophoc, C.ten_monhoc, C.hoc_phi
	from lop_hocvien A
	left join (lop_hoc B left join mon_hoc C on B.ma_monhoc = C.ma_monhoc)
	on A.ma_lophoc = B.ma_lophoc
	where A.ma_hocvien = @ma_hocvien
end
GO
/****** Object:  StoredProcedure [dbo].[get_hocvien_lophoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[get_hocvien_lophoc]
as
begin
	select A.ma_hocvien, A.ho_ten, A.ngay_sinh, C.ten_lophoc
	from hoc_vien A 
	inner join (lop_hocvien B inner join lop_hoc C on B.ma_lophoc = C.ma_lophoc)
	on A.ma_hocvien = B.ma_hocvien
end
GO
/****** Object:  StoredProcedure [dbo].[get_hocvien_phanlop]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_hocvien_phanlop]
as 
begin
	select A.ma_hocvien, C.ho_ten,  D.ma_monhoc, D.ten_monhoc, A.ngay_dangky, A.thu_2, A.thu_3, A.thu_4, A.thu_5, A.thu_6, A.thu_7, A.chu_nhat
	from ((hocvien_dangky A left join hoc_vien C on A.ma_hocvien = C.ma_hocvien) inner join mon_hoc D on A.ma_monhoc = D.ma_monhoc)
	left join lop_hocvien B
	on A.ma_hocvien = B.ma_hocvien
	where A.ma_hocvien not in (select ma_hocvien from lop_hocvien)
	order by A.ngay_dangky asc 
end
GO
/****** Object:  StoredProcedure [dbo].[get_hocvien_phanlop_combobox]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_hocvien_phanlop_combobox]
	@ma_monhoc nvarchar(10)
as
begin
	select A.ma_hocvien, C.ho_ten,  D.ma_monhoc, D.ten_monhoc, A.ngay_dangky, A.thu_2, A.thu_3, A.thu_4, A.thu_5, A.thu_6, A.thu_7, A.chu_nhat
	from ((hocvien_dangky A left join hoc_vien C on A.ma_hocvien = C.ma_hocvien) right join mon_hoc D on A.ma_monhoc = D.ma_monhoc)
	left join lop_hocvien B
	on A.ma_hocvien = B.ma_hocvien
	where A.ma_hocvien not in (select ma_hocvien from lop_hocvien) and D.ma_monhoc = @ma_monhoc
	order by A.ngay_dangky asc 
end
GO
/****** Object:  StoredProcedure [dbo].[get_lophoc_khoahoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_lophoc_khoahoc]
as
begin
	select ten_khoahoc, count(ten_lophoc) as tong
	from lop_hoc, khoa_hoc
	where lop_hoc.ma_khoahoc = khoa_hoc.ma_khoahoc and lop_hoc.trang_thai = 1
	group by ten_khoahoc
end
GO
/****** Object:  StoredProcedure [dbo].[get_soluong_tuoi]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_soluong_tuoi]
as
begin
	select datediff(year, ngay_sinh, ngay_nhap_hoc) as tuoi, count(datediff(year, ngay_sinh, ngay_nhap_hoc)) as so_luong
	from hoc_vien  
	where DATEDIFF(year, ngay_sinh, ngay_nhap_hoc) >= 18
	group by datediff(year, ngay_sinh, ngay_nhap_hoc)
end
GO
/****** Object:  StoredProcedure [dbo].[get_thoigian_dangky]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_thoigian_dangky]
as
begin
	select year(ngay_dangky) as nam, count(ma_hocvien) as soluong
	from hocvien_dangky
	where trang_thai = 1
	group by year(ngay_dangky)
	order by year(ngay_dangky) asc
end
GO
/****** Object:  StoredProcedure [dbo].[insert_chucvu]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_chucvu]
	@ma_chucvu nvarchar(10),
	@ten_chucvu nvarchar(100),
	@mo_ta nvarchar(200),
	@ghi_chu nvarchar(300)
as
begin
	Insert into chuc_vu values (@ma_chucvu, @ten_chucvu, @mo_ta, @ghi_chu)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_giangvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_giangvien]
	@ho_ten nvarchar(100),
	@ngay_sinh datetime,
	@gioi_tinh nvarchar(5),
	@cmtnd nvarchar(12),
	@que_quan nvarchar(200),
	@so_dien_thoai nvarchar(12),
	@email nvarchar(100),
	@hoc_van nvarchar(100),
	@ngay_bat_dau_lv date,
	@trang_thai int,
	@ghi_chu nvarchar(300),
	@anh nvarchar(MAX)
as
begin
	Insert into giang_vien
	values
	(@ho_ten, @ngay_sinh, @gioi_tinh, @cmtnd, @que_quan, @so_dien_thoai, @email, @hoc_van, @ngay_bat_dau_lv, @trang_thai, @ghi_chu, @anh)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_hocphi]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_hocphi]
	@ma_hocvien nvarchar(10),
	@ma_lophoc nvarchar(10),
	@id_taikhoan_hocphi int,
	@hinhthuc_dong nvarchar(50),
	@hoc_phi int,
	@da_dong int,
	@ngay_dong datetime
as
begin
	set @hoc_phi = (select mon_hoc.hoc_phi from hocvien_dangky, mon_hoc where hocvien_dangky.ma_monhoc = mon_hoc.ma_monhoc and hocvien_dangky.ma_hocvien = @ma_hocvien)
	if(@da_dong < @hoc_phi)
		insert into hoc_phi values (@ma_hocvien, @ma_lophoc, @id_taikhoan_hocphi, @hinhthuc_dong, @hoc_phi, @da_dong, @ngay_dong, '0')
	else
		insert into hoc_phi values (@ma_hocvien, @ma_lophoc, @id_taikhoan_hocphi, @hinhthuc_dong, @hoc_phi, @da_dong, @ngay_dong, '1')
end
GO
/****** Object:  StoredProcedure [dbo].[insert_hocvien_dangky]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_hocvien_dangky]
	@ma_hocvien nvarchar(10),
	@id_taikhoan int,
	@ma_monhoc nvarchar(10),
	@ngay_dangky datetime,
	@hinhthuc_dangky nvarchar(50),
	@trang_thai int,
	@thu_2 int, 
	@thu_3 int,
	@thu_4 int, 
	@thu_5 int, 
	@thu_6 int, 
	@thu_7 int, 
	@chu_nhat int
as
begin
	insert into hocvien_dangky values (@ma_hocvien, @id_taikhoan, @ma_monhoc, @ngay_dangky, @hinhthuc_dangky, @trang_thai, @thu_2, @thu_3, @thu_4, @thu_5, @thu_6, @thu_7, @chu_nhat)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_hopdong]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_hopdong]
	@ma_nhanvien nvarchar(10),
	@ma_chucvu nvarchar(10),
	@muc_luong int,
	@so_quyetdinh nvarchar(100),
	@ngay_ky datetime,
	@ngay_hieuluc datetime,
	@ngay_hethan datetime,
	@trang_thai int,
	@ngay_chamdut datetime,
	@nguoi_ky nvarchar(100),
	@ghi_chu nvarchar(300)
as
begin
	insert into hop_dong values(@ma_nhanvien, @ma_chucvu, @muc_luong, @so_quyetdinh, @ngay_ky, @ngay_hieuluc, @ngay_hethan, @trang_thai, @ngay_chamdut, @nguoi_ky, @ghi_chu)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_lophoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insert_lophoc]
	@ma_lophoc nvarchar(10),
	@ma_khoahoc nvarchar(10),
	@ten_lophoc nvarchar(100),
	@ma_monhoc nvarchar(10),
	@so_hocvien int,
	@thoi_gian_bd date,
	@thoi_gian_kt date,
	@ghi_chu nvarchar(200),
	@trang_thai int
as
begin
	insert into lop_hoc(ma_lophoc, ma_khoahoc, ten_lophoc, ma_monhoc, so_hocvien, thoi_gian_bd, thoi_gian_kt, ghi_chu, trang_thai)
	values
	(@ma_lophoc, @ma_khoahoc, @ten_lophoc, @ma_monhoc, @so_hocvien, @thoi_gian_bd, @thoi_gian_kt, @ghi_chu, @trang_thai)
end
GO
/****** Object:  StoredProcedure [dbo].[insert_monhoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_monhoc]
	@ma_monhoc nvarchar(10),
	@ten_monhoc nvarchar(100),
	@so_buoihoc int,
	@thoi_gian_buoihoc int,
	@hoc_phi int,
	@mo_ta nvarchar(100),
	@yeu_cau nvarchar(100),
	@ghi_chu nvarchar(300),
	@trang_thai int
as
begin
	insert into mon_hoc
	values
	(@ma_monhoc, @ten_monhoc, @so_buoihoc, @thoi_gian_buoihoc, @hoc_phi, @mo_ta, @yeu_cau, @ghi_chu, @trang_thai);
end
GO
/****** Object:  StoredProcedure [dbo].[report_hocphi]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[report_hocphi]
as
begin
	select *
	from mon_hoc
end
GO
/****** Object:  StoredProcedure [dbo].[report_hocvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[report_hocvien]
	@ngay_dangky DATETIME
AS
BEGIN
	SELECT ROW_NUMBER() over(order by A.ma_hocvien) STT, 
		A.ho_ten, A.ngay_sinh, A.gioi_tinh, A.so_dien_thoai, A.que_quan, A.ngay_nhap_hoc, A.ghi_chu
	FROM hoc_vien A
	WHERE A.trang_thai = 1 and A.ngay_nhap_hoc	<= @ngay_dangky
END
GO
/****** Object:  StoredProcedure [dbo].[report_hocvien_nam]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[report_hocvien_nam]
	@nam int
as
begin
	select * 
	from hoc_vien
	where year(ngay_nhap_hoc) = @nam and trang_thai = 1
end
GO
/****** Object:  StoredProcedure [dbo].[report_hocvien_quy]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[report_hocvien_quy]
	@quy int
as
begin
	if @quy = 1
	begin 
		select * 
		from hoc_vien
		where month(ngay_nhap_hoc) between '1' and '3' and year(ngay_nhap_hoc) = year(GETDATE()) 
	end
	if @quy = 2
	begin
		select * 
		from hoc_vien
		where month(ngay_nhap_hoc) between '4' and '6' and year(ngay_nhap_hoc) = year(GETDATE()) 
	end
	if @quy = 3
	begin
		select * 
		from hoc_vien
		where month(ngay_nhap_hoc) between '7' and '9' and year(ngay_nhap_hoc) = year(GETDATE()) 
	end
	if @quy = 4
	begin
		select * 
		from hoc_vien
		where month(ngay_nhap_hoc) between '10' and '12' and year(ngay_nhap_hoc) = year(GETDATE()) 
	end
end

GO
/****** Object:  StoredProcedure [dbo].[report_hocvien_thang]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[report_hocvien_thang]
	@thang int 
as
begin
	select * 
	from hoc_vien
	where month(ngay_nhap_hoc) = @thang and trang_thai = '1'
end
GO
/****** Object:  StoredProcedure [dbo].[report_khoahoc_nam]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[report_khoahoc_nam]
	@nam int
as
begin
	select * 
	from khoa_hoc
	where year(thoi_gian_bd) = @nam and trang_thai = 1
end
GO
/****** Object:  StoredProcedure [dbo].[report_khoahoc_ngay]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[report_khoahoc_ngay]
	@tu_ngay datetime,
	@den_ngay datetime
as
begin
	select *
	from khoa_hoc
	where thoi_gian_bd between @tu_ngay and @den_ngay
end
GO
/****** Object:  StoredProcedure [dbo].[report_khoahoc_quy]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[report_khoahoc_quy]
	@quy int
as
begin
	if @quy = 1
	begin 
		select * 
		from khoa_hoc
		where month(thoi_gian_bd) between '1' and '3' and year(thoi_gian_bd) = year(GETDATE()) 
	end
	if @quy = 2
	begin
		select * 
		from khoa_hoc
		where month(thoi_gian_bd) between '4' and '6' and year(thoi_gian_bd) = year(GETDATE()) 
	end
	if @quy = 3
	begin
		select * 
		from khoa_hoc
		where month(thoi_gian_bd) between '7' and '9' and year(thoi_gian_bd) = year(GETDATE()) 
	end
	if @quy = 4
	begin
		select * 
		from khoa_hoc
		where month(thoi_gian_bd) between '10' and '12' and year(thoi_gian_bd) = year(GETDATE()) 
	end
end
GO
/****** Object:  StoredProcedure [dbo].[report_khoahoc_thang]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[report_khoahoc_thang]
	@thang int
as
begin
	select * 
	from khoa_hoc
	where month(thoi_gian_bd) = @thang and trang_thai = 1
end
GO
/****** Object:  StoredProcedure [dbo].[soluong_hocvien_ngay]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[soluong_hocvien_ngay]
	@tu_ngay datetime,
	@den_ngay datetime
as
begin
	select *
	from hoc_vien
	where ngay_nhap_hoc between @tu_ngay and @den_ngay
end
GO
/****** Object:  StoredProcedure [dbo].[update_giangvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_giangvien]
	@id_giangvien int,
	@ho_ten nvarchar(100),
	@ngay_sinh datetime,
	@gioi_tinh nvarchar(5),
	@cmtnd nvarchar(12),
	@que_quan nvarchar(200),
	@so_dien_thoai nvarchar(12),
	@email nvarchar(100),
	@hoc_van nvarchar(100),
	@ngay_bat_dau_lv date,
	@trang_thai int,
	@ghi_chu nvarchar(300),
	@anh nvarchar(MAX)
as
begin
	Update giang_vien 
	set 
		ho_ten = @ho_ten, ngay_sinh = @ngay_sinh, gioi_tinh = @gioi_tinh, cmtnd = @cmtnd, que_quan = @que_quan,
		so_dien_thoai = @so_dien_thoai, email = @email, hoc_van = @hoc_van, ngay_bat_dau_lv = @ngay_bat_dau_lv, trang_thai = @trang_thai, ghi_chu = @ghi_chu, anh = @anh
	where 
		id_giangvien = @id_giangvien and trang_thai = '1'

	set @id_giangvien = (select id_giangvien from giang_vien)
end
GO
/****** Object:  StoredProcedure [dbo].[update_hocphi]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_hocphi]
	@ma_hocvien nvarchar(10),
	@ma_lophoc nvarchar(10),
	@id_taikhoan_hocphi int,
	@hinhthuc_dong nvarchar(50),
	@hoc_phi int,
	@da_dong int,
	@trang_thai int
as
begin
	update hoc_phi set hinhthuc_dong = @hinhthuc_dong, hoc_phi = @hoc_phi, da_dong = @da_dong, trang_thai = @trang_thai where ma_hocvien = @ma_hocvien
end
GO
/****** Object:  StoredProcedure [dbo].[update_hocvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_hocvien]
	@ma_hocvien nvarchar(10),
	@ho_ten nvarchar(100),
	@ngay_sinh date,
	@gioi_tinh nvarchar(5),
	@cmtnd nvarchar(12),
	@quoc_tich nvarchar(50),
	@que_quan nvarchar(200),
	@so_dien_thoai nvarchar(12),
	@email nvarchar(100),
	@ngay_nhap_hoc date,
	@trang_thai int,
	@ghi_chu nvarchar(300),	
	@anh nvarchar(MAX)
as
begin
	update hoc_vien
	set
		ho_ten = @ho_ten, ngay_sinh = @ngay_sinh, gioi_tinh = @gioi_tinh, cmtnd = @cmtnd, quoc_tich = @quoc_tich, que_quan = @que_quan, 
		so_dien_thoai = @so_dien_thoai, email = @email, ngay_nhap_hoc = @ngay_nhap_hoc, trang_thai = @trang_thai, ghi_chu = @ghi_chu, anh = @anh
	where ma_hocvien = @ma_hocvien
end
GO
/****** Object:  StoredProcedure [dbo].[update_hocvien_dangky]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_hocvien_dangky]
	@id int,
	@ma_hocvien nvarchar(10),
	@id_taikhoan int,
	@ma_monhoc nvarchar(10),
	@ngay_dangky datetime,
	@hinhthuc_dangky nvarchar(50),
	@trang_thai int,
	@thu_2 int, 
	@thu_3 int,
	@thu_4 int, 
	@thu_5 int, 
	@thu_6 int, 
	@thu_7 int, 
	@chu_nhat int
as
begin
	update hocvien_dangky 
	set ma_hocvien = @ma_hocvien, id_taikhoan = @id_taikhoan, ma_monhoc = @ma_monhoc, ngay_dangky = @ngay_dangky, hinhthuc_dangky = @hinhthuc_dangky,
							trang_thai = @trang_thai, thu_2 = @thu_2, thu_3 = @thu_3, thu_4 = @thu_4, thu_5 = @thu_5, thu_6 = @thu_6, thu_7 = @thu_7, chu_nhat = @chu_nhat 
	where id = @id and trang_thai = '1'
end
GO
/****** Object:  StoredProcedure [dbo].[update_hopdong]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_hopdong]
	@id int,
	@ma_nhanvien nvarchar(10),
	@ma_chucvu nvarchar(10),
	@muc_luong int,
	@so_quyetdinh nvarchar(100),
	@ngay_ky datetime,
	@ngay_hieuluc datetime,
	@ngay_hethan datetime,
	@ngay_chamdut datetime,
	@nguoi_ky nvarchar(100),
	@ghi_chu nvarchar(300)
as
begin
	update hop_dong set ma_nhanvien = @ma_nhanvien, ma_chucvu = @ma_chucvu, muc_luong = @muc_luong, so_quyetdinh = @so_quyetdinh, ngay_ky = @ngay_ky, 
	ngay_hieuluc = @ngay_hieuluc, ngay_hethan = @ngay_hethan, ngay_chamdut = @ngay_chamdut, nguoi_ky = @nguoi_ky, ghi_chu = @ghi_chu
	where id = @id and trang_thai = '1'
end
GO
/****** Object:  StoredProcedure [dbo].[update_khoahoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_khoahoc]
	@ma_khoahoc nvarchar(10),
	@ten_khoahoc nvarchar(100),
	@thoi_gian_bd datetime,
	@thoi_gian_kt datetime,
	@ghi_chu nvarchar(300)
as
begin
	update khoa_hoc 
	set
		ten_khoahoc = @ten_khoahoc, thoi_gian_bd = @thoi_gian_bd, thoi_gian_kt = @thoi_gian_kt, ghi_chu = @ghi_chu
	where
		ma_khoahoc = @ma_khoahoc
end
GO
/****** Object:  StoredProcedure [dbo].[update_lophoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[update_lophoc]
	@ma_lophoc nvarchar(10),
	@ma_khoahoc nvarchar(10),
	@ten_lophoc nvarchar(100),
	@ma_monhoc nvarchar(10),
	@so_hocvien int,
	@thoi_gian_bd date,
	@thoi_gian_kt date,
	@ghi_chu nvarchar(200),
	@trang_thai int
as
begin
	update lop_hoc 
	set 
	ten_lophoc = @ten_lophoc, ma_khoahoc = @ma_khoahoc, ma_monhoc = @ma_monhoc, so_hocvien = @so_hocvien, thoi_gian_bd = @thoi_gian_bd, thoi_gian_kt = @thoi_gian_kt, ghi_chu = @ghi_chu
	where 
	ma_lophoc = @ma_lophoc and trang_thai = 1
end
GO
/****** Object:  StoredProcedure [dbo].[update_monhoc]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_monhoc]
	@ma_monhoc nvarchar(10),
	@ten_monhoc nvarchar(100),
	@so_buoihoc int,
	@thoi_gian_buoihoc int,
	@hoc_phi int,
	@mo_ta nvarchar(100),
	@yeu_cau nvarchar(100),
	@ghi_chu nvarchar(300),
	@trang_thai int
as
begin
	update mon_hoc
	set
		ten_monhoc = @ten_monhoc, so_buoihoc = @so_buoihoc, thoi_gian_buoihoc = @thoi_gian_buoihoc, hoc_phi = @hoc_phi, mo_ta = @mo_ta, yeu_cau = @yeu_cau, ghi_chu = @ghi_chu, trang_thai = @trang_thai
	where
		ma_monhoc = @ma_monhoc
end
GO
/****** Object:  StoredProcedure [dbo].[update_nhanvien]    Script Date: 1/3/2021 4:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[update_nhanvien]
	@ma_nhanvien nvarchar(10),
	@ho_ten nvarchar(100),
	@ngay_sinh date,
	@gioi_tinh nvarchar(5),
	@cmtnd nvarchar(12),
	@que_quan nvarchar(200),
	@so_dien_thoai nvarchar(12),
	@email nvarchar(100),
	@chuc_vu nvarchar(100),
	@ngay_bd_lv date,
	@trang_thai int,
	@ghi_chu nvarchar(300),	
	@anh nvarchar(MAX)
as
begin
	update nhan_vien
	set
		ma_chucvu = @chuc_vu, ho_ten = @ho_ten, ngay_sinh = @ngay_sinh, gioi_tinh = @gioi_tinh, cmtnd = @cmtnd, que_quan = @que_quan, 
		so_dien_thoai = @so_dien_thoai, email = @email, ngay_bd_lv = @ngay_bd_lv, ghi_chu = @ghi_chu, trang_thai = @trang_thai, anh = @anh
	where ma_nhanvien = @ma_nhanvien
end
GO
USE [master]
GO
ALTER DATABASE [CSDL_Trung_Tâm_Đào_Tạo] SET  READ_WRITE 
GO
