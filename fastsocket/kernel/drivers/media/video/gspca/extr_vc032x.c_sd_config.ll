; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_vc032x.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.usb_device_id = type { i32, i32, i32 }
%struct.sd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SENSOR_POxxxx = common dso_local global i32 0, align 4
@BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@CONTRAST_DEF = common dso_local global i32 0, align 4
@COLOR_DEF = common dso_local global i32 0, align 4
@HFLIP_DEF = common dso_local global i32 0, align 4
@VFLIP_DEF = common dso_local global i32 0, align 4
@FREQ_DEF = common dso_local global i32 0, align 4
@SHARPNESS_DEF = common dso_local global i32 0, align 4
@GAIN_DEF = common dso_local global i32 0, align 4
@EXPOSURE_DEF = common dso_local global i32 0, align 4
@AUTOGAIN_DEF = common dso_local global i32 0, align 4
@BACKLIGHT_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 8
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 255
  %18 = load %struct.sd*, %struct.sd** %5, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1133
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %26 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 2194
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2198
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @SENSOR_POxxxx, align 4
  %36 = load %struct.sd*, %struct.sd** %5, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %29, %2
  %39 = load i32, i32* @BRIGHTNESS_DEF, align 4
  %40 = load %struct.sd*, %struct.sd** %5, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @CONTRAST_DEF, align 4
  %43 = load %struct.sd*, %struct.sd** %5, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @COLOR_DEF, align 4
  %46 = load %struct.sd*, %struct.sd** %5, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @HFLIP_DEF, align 4
  %49 = load %struct.sd*, %struct.sd** %5, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @VFLIP_DEF, align 4
  %52 = load %struct.sd*, %struct.sd** %5, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @FREQ_DEF, align 4
  %55 = load %struct.sd*, %struct.sd** %5, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @SHARPNESS_DEF, align 4
  %58 = load %struct.sd*, %struct.sd** %5, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @GAIN_DEF, align 4
  %61 = load %struct.sd*, %struct.sd** %5, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @EXPOSURE_DEF, align 4
  %64 = load %struct.sd*, %struct.sd** %5, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @AUTOGAIN_DEF, align 4
  %67 = load %struct.sd*, %struct.sd** %5, align 8
  %68 = getelementptr inbounds %struct.sd, %struct.sd* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @BACKLIGHT_DEF, align 4
  %70 = load %struct.sd*, %struct.sd** %5, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
