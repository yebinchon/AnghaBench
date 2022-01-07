; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_if_spi_prog_helper_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_spi.c_if_spi_prog_helper_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_spi_card = type { i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.firmware = type { i32, i32* }

@HELPER_FW_LOAD_CHUNK_SZ = common dso_local global i32 0, align 4
@LBS_DEB_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"request_firmware failed with err = %d\0A\00", align 1
@IF_SPI_SCRATCH_1_REG = common dso_local global i32 0, align 4
@IF_SPI_HOST_INT_STATUS_REG = common dso_local global i32 0, align 4
@IF_SPI_HIST_CMD_DOWNLOAD_RDY = common dso_local global i32 0, align 4
@IF_SPI_CMD_RDWRPORT_REG = common dso_local global i32 0, align 4
@IF_SPI_CARD_INT_CAUSE_REG = common dso_local global i32 0, align 4
@IF_SPI_CIC_CMD_DOWNLOAD_OVER = common dso_local global i32 0, align 4
@FIRMWARE_DNLD_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to load helper firmware (err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*)* @if_spi_prog_helper_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_spi_prog_helper_firmware(%struct.if_spi_card* %0) #0 {
  %2 = alloca %struct.if_spi_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.spi_device*, align 8
  store %struct.if_spi_card* %0, %struct.if_spi_card** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.firmware* null, %struct.firmware** %4, align 8
  %10 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %15 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %14, i32 0, i32 1
  %16 = load %struct.spi_device*, %struct.spi_device** %15, align 8
  store %struct.spi_device* %16, %struct.spi_device** %9, align 8
  %17 = load i32, i32* @LBS_DEB_SPI, align 4
  %18 = call i32 @lbs_deb_enter(i32 %17)
  %19 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %20 = call i32 @spu_set_interrupt_mode(%struct.if_spi_card* %19, i32 1, i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %126

24:                                               ; preds = %1
  %25 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %26 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = call i32 @request_firmware(%struct.firmware** %4, i32 %27, i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %126

36:                                               ; preds = %24
  %37 = load %struct.firmware*, %struct.firmware** %4, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  %40 = load %struct.firmware*, %struct.firmware** %4, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %6, align 8
  br label %43

43:                                               ; preds = %95, %36
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %43
  %47 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %48 = load i32, i32* @IF_SPI_SCRATCH_1_REG, align 4
  %49 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %50 = call i32 @spu_write_u16(%struct.if_spi_card* %47, i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %123

54:                                               ; preds = %46
  %55 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %56 = load i32, i32* @IF_SPI_HOST_INT_STATUS_REG, align 4
  %57 = load i32, i32* @IF_SPI_HIST_CMD_DOWNLOAD_RDY, align 4
  %58 = load i32, i32* @IF_SPI_HIST_CMD_DOWNLOAD_RDY, align 4
  %59 = call i32 @spu_wait_for_u16(%struct.if_spi_card* %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %123

63:                                               ; preds = %54
  %64 = mul nuw i64 4, %11
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memset(i32* %13, i32 0, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %70 = call i32 @min(i32 %68, i32 %69)
  %71 = call i32 @memcpy(i32* %13, i32* %67, i32 %70)
  %72 = call i32 @mdelay(i32 10)
  %73 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %74 = load i32, i32* @IF_SPI_CMD_RDWRPORT_REG, align 4
  %75 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %76 = call i32 @spu_write(%struct.if_spi_card* %73, i32 %74, i32* %13, i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %123

80:                                               ; preds = %63
  %81 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %82 = load i32, i32* @IF_SPI_HOST_INT_STATUS_REG, align 4
  %83 = call i32 @spu_write_u16(%struct.if_spi_card* %81, i32 %82, i32 0)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %123

87:                                               ; preds = %80
  %88 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %89 = load i32, i32* @IF_SPI_CARD_INT_CAUSE_REG, align 4
  %90 = load i32, i32* @IF_SPI_CIC_CMD_DOWNLOAD_OVER, align 4
  %91 = call i32 @spu_write_u16(%struct.if_spi_card* %88, i32 %89, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %123

95:                                               ; preds = %87
  %96 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @HELPER_FW_LOAD_CHUNK_SZ, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %6, align 8
  br label %43

103:                                              ; preds = %43
  %104 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %105 = load i32, i32* @IF_SPI_SCRATCH_1_REG, align 4
  %106 = load i32, i32* @FIRMWARE_DNLD_OK, align 4
  %107 = call i32 @spu_write_u16(%struct.if_spi_card* %104, i32 %105, i32 %106)
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %123

111:                                              ; preds = %103
  %112 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %113 = load i32, i32* @IF_SPI_HOST_INT_STATUS_REG, align 4
  %114 = call i32 @spu_write_u16(%struct.if_spi_card* %112, i32 %113, i32 0)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %123

118:                                              ; preds = %111
  %119 = load %struct.if_spi_card*, %struct.if_spi_card** %2, align 8
  %120 = load i32, i32* @IF_SPI_CARD_INT_CAUSE_REG, align 4
  %121 = load i32, i32* @IF_SPI_CIC_CMD_DOWNLOAD_OVER, align 4
  %122 = call i32 @spu_write_u16(%struct.if_spi_card* %119, i32 %120, i32 %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %117, %110, %94, %86, %79, %62, %53
  %124 = load %struct.firmware*, %struct.firmware** %4, align 8
  %125 = call i32 @release_firmware(%struct.firmware* %124)
  br label %126

126:                                              ; preds = %123, %33, %23
  %127 = load i32, i32* %3, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* @LBS_DEB_SPI, align 4
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @lbs_deb_leave_args(i32 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %3, align 4
  %137 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %137)
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lbs_deb_enter(i32) #2

declare dso_local i32 @spu_set_interrupt_mode(%struct.if_spi_card*, i32, i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #2

declare dso_local i32 @lbs_pr_err(i8*, i32) #2

declare dso_local i32 @spu_write_u16(%struct.if_spi_card*, i32, i32) #2

declare dso_local i32 @spu_wait_for_u16(%struct.if_spi_card*, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @spu_write(%struct.if_spi_card*, i32, i32*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
