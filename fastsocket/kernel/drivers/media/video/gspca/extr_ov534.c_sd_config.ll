; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.cam }
%struct.cam = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ov772x_mode = common dso_local global i32 0, align 4
@ov772x_framerates = common dso_local global i32 0, align 4
@BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@CONTRAST_DEF = common dso_local global i32 0, align 4
@GAIN_DEF = common dso_local global i32 0, align 4
@EXPO_DEF = common dso_local global i32 0, align 4
@AWB_IDX = common dso_local global i32 0, align 4
@AWB_DEF = common dso_local global i32 0, align 4
@AEC_DEF = common dso_local global i32 0, align 4
@SHARPNESS_DEF = common dso_local global i32 0, align 4
@HFLIP_DEF = common dso_local global i32 0, align 4
@VFLIP_DEF = common dso_local global i32 0, align 4
@FREQFLTR_DEF = common dso_local global i32 0, align 4
@AGC_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 1
  store %struct.cam* %10, %struct.cam** %6, align 8
  %11 = load i32, i32* @ov772x_mode, align 4
  %12 = load %struct.cam*, %struct.cam** %6, align 8
  %13 = getelementptr inbounds %struct.cam, %struct.cam* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @ov772x_mode, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = load %struct.cam*, %struct.cam** %6, align 8
  %17 = getelementptr inbounds %struct.cam, %struct.cam* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @ov772x_framerates, align 4
  %19 = load %struct.cam*, %struct.cam** %6, align 8
  %20 = getelementptr inbounds %struct.cam, %struct.cam* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.cam*, %struct.cam** %6, align 8
  %22 = getelementptr inbounds %struct.cam, %struct.cam* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.cam*, %struct.cam** %6, align 8
  %24 = getelementptr inbounds %struct.cam, %struct.cam* %23, i32 0, i32 1
  store i32 16384, i32* %24, align 4
  %25 = load %struct.cam*, %struct.cam** %6, align 8
  %26 = getelementptr inbounds %struct.cam, %struct.cam* %25, i32 0, i32 2
  store i32 2, i32* %26, align 4
  %27 = load %struct.sd*, %struct.sd** %5, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  store i32 30, i32* %28, align 4
  %29 = load i32, i32* @BRIGHTNESS_DEF, align 4
  %30 = load %struct.sd*, %struct.sd** %5, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @CONTRAST_DEF, align 4
  %33 = load %struct.sd*, %struct.sd** %5, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @GAIN_DEF, align 4
  %36 = load %struct.sd*, %struct.sd** %5, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @EXPO_DEF, align 4
  %39 = load %struct.sd*, %struct.sd** %5, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @AWB_IDX, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @AWB_DEF, align 4
  %48 = load %struct.sd*, %struct.sd** %5, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @AEC_DEF, align 4
  %51 = load %struct.sd*, %struct.sd** %5, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @SHARPNESS_DEF, align 4
  %54 = load %struct.sd*, %struct.sd** %5, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @HFLIP_DEF, align 4
  %57 = load %struct.sd*, %struct.sd** %5, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @VFLIP_DEF, align 4
  %60 = load %struct.sd*, %struct.sd** %5, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @FREQFLTR_DEF, align 4
  %63 = load %struct.sd*, %struct.sd** %5, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
