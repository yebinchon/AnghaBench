; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32, i8*, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i32, i32, i32 }

@SENSOR_ADCM1700 = common dso_local global i32 0, align 4
@cif_mode = common dso_local global i8* null, align 8
@vga_mode = common dso_local global i8* null, align 8
@QUALITY_DEF = common dso_local global i32 0, align 4
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
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 16
  %13 = load %struct.sd*, %struct.sd** %5, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 8
  %19 = load %struct.sd*, %struct.sd** %5, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sd*, %struct.sd** %5, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  store %struct.cam* %27, %struct.cam** %6, align 8
  %28 = load %struct.sd*, %struct.sd** %5, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SENSOR_ADCM1700, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load i8*, i8** @cif_mode, align 8
  %35 = load %struct.cam*, %struct.cam** %6, align 8
  %36 = getelementptr inbounds %struct.cam, %struct.cam* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @cif_mode, align 8
  %38 = call i8* @ARRAY_SIZE(i8* %37)
  %39 = load %struct.cam*, %struct.cam** %6, align 8
  %40 = getelementptr inbounds %struct.cam, %struct.cam* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %49

41:                                               ; preds = %2
  %42 = load i8*, i8** @vga_mode, align 8
  %43 = load %struct.cam*, %struct.cam** %6, align 8
  %44 = getelementptr inbounds %struct.cam, %struct.cam* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @vga_mode, align 8
  %46 = call i8* @ARRAY_SIZE(i8* %45)
  %47 = load %struct.cam*, %struct.cam** %6, align 8
  %48 = getelementptr inbounds %struct.cam, %struct.cam* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.cam*, %struct.cam** %6, align 8
  %51 = getelementptr inbounds %struct.cam, %struct.cam* %50, i32 0, i32 0
  store i32 24, i32* %51, align 8
  %52 = load %struct.sd*, %struct.sd** %5, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cam*, %struct.cam** %6, align 8
  %56 = getelementptr inbounds %struct.cam, %struct.cam* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sd*, %struct.sd** %5, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 3
  store i32 -1, i32* %58, align 4
  %59 = load i32, i32* @QUALITY_DEF, align 4
  %60 = load %struct.sd*, %struct.sd** %5, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sd*, %struct.sd** %5, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 4
  store i32 80, i32* %63, align 4
  ret i32 0
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
