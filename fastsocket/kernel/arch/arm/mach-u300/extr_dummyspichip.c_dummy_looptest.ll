; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_dummyspichip.c_dummy_looptest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_dummyspichip.c_dummy_looptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_device = type { %struct.TYPE_2__*, %struct.pl022_config_chip*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.spi_device*)* }
%struct.pl022_config_chip = type { i32 }
%struct.dummy = type { i32 }

@__const.dummy_looptest.txbuf = private unnamed_addr constant [14 x i32] [i32 222, i32 173, i32 190, i32 239, i32 43, i32 173, i32 202, i32 254, i32 186, i32 190, i32 177, i32 5, i32 240, i32 13], align 16
@ERESTARTSYS = common dso_local global i32 0, align 4
@DMA_TEST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SSP_DATA_BITS_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Simple test 1: write 0xAA byte, read back garbage byte in 8bit mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Siple test 1: FAILURE: spi_write_then_read failed with status %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Simple test 1: SUCCESS!\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"Simple test 2: write 8 bytes, read back 8 bytes garbage in 8bit mode (full FIFO)\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Simple test 2: FAILURE: spi_write_then_read() failed with status %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Simple test 2: SUCCESS!\0A\00", align 1
@.str.6 = private unnamed_addr constant [98 x i8] c"Simple test 3: write 14 bytes, read back 14 bytes garbage in 8bit mode (see if we overflow FIFO)\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"Simple test 3: FAILURE: failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Simple test 3: SUCCESS!\0A\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"Simple test 4: write 8 bytes with spi_write(), read 8 bytes garbage with spi_read() in 8bit mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"Simple test 4 step 1: FAILURE: spi_write() failed with status %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Simple test 4 step 1: SUCCESS!\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"Simple test 4 step 2: FAILURE: spi_read() failed with status %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Simple test 4 step 2: SUCCESS!\0A\00", align 1
@.str.14 = private unnamed_addr constant [100 x i8] c"Simple test 5: write 14 bytes with spi_write(), read 14 bytes garbage with spi_read() in 8bit mode\0A\00", align 1
@.str.15 = private unnamed_addr constant [90 x i8] c"Simple test 5 step 1: FAILURE: spi_write() failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Simple test 5 step 1: SUCCESS!\0A\00", align 1
@.str.17 = private unnamed_addr constant [89 x i8] c"Simple test 5 step 2: FAILURE: spi_read() failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Simple test 5: SUCCESS!\0A\00", align 1
@.str.19 = private unnamed_addr constant [100 x i8] c"Simple test 6: write %d bytes with spi_write(), read %d bytes garbage with spi_read() in 8bit mode\0A\00", align 1
@.str.20 = private unnamed_addr constant [90 x i8] c"Simple test 6 step 1: FAILURE: spi_write() failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Simple test 6 step 1: SUCCESS!\0A\00", align 1
@.str.22 = private unnamed_addr constant [89 x i8] c"Simple test 6 step 2: FAILURE: spi_read() failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Simple test 6: SUCCESS!\0A\00", align 1
@SSP_DATA_BITS_16 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [74 x i8] c"Simple test 7: write 0xAA byte, read back garbage byte in 16bit bus mode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [60 x i8] c"Simple test 7: SUCCESS! (expected failure with status EIO)\0A\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"Siple test 7: FAILURE: spi_write_then_read failed with status %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [83 x i8] c"Siple test 7: FAILURE: spi_write_then_read succeeded but it was expected to fail!\0A\00", align 1
@.str.28 = private unnamed_addr constant [83 x i8] c"Simple test 8: write 8 bytes, read back 8 bytes garbage in 16bit mode (full FIFO)\0A\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"Simple test 8: FAILURE: spi_write_then_read() failed with status %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Simple test 8: SUCCESS!\0A\00", align 1
@.str.31 = private unnamed_addr constant [99 x i8] c"Simple test 9: write 14 bytes, read back 14 bytes garbage in 16bit mode (see if we overflow FIFO)\0A\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"Simple test 9: FAILURE: failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"Simple test 9: SUCCESS!\0A\00", align 1
@.str.34 = private unnamed_addr constant [102 x i8] c"Simple test 10: write %d bytes with spi_write(), read %d bytes garbage with spi_read() in 16bit mode\0A\00", align 1
@.str.35 = private unnamed_addr constant [91 x i8] c"Simple test 10 step 1: FAILURE: spi_write() failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"Simple test 10 step 1: SUCCESS!\0A\00", align 1
@.str.37 = private unnamed_addr constant [90 x i8] c"Simple test 10 step 2: FAILURE: spi_read() failed with status %d (probably FIFO overrun)\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Simple test 10: SUCCESS!\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"loop test complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dummy_looptest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_looptest(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.dummy*, align 8
  %10 = alloca %struct.pl022_config_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [14 x i32], align 16
  %13 = alloca [14 x i32], align 16
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.spi_device* @to_spi_device(%struct.device* %16)
  store %struct.spi_device* %17, %struct.spi_device** %8, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = call %struct.dummy* @dev_get_drvdata(i32* %19)
  store %struct.dummy* %20, %struct.dummy** %9, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %22, align 8
  store %struct.pl022_config_chip* %23, %struct.pl022_config_chip** %10, align 8
  %24 = bitcast [14 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([14 x i32]* @__const.dummy_looptest.txbuf to i8*), i64 56, i1 false)
  %25 = load %struct.dummy*, %struct.dummy** %9, align 8
  %26 = getelementptr inbounds %struct.dummy, %struct.dummy* %25, i32 0, i32 0
  %27 = call i64 @mutex_lock_interruptible(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %265

32:                                               ; preds = %3
  %33 = load i32, i32* @DMA_TEST_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32* @kmalloc(i32 %33, i32 %34)
  store i32* %35, i32** %14, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %260

41:                                               ; preds = %32
  %42 = load i32, i32* @DMA_TEST_SIZE, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i32 %42, i32 %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* @DMA_TEST_SIZE, align 4
  %47 = call i32 @memset(i32* %45, i32 170, i32 %46)
  %48 = load i32, i32* @SSP_DATA_BITS_8, align 4
  %49 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %10, align 8
  %50 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)** %54, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %57 = call i32 %55(%struct.spi_device* %56)
  %58 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %60 = call i32 @spi_w8r8(%struct.spi_device* %59, i32 170)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %68

66:                                               ; preds = %41
  %67 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %71 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %72 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 0
  %73 = call i32 @spi_write_then_read(%struct.spi_device* %70, i32* %71, i32 8, i32* %72, i32 8)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %81

79:                                               ; preds = %68
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.6, i64 0, i64 0))
  %83 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %84 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %85 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 0
  %86 = call i32 @spi_write_then_read(%struct.spi_device* %83, i32* %84, i32 14, i32* %85, i32 14)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  br label %94

92:                                               ; preds = %81
  %93 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.9, i64 0, i64 0))
  %96 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %97 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %98 = call i32 @spi_write(%struct.spi_device* %96, i32* %97, i32 8)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  br label %106

104:                                              ; preds = %94
  %105 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %101
  %107 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %108 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 0
  %109 = call i32 @spi_read(%struct.spi_device* %107, i32* %108, i32 8)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i32 %113)
  br label %117

115:                                              ; preds = %106
  %116 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  %118 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.14, i64 0, i64 0))
  %119 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %120 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %121 = call i32 @spi_write(%struct.spi_device* %119, i32* %120, i32 14)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.15, i64 0, i64 0), i32 %125)
  br label %129

127:                                              ; preds = %117
  %128 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %124
  %130 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %131 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 0
  %132 = call i32 @spi_read(%struct.spi_device* %130, i32* %131, i32 14)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.17, i64 0, i64 0), i32 %136)
  br label %140

138:                                              ; preds = %129
  %139 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, i32* @DMA_TEST_SIZE, align 4
  %142 = load i32, i32* @DMA_TEST_SIZE, align 4
  %143 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.19, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* @DMA_TEST_SIZE, align 4
  %148 = call i32 @spi_write(%struct.spi_device* %144, i32* %146, i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = load i32, i32* %11, align 4
  %153 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.20, i64 0, i64 0), i32 %152)
  br label %156

154:                                              ; preds = %140
  %155 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %151
  %157 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* @DMA_TEST_SIZE, align 4
  %161 = call i32 @spi_read(%struct.spi_device* %157, i32* %159, i32 %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i32, i32* %11, align 4
  %166 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.22, i64 0, i64 0), i32 %165)
  br label %169

167:                                              ; preds = %156
  %168 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %164
  %170 = load i32, i32* @SSP_DATA_BITS_16, align 4
  %171 = load %struct.pl022_config_chip*, %struct.pl022_config_chip** %10, align 8
  %172 = getelementptr inbounds %struct.pl022_config_chip, %struct.pl022_config_chip* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %174 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %173, i32 0, i32 0
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32 (%struct.spi_device*)*, i32 (%struct.spi_device*)** %176, align 8
  %178 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %179 = call i32 %177(%struct.spi_device* %178)
  %180 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.24, i64 0, i64 0))
  %181 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %182 = call i32 @spi_w8r8(%struct.spi_device* %181, i32 170)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %169
  %188 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.25, i64 0, i64 0))
  br label %198

189:                                              ; preds = %169
  %190 = load i32, i32* %11, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.26, i64 0, i64 0), i32 %193)
  br label %197

195:                                              ; preds = %189
  %196 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.27, i64 0, i64 0))
  br label %197

197:                                              ; preds = %195, %192
  br label %198

198:                                              ; preds = %197, %187
  %199 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.28, i64 0, i64 0))
  %200 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %201 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %202 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 0
  %203 = call i32 @spi_write_then_read(%struct.spi_device* %200, i32* %201, i32 8, i32* %202, i32 8)
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %198
  %207 = load i32, i32* %11, align 4
  %208 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.29, i64 0, i64 0), i32 %207)
  br label %211

209:                                              ; preds = %198
  %210 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %206
  %212 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.31, i64 0, i64 0))
  %213 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %214 = getelementptr inbounds [14 x i32], [14 x i32]* %12, i64 0, i64 0
  %215 = getelementptr inbounds [14 x i32], [14 x i32]* %13, i64 0, i64 0
  %216 = call i32 @spi_write_then_read(%struct.spi_device* %213, i32* %214, i32 14, i32* %215, i32 14)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = load i32, i32* %11, align 4
  %221 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0), i32 %220)
  br label %224

222:                                              ; preds = %211
  %223 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %219
  %225 = load i32, i32* @DMA_TEST_SIZE, align 4
  %226 = load i32, i32* @DMA_TEST_SIZE, align 4
  %227 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.34, i64 0, i64 0), i32 %225, i32 %226)
  %228 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %229 = load i32*, i32** %14, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* @DMA_TEST_SIZE, align 4
  %232 = call i32 @spi_write(%struct.spi_device* %228, i32* %230, i32 %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %224
  %236 = load i32, i32* %11, align 4
  %237 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.35, i64 0, i64 0), i32 %236)
  br label %240

238:                                              ; preds = %224
  %239 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %235
  %241 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* @DMA_TEST_SIZE, align 4
  %245 = call i32 @spi_read(%struct.spi_device* %241, i32* %243, i32 %244)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %240
  %249 = load i32, i32* %11, align 4
  %250 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.37, i64 0, i64 0), i32 %249)
  br label %253

251:                                              ; preds = %240
  %252 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %248
  %254 = load i8*, i8** %7, align 8
  %255 = call i32 @sprintf(i8* %254, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0))
  store i32 %255, i32* %11, align 4
  %256 = load i32*, i32** %15, align 8
  %257 = call i32 @kfree(i32* %256)
  %258 = load i32*, i32** %14, align 8
  %259 = call i32 @kfree(i32* %258)
  br label %260

260:                                              ; preds = %253, %38
  %261 = load %struct.dummy*, %struct.dummy** %9, align 8
  %262 = getelementptr inbounds %struct.dummy, %struct.dummy* %261, i32 0, i32 0
  %263 = call i32 @mutex_unlock(i32* %262)
  %264 = load i32, i32* %11, align 4
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %260, %29
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.dummy* @dev_get_drvdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @spi_w8r8(%struct.spi_device*, i32) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @spi_read(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
