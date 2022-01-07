; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_etoms.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_etoms.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.cam }
%struct.cam = type { i8*, i8* }
%struct.usb_device_id = type { i64 }
%struct.sd = type { i64, i32, i32, i32, i32, i32 }

@SENSOR_PAS106 = common dso_local global i64 0, align 8
@sif_mode = common dso_local global i8* null, align 8
@vga_mode = common dso_local global i8* null, align 8
@COLOR_IDX = common dso_local global i32 0, align 4
@BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@CONTRAST_DEF = common dso_local global i32 0, align 4
@COLOR_DEF = common dso_local global i32 0, align 4
@AUTOGAIN_DEF = common dso_local global i32 0, align 4
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
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sd*, %struct.sd** %5, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SENSOR_PAS106, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i8*, i8** @sif_mode, align 8
  %23 = load %struct.cam*, %struct.cam** %6, align 8
  %24 = getelementptr inbounds %struct.cam, %struct.cam* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @sif_mode, align 8
  %26 = call i8* @ARRAY_SIZE(i8* %25)
  %27 = load %struct.cam*, %struct.cam** %6, align 8
  %28 = getelementptr inbounds %struct.cam, %struct.cam* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %41

29:                                               ; preds = %2
  %30 = load i8*, i8** @vga_mode, align 8
  %31 = load %struct.cam*, %struct.cam** %6, align 8
  %32 = getelementptr inbounds %struct.cam, %struct.cam* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @vga_mode, align 8
  %34 = call i8* @ARRAY_SIZE(i8* %33)
  %35 = load %struct.cam*, %struct.cam** %6, align 8
  %36 = getelementptr inbounds %struct.cam, %struct.cam* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @COLOR_IDX, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %29, %21
  %42 = load i32, i32* @BRIGHTNESS_DEF, align 4
  %43 = load %struct.sd*, %struct.sd** %5, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @CONTRAST_DEF, align 4
  %46 = load %struct.sd*, %struct.sd** %5, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @COLOR_DEF, align 4
  %49 = load %struct.sd*, %struct.sd** %5, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @AUTOGAIN_DEF, align 4
  %52 = load %struct.sd*, %struct.sd** %5, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sd*, %struct.sd** %5, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 8
  ret i32 0
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
