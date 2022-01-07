; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i8*, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@sxga_mode = common dso_local global i8* null, align 8
@mono_mode = common dso_local global i8* null, align 8
@vga_mode = common dso_local global i8* null, align 8
@BRIGHTNESS_DEFAULT = common dso_local global i32 0, align 4
@CONTRAST_DEFAULT = common dso_local global i32 0, align 4
@SATURATION_DEFAULT = common dso_local global i32 0, align 4
@HUE_DEFAULT = common dso_local global i32 0, align 4
@GAMMA_DEFAULT = common dso_local global i32 0, align 4
@RED_DEFAULT = common dso_local global i32 0, align 4
@BLUE_DEFAULT = common dso_local global i32 0, align 4
@HFLIP_DEFAULT = common dso_local global i32 0, align 4
@VFLIP_DEFAULT = common dso_local global i32 0, align 4
@EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
@GAIN_DEFAULT = common dso_local global i32 0, align 4
@AUTO_EXPOSURE_DEFAULT = common dso_local global i32 0, align 4
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
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  store %struct.cam* %10, %struct.cam** %6, align 8
  %11 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  %16 = load %struct.sd*, %struct.sd** %5, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %19 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %25 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = load %struct.sd*, %struct.sd** %5, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sd*, %struct.sd** %5, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %50 [
    i32 130, label %34
    i32 131, label %34
    i32 129, label %34
    i32 128, label %34
    i32 132, label %42
  ]

34:                                               ; preds = %2, %2, %2, %2
  %35 = load i8*, i8** @sxga_mode, align 8
  %36 = load %struct.cam*, %struct.cam** %6, align 8
  %37 = getelementptr inbounds %struct.cam, %struct.cam* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @sxga_mode, align 8
  %39 = call i8* @ARRAY_SIZE(i8* %38)
  %40 = load %struct.cam*, %struct.cam** %6, align 8
  %41 = getelementptr inbounds %struct.cam, %struct.cam* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %58

42:                                               ; preds = %2
  %43 = load i8*, i8** @mono_mode, align 8
  %44 = load %struct.cam*, %struct.cam** %6, align 8
  %45 = getelementptr inbounds %struct.cam, %struct.cam* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @mono_mode, align 8
  %47 = call i8* @ARRAY_SIZE(i8* %46)
  %48 = load %struct.cam*, %struct.cam** %6, align 8
  %49 = getelementptr inbounds %struct.cam, %struct.cam* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %58

50:                                               ; preds = %2
  %51 = load i8*, i8** @vga_mode, align 8
  %52 = load %struct.cam*, %struct.cam** %6, align 8
  %53 = getelementptr inbounds %struct.cam, %struct.cam* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @vga_mode, align 8
  %55 = call i8* @ARRAY_SIZE(i8* %54)
  %56 = load %struct.cam*, %struct.cam** %6, align 8
  %57 = getelementptr inbounds %struct.cam, %struct.cam* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %50, %42, %34
  %59 = load %struct.sd*, %struct.sd** %5, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 18
  store i64 0, i64* %60, align 8
  %61 = load %struct.sd*, %struct.sd** %5, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 17
  store i64 0, i64* %62, align 8
  %63 = load %struct.sd*, %struct.sd** %5, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 3
  store i32 16, i32* %64, align 4
  %65 = load i32, i32* @BRIGHTNESS_DEFAULT, align 4
  %66 = load %struct.sd*, %struct.sd** %5, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 16
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @CONTRAST_DEFAULT, align 4
  %69 = load %struct.sd*, %struct.sd** %5, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 15
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @SATURATION_DEFAULT, align 4
  %72 = load %struct.sd*, %struct.sd** %5, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 14
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @HUE_DEFAULT, align 4
  %75 = load %struct.sd*, %struct.sd** %5, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 13
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @GAMMA_DEFAULT, align 4
  %78 = load %struct.sd*, %struct.sd** %5, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @RED_DEFAULT, align 4
  %81 = load %struct.sd*, %struct.sd** %5, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @BLUE_DEFAULT, align 4
  %84 = load %struct.sd*, %struct.sd** %5, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @HFLIP_DEFAULT, align 4
  %87 = load %struct.sd*, %struct.sd** %5, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @VFLIP_DEFAULT, align 4
  %90 = load %struct.sd*, %struct.sd** %5, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @EXPOSURE_DEFAULT, align 4
  %93 = load %struct.sd*, %struct.sd** %5, align 8
  %94 = getelementptr inbounds %struct.sd, %struct.sd* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @GAIN_DEFAULT, align 4
  %96 = load %struct.sd*, %struct.sd** %5, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @AUTO_EXPOSURE_DEFAULT, align 4
  %99 = load %struct.sd*, %struct.sd** %5, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sd*, %struct.sd** %5, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 4
  store i32 95, i32* %102, align 8
  ret i32 0
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
