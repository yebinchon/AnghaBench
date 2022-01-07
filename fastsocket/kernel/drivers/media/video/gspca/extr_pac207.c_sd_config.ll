; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac207.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac207.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.sd = type { i32, i32, i32, i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Pixart Sensor ID 0x%02X Chips ID 0x%02X\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Error invalid sensor ID!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Pixart PAC207BCA Image Processor and Control Chip detected (vid/pid 0x%04X:0x%04X)\00", align 1
@sif_mode = common dso_local global i32 0, align 4
@PAC207_BRIGHTNESS_DEFAULT = common dso_local global i32 0, align 4
@PAC207_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@PAC207_GAIN_DEFAULT = common dso_local global i32 0, align 4
@AUTOGAIN_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = call i32 @pac207_read_reg(%struct.gspca_dev* %11, i32 0)
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = call i32 @pac207_read_reg(%struct.gspca_dev* %14, i32 1)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 15
  %20 = shl i32 %19, 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 240
  %24 = ashr i32 %23, 4
  %25 = or i32 %20, %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @D_PROBE, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @PDEBUG(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 39
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load i32, i32* @D_PROBE, align 4
  %42 = call i32 (i32, i8*, ...) @PDEBUG(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %2
  %46 = load i32, i32* @D_PROBE, align 4
  %47 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @PDEBUG(i32 %46, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  store %struct.cam* %55, %struct.cam** %7, align 8
  %56 = load i32, i32* @sif_mode, align 4
  %57 = load %struct.cam*, %struct.cam** %7, align 8
  %58 = getelementptr inbounds %struct.cam, %struct.cam* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @sif_mode, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = load %struct.cam*, %struct.cam** %7, align 8
  %62 = getelementptr inbounds %struct.cam, %struct.cam* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @PAC207_BRIGHTNESS_DEFAULT, align 4
  %64 = load %struct.sd*, %struct.sd** %6, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @PAC207_EXPOSURE_DEFAULT, align 4
  %67 = load %struct.sd*, %struct.sd** %6, align 8
  %68 = getelementptr inbounds %struct.sd, %struct.sd* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @PAC207_GAIN_DEFAULT, align 4
  %70 = load %struct.sd*, %struct.sd** %6, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @AUTOGAIN_DEF, align 4
  %73 = load %struct.sd*, %struct.sd** %6, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %45, %40
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @pac207_read_reg(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
