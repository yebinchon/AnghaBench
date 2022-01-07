; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_log_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"tvp5150: Video input source selection #1 = 0x%02x\0A\00", align 1
@TVP5150_VD_IN_SRC_SEL_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"tvp5150: Analog channel controls = 0x%02x\0A\00", align 1
@TVP5150_ANAL_CHL_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"tvp5150: Operation mode controls = 0x%02x\0A\00", align 1
@TVP5150_OP_MODE_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"tvp5150: Miscellaneous controls = 0x%02x\0A\00", align 1
@TVP5150_MISC_CTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"tvp5150: Autoswitch mask= 0x%02x\0A\00", align 1
@TVP5150_AUTOSW_MSK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"tvp5150: Color killer threshold control = 0x%02x\0A\00", align 1
@TVP5150_COLOR_KIL_THSH_CTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"tvp5150: Luminance processing controls #1 #2 and #3 = %02x %02x %02x\0A\00", align 1
@TVP5150_LUMA_PROC_CTL_1 = common dso_local global i32 0, align 4
@TVP5150_LUMA_PROC_CTL_2 = common dso_local global i32 0, align 4
@TVP5150_LUMA_PROC_CTL_3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"tvp5150: Brightness control = 0x%02x\0A\00", align 1
@TVP5150_BRIGHT_CTL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"tvp5150: Color saturation control = 0x%02x\0A\00", align 1
@TVP5150_SATURATION_CTL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"tvp5150: Hue control = 0x%02x\0A\00", align 1
@TVP5150_HUE_CTL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"tvp5150: Contrast control = 0x%02x\0A\00", align 1
@TVP5150_CONTRAST_CTL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"tvp5150: Outputs and data rates select = 0x%02x\0A\00", align 1
@TVP5150_DATA_RATE_SEL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [45 x i8] c"tvp5150: Configuration shared pins = 0x%02x\0A\00", align 1
@TVP5150_CONF_SHARED_PIN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"tvp5150: Active video cropping start = 0x%02x%02x\0A\00", align 1
@TVP5150_ACT_VD_CROP_ST_MSB = common dso_local global i32 0, align 4
@TVP5150_ACT_VD_CROP_ST_LSB = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [51 x i8] c"tvp5150: Active video cropping stop  = 0x%02x%02x\0A\00", align 1
@TVP5150_ACT_VD_CROP_STP_MSB = common dso_local global i32 0, align 4
@TVP5150_ACT_VD_CROP_STP_LSB = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"tvp5150: Genlock/RTC = 0x%02x\0A\00", align 1
@TVP5150_GENLOCK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [41 x i8] c"tvp5150: Horizontal sync start = 0x%02x\0A\00", align 1
@TVP5150_HORIZ_SYNC_START = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"tvp5150: Vertical blanking start = 0x%02x\0A\00", align 1
@TVP5150_VERT_BLANKING_START = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"tvp5150: Vertical blanking stop = 0x%02x\0A\00", align 1
@TVP5150_VERT_BLANKING_STOP = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [63 x i8] c"tvp5150: Chrominance processing control #1 and #2 = %02x %02x\0A\00", align 1
@TVP5150_CHROMA_PROC_CTL_1 = common dso_local global i32 0, align 4
@TVP5150_CHROMA_PROC_CTL_2 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [46 x i8] c"tvp5150: Interrupt reset register B = 0x%02x\0A\00", align 1
@TVP5150_INT_RESET_REG_B = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt enable register B = 0x%02x\0A\00", align 1
@TVP5150_INT_ENABLE_REG_B = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"tvp5150: Interrupt configuration register B = 0x%02x\0A\00", align 1
@TVP5150_INTT_CONFIG_REG_B = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [34 x i8] c"tvp5150: Video standard = 0x%02x\0A\00", align 1
@TVP5150_VIDEO_STD = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [50 x i8] c"tvp5150: Chroma gain factor: Cb=0x%02x Cr=0x%02x\0A\00", align 1
@TVP5150_CB_GAIN_FACT = common dso_local global i32 0, align 4
@TVP5150_CR_GAIN_FACTOR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [42 x i8] c"tvp5150: Macrovision on counter = 0x%02x\0A\00", align 1
@TVP5150_MACROVISION_ON_CTR = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [43 x i8] c"tvp5150: Macrovision off counter = 0x%02x\0A\00", align 1
@TVP5150_MACROVISION_OFF_CTR = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [50 x i8] c"tvp5150: ITU-R BT.656.%d timing(TVP5150AM1 only)\0A\00", align 1
@TVP5150_REV_SELECT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [31 x i8] c"tvp5150: Device ID = %02x%02x\0A\00", align 1
@TVP5150_MSB_DEV_ID = common dso_local global i32 0, align 4
@TVP5150_LSB_DEV_ID = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [40 x i8] c"tvp5150: ROM version = (hex) %02x.%02x\0A\00", align 1
@TVP5150_ROM_MAJOR_VER = common dso_local global i32 0, align 4
@TVP5150_ROM_MINOR_VER = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [43 x i8] c"tvp5150: Vertical line count = 0x%02x%02x\0A\00", align 1
@TVP5150_VERT_LN_COUNT_MSB = common dso_local global i32 0, align 4
@TVP5150_VERT_LN_COUNT_LSB = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt status register B = 0x%02x\0A\00", align 1
@TVP5150_INT_STATUS_REG_B = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt active register B = 0x%02x\0A\00", align 1
@TVP5150_INT_ACTIVE_REG_B = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [58 x i8] c"tvp5150: Status regs #1 to #5 = %02x %02x %02x %02x %02x\0A\00", align 1
@TVP5150_STATUS_REG_1 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_2 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_3 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_4 = common dso_local global i32 0, align 4
@TVP5150_STATUS_REG_5 = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"Teletext filter 1\00", align 1
@TVP5150_TELETEXT_FIL1_INI = common dso_local global i32 0, align 4
@TVP5150_TELETEXT_FIL1_END = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [18 x i8] c"Teletext filter 2\00", align 1
@TVP5150_TELETEXT_FIL2_INI = common dso_local global i32 0, align 4
@TVP5150_TELETEXT_FIL2_END = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [42 x i8] c"tvp5150: Teletext filter enable = 0x%02x\0A\00", align 1
@TVP5150_TELETEXT_FIL_ENA = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt status register A = 0x%02x\0A\00", align 1
@TVP5150_INT_STATUS_REG_A = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [47 x i8] c"tvp5150: Interrupt enable register A = 0x%02x\0A\00", align 1
@TVP5150_INT_ENABLE_REG_A = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [43 x i8] c"tvp5150: Interrupt configuration = 0x%02x\0A\00", align 1
@TVP5150_INT_CONF = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [39 x i8] c"tvp5150: VDP status register = 0x%02x\0A\00", align 1
@TVP5150_VDP_STATUS_REG = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [35 x i8] c"tvp5150: FIFO word count = 0x%02x\0A\00", align 1
@TVP5150_FIFO_WORD_COUNT = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [44 x i8] c"tvp5150: FIFO interrupt threshold = 0x%02x\0A\00", align 1
@TVP5150_FIFO_INT_THRESHOLD = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [30 x i8] c"tvp5150: FIFO reset = 0x%02x\0A\00", align 1
@TVP5150_FIFO_RESET = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [41 x i8] c"tvp5150: Line number interrupt = 0x%02x\0A\00", align 1
@TVP5150_LINE_NUMBER_INT = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [48 x i8] c"tvp5150: Pixel alignment register = 0x%02x%02x\0A\00", align 1
@TVP5150_PIX_ALIGN_REG_HIGH = common dso_local global i32 0, align 4
@TVP5150_PIX_ALIGN_REG_LOW = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [39 x i8] c"tvp5150: FIFO output control = 0x%02x\0A\00", align 1
@TVP5150_FIFO_OUT_CTRL = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [37 x i8] c"tvp5150: Full field enable = 0x%02x\0A\00", align 1
@TVP5150_FULL_FIELD_ENA = common dso_local global i32 0, align 4
@.str.48 = private unnamed_addr constant [44 x i8] c"tvp5150: Full field mode register = 0x%02x\0A\00", align 1
@TVP5150_FULL_FIELD_MODE_REG = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [10 x i8] c"CC   data\00", align 1
@TVP5150_CC_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_CC_DATA_END = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [10 x i8] c"WSS  data\00", align 1
@TVP5150_WSS_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_WSS_DATA_END = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [10 x i8] c"VPS  data\00", align 1
@TVP5150_VPS_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_VPS_DATA_END = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"VITC data\00", align 1
@TVP5150_VITC_DATA_INI = common dso_local global i32 0, align 4
@TVP5150_VITC_DATA_END = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [10 x i8] c"Line mode\00", align 1
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tvp5150_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %3 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %4 = load i32, i32* @TVP5150_VD_IN_SRC_SEL_1, align 4
  %5 = call i32 @tvp5150_read(%struct.v4l2_subdev* %3, i32 %4)
  %6 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = load i32, i32* @TVP5150_ANAL_CHL_CTL, align 4
  %9 = call i32 @tvp5150_read(%struct.v4l2_subdev* %7, i32 %8)
  %10 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %12 = load i32, i32* @TVP5150_OP_MODE_CTL, align 4
  %13 = call i32 @tvp5150_read(%struct.v4l2_subdev* %11, i32 %12)
  %14 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %16 = load i32, i32* @TVP5150_MISC_CTL, align 4
  %17 = call i32 @tvp5150_read(%struct.v4l2_subdev* %15, i32 %16)
  %18 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %20 = load i32, i32* @TVP5150_AUTOSW_MSK, align 4
  %21 = call i32 @tvp5150_read(%struct.v4l2_subdev* %19, i32 %20)
  %22 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %24 = load i32, i32* @TVP5150_COLOR_KIL_THSH_CTL, align 4
  %25 = call i32 @tvp5150_read(%struct.v4l2_subdev* %23, i32 %24)
  %26 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %28 = load i32, i32* @TVP5150_LUMA_PROC_CTL_1, align 4
  %29 = call i32 @tvp5150_read(%struct.v4l2_subdev* %27, i32 %28)
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %31 = load i32, i32* @TVP5150_LUMA_PROC_CTL_2, align 4
  %32 = call i32 @tvp5150_read(%struct.v4l2_subdev* %30, i32 %31)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %34 = load i32, i32* @TVP5150_LUMA_PROC_CTL_3, align 4
  %35 = call i32 @tvp5150_read(%struct.v4l2_subdev* %33, i32 %34)
  %36 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %38 = load i32, i32* @TVP5150_BRIGHT_CTL, align 4
  %39 = call i32 @tvp5150_read(%struct.v4l2_subdev* %37, i32 %38)
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %42 = load i32, i32* @TVP5150_SATURATION_CTL, align 4
  %43 = call i32 @tvp5150_read(%struct.v4l2_subdev* %41, i32 %42)
  %44 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %46 = load i32, i32* @TVP5150_HUE_CTL, align 4
  %47 = call i32 @tvp5150_read(%struct.v4l2_subdev* %45, i32 %46)
  %48 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %47)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %50 = load i32, i32* @TVP5150_CONTRAST_CTL, align 4
  %51 = call i32 @tvp5150_read(%struct.v4l2_subdev* %49, i32 %50)
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %51)
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %54 = load i32, i32* @TVP5150_DATA_RATE_SEL, align 4
  %55 = call i32 @tvp5150_read(%struct.v4l2_subdev* %53, i32 %54)
  %56 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %55)
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = load i32, i32* @TVP5150_CONF_SHARED_PIN, align 4
  %59 = call i32 @tvp5150_read(%struct.v4l2_subdev* %57, i32 %58)
  %60 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %59)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %62 = load i32, i32* @TVP5150_ACT_VD_CROP_ST_MSB, align 4
  %63 = call i32 @tvp5150_read(%struct.v4l2_subdev* %61, i32 %62)
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %65 = load i32, i32* @TVP5150_ACT_VD_CROP_ST_LSB, align 4
  %66 = call i32 @tvp5150_read(%struct.v4l2_subdev* %64, i32 %65)
  %67 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %69 = load i32, i32* @TVP5150_ACT_VD_CROP_STP_MSB, align 4
  %70 = call i32 @tvp5150_read(%struct.v4l2_subdev* %68, i32 %69)
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %72 = load i32, i32* @TVP5150_ACT_VD_CROP_STP_LSB, align 4
  %73 = call i32 @tvp5150_read(%struct.v4l2_subdev* %71, i32 %72)
  %74 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %76 = load i32, i32* @TVP5150_GENLOCK, align 4
  %77 = call i32 @tvp5150_read(%struct.v4l2_subdev* %75, i32 %76)
  %78 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %77)
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %80 = load i32, i32* @TVP5150_HORIZ_SYNC_START, align 4
  %81 = call i32 @tvp5150_read(%struct.v4l2_subdev* %79, i32 %80)
  %82 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 %81)
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %84 = load i32, i32* @TVP5150_VERT_BLANKING_START, align 4
  %85 = call i32 @tvp5150_read(%struct.v4l2_subdev* %83, i32 %84)
  %86 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %85)
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %88 = load i32, i32* @TVP5150_VERT_BLANKING_STOP, align 4
  %89 = call i32 @tvp5150_read(%struct.v4l2_subdev* %87, i32 %88)
  %90 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %89)
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %92 = load i32, i32* @TVP5150_CHROMA_PROC_CTL_1, align 4
  %93 = call i32 @tvp5150_read(%struct.v4l2_subdev* %91, i32 %92)
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %95 = load i32, i32* @TVP5150_CHROMA_PROC_CTL_2, align 4
  %96 = call i32 @tvp5150_read(%struct.v4l2_subdev* %94, i32 %95)
  %97 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.19, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %99 = load i32, i32* @TVP5150_INT_RESET_REG_B, align 4
  %100 = call i32 @tvp5150_read(%struct.v4l2_subdev* %98, i32 %99)
  %101 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 %100)
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %103 = load i32, i32* @TVP5150_INT_ENABLE_REG_B, align 4
  %104 = call i32 @tvp5150_read(%struct.v4l2_subdev* %102, i32 %103)
  %105 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0), i32 %104)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %107 = load i32, i32* @TVP5150_INTT_CONFIG_REG_B, align 4
  %108 = call i32 @tvp5150_read(%struct.v4l2_subdev* %106, i32 %107)
  %109 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0), i32 %108)
  %110 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %111 = load i32, i32* @TVP5150_VIDEO_STD, align 4
  %112 = call i32 @tvp5150_read(%struct.v4l2_subdev* %110, i32 %111)
  %113 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i32 %112)
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %115 = load i32, i32* @TVP5150_CB_GAIN_FACT, align 4
  %116 = call i32 @tvp5150_read(%struct.v4l2_subdev* %114, i32 %115)
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %118 = load i32, i32* @TVP5150_CR_GAIN_FACTOR, align 4
  %119 = call i32 @tvp5150_read(%struct.v4l2_subdev* %117, i32 %118)
  %120 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i32 %116, i32 %119)
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %122 = load i32, i32* @TVP5150_MACROVISION_ON_CTR, align 4
  %123 = call i32 @tvp5150_read(%struct.v4l2_subdev* %121, i32 %122)
  %124 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i32 %123)
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %126 = load i32, i32* @TVP5150_MACROVISION_OFF_CTR, align 4
  %127 = call i32 @tvp5150_read(%struct.v4l2_subdev* %125, i32 %126)
  %128 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 %127)
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %130 = load i32, i32* @TVP5150_REV_SELECT, align 4
  %131 = call i32 @tvp5150_read(%struct.v4l2_subdev* %129, i32 %130)
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 3, i32 4
  %136 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0), i32 %135)
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %138 = load i32, i32* @TVP5150_MSB_DEV_ID, align 4
  %139 = call i32 @tvp5150_read(%struct.v4l2_subdev* %137, i32 %138)
  %140 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %141 = load i32, i32* @TVP5150_LSB_DEV_ID, align 4
  %142 = call i32 @tvp5150_read(%struct.v4l2_subdev* %140, i32 %141)
  %143 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %145 = load i32, i32* @TVP5150_ROM_MAJOR_VER, align 4
  %146 = call i32 @tvp5150_read(%struct.v4l2_subdev* %144, i32 %145)
  %147 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %148 = load i32, i32* @TVP5150_ROM_MINOR_VER, align 4
  %149 = call i32 @tvp5150_read(%struct.v4l2_subdev* %147, i32 %148)
  %150 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i32 %146, i32 %149)
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %152 = load i32, i32* @TVP5150_VERT_LN_COUNT_MSB, align 4
  %153 = call i32 @tvp5150_read(%struct.v4l2_subdev* %151, i32 %152)
  %154 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %155 = load i32, i32* @TVP5150_VERT_LN_COUNT_LSB, align 4
  %156 = call i32 @tvp5150_read(%struct.v4l2_subdev* %154, i32 %155)
  %157 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i32 %153, i32 %156)
  %158 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %159 = load i32, i32* @TVP5150_INT_STATUS_REG_B, align 4
  %160 = call i32 @tvp5150_read(%struct.v4l2_subdev* %158, i32 %159)
  %161 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), i32 %160)
  %162 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %163 = load i32, i32* @TVP5150_INT_ACTIVE_REG_B, align 4
  %164 = call i32 @tvp5150_read(%struct.v4l2_subdev* %162, i32 %163)
  %165 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.32, i64 0, i64 0), i32 %164)
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %167 = load i32, i32* @TVP5150_STATUS_REG_1, align 4
  %168 = call i32 @tvp5150_read(%struct.v4l2_subdev* %166, i32 %167)
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %170 = load i32, i32* @TVP5150_STATUS_REG_2, align 4
  %171 = call i32 @tvp5150_read(%struct.v4l2_subdev* %169, i32 %170)
  %172 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %173 = load i32, i32* @TVP5150_STATUS_REG_3, align 4
  %174 = call i32 @tvp5150_read(%struct.v4l2_subdev* %172, i32 %173)
  %175 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %176 = load i32, i32* @TVP5150_STATUS_REG_4, align 4
  %177 = call i32 @tvp5150_read(%struct.v4l2_subdev* %175, i32 %176)
  %178 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %179 = load i32, i32* @TVP5150_STATUS_REG_5, align 4
  %180 = call i32 @tvp5150_read(%struct.v4l2_subdev* %178, i32 %179)
  %181 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.33, i64 0, i64 0), i32 %168, i32 %171, i32 %174, i32 %177, i32 %180)
  %182 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %183 = load i32, i32* @TVP5150_TELETEXT_FIL1_INI, align 4
  %184 = load i32, i32* @TVP5150_TELETEXT_FIL1_END, align 4
  %185 = call i32 @dump_reg_range(%struct.v4l2_subdev* %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i32 %183, i32 %184, i32 8)
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %187 = load i32, i32* @TVP5150_TELETEXT_FIL2_INI, align 4
  %188 = load i32, i32* @TVP5150_TELETEXT_FIL2_END, align 4
  %189 = call i32 @dump_reg_range(%struct.v4l2_subdev* %186, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 %187, i32 %188, i32 8)
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %191 = load i32, i32* @TVP5150_TELETEXT_FIL_ENA, align 4
  %192 = call i32 @tvp5150_read(%struct.v4l2_subdev* %190, i32 %191)
  %193 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i32 %192)
  %194 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %195 = load i32, i32* @TVP5150_INT_STATUS_REG_A, align 4
  %196 = call i32 @tvp5150_read(%struct.v4l2_subdev* %194, i32 %195)
  %197 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0), i32 %196)
  %198 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %199 = load i32, i32* @TVP5150_INT_ENABLE_REG_A, align 4
  %200 = call i32 @tvp5150_read(%struct.v4l2_subdev* %198, i32 %199)
  %201 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i32 %200)
  %202 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %203 = load i32, i32* @TVP5150_INT_CONF, align 4
  %204 = call i32 @tvp5150_read(%struct.v4l2_subdev* %202, i32 %203)
  %205 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0), i32 %204)
  %206 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %207 = load i32, i32* @TVP5150_VDP_STATUS_REG, align 4
  %208 = call i32 @tvp5150_read(%struct.v4l2_subdev* %206, i32 %207)
  %209 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i32 %208)
  %210 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %211 = load i32, i32* @TVP5150_FIFO_WORD_COUNT, align 4
  %212 = call i32 @tvp5150_read(%struct.v4l2_subdev* %210, i32 %211)
  %213 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i32 %212)
  %214 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %215 = load i32, i32* @TVP5150_FIFO_INT_THRESHOLD, align 4
  %216 = call i32 @tvp5150_read(%struct.v4l2_subdev* %214, i32 %215)
  %217 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i64 0, i64 0), i32 %216)
  %218 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %219 = load i32, i32* @TVP5150_FIFO_RESET, align 4
  %220 = call i32 @tvp5150_read(%struct.v4l2_subdev* %218, i32 %219)
  %221 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i32 %220)
  %222 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %223 = load i32, i32* @TVP5150_LINE_NUMBER_INT, align 4
  %224 = call i32 @tvp5150_read(%struct.v4l2_subdev* %222, i32 %223)
  %225 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.44, i64 0, i64 0), i32 %224)
  %226 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %227 = load i32, i32* @TVP5150_PIX_ALIGN_REG_HIGH, align 4
  %228 = call i32 @tvp5150_read(%struct.v4l2_subdev* %226, i32 %227)
  %229 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %230 = load i32, i32* @TVP5150_PIX_ALIGN_REG_LOW, align 4
  %231 = call i32 @tvp5150_read(%struct.v4l2_subdev* %229, i32 %230)
  %232 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i64 0, i64 0), i32 %228, i32 %231)
  %233 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %234 = load i32, i32* @TVP5150_FIFO_OUT_CTRL, align 4
  %235 = call i32 @tvp5150_read(%struct.v4l2_subdev* %233, i32 %234)
  %236 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i32 %235)
  %237 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %238 = load i32, i32* @TVP5150_FULL_FIELD_ENA, align 4
  %239 = call i32 @tvp5150_read(%struct.v4l2_subdev* %237, i32 %238)
  %240 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i64 0, i64 0), i32 %239)
  %241 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %242 = load i32, i32* @TVP5150_FULL_FIELD_MODE_REG, align 4
  %243 = call i32 @tvp5150_read(%struct.v4l2_subdev* %241, i32 %242)
  %244 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 %243)
  %245 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %246 = load i32, i32* @TVP5150_CC_DATA_INI, align 4
  %247 = load i32, i32* @TVP5150_CC_DATA_END, align 4
  %248 = call i32 @dump_reg_range(%struct.v4l2_subdev* %245, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 %246, i32 %247, i32 8)
  %249 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %250 = load i32, i32* @TVP5150_WSS_DATA_INI, align 4
  %251 = load i32, i32* @TVP5150_WSS_DATA_END, align 4
  %252 = call i32 @dump_reg_range(%struct.v4l2_subdev* %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i64 0, i64 0), i32 %250, i32 %251, i32 8)
  %253 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %254 = load i32, i32* @TVP5150_VPS_DATA_INI, align 4
  %255 = load i32, i32* @TVP5150_VPS_DATA_END, align 4
  %256 = call i32 @dump_reg_range(%struct.v4l2_subdev* %253, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0), i32 %254, i32 %255, i32 8)
  %257 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %258 = load i32, i32* @TVP5150_VITC_DATA_INI, align 4
  %259 = load i32, i32* @TVP5150_VITC_DATA_END, align 4
  %260 = call i32 @dump_reg_range(%struct.v4l2_subdev* %257, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 %258, i32 %259, i32 10)
  %261 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %262 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  %263 = load i32, i32* @TVP5150_LINE_MODE_END, align 4
  %264 = call i32 @dump_reg_range(%struct.v4l2_subdev* %261, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i32 %262, i32 %263, i32 8)
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @tvp5150_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @dump_reg_range(%struct.v4l2_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
