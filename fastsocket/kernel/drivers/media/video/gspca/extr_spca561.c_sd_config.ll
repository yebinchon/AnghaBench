; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32, %struct.cam }
%struct.cam = type { i8*, i8* }
%struct.usb_device_id = type { i32, i32, i64 }
%struct.sd = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Bad vendor / product from device\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@Rev012A = common dso_local global i64 0, align 8
@sif_012a_mode = common dso_local global i8* null, align 8
@sif_072a_mode = common dso_local global i8* null, align 8
@BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@CONTRAST_DEF = common dso_local global i32 0, align 4
@HUE_DEF = common dso_local global i32 0, align 4
@EXPOSURE_DEF = common dso_local global i32 0, align 4
@AUTOGAIN_DEF = common dso_local global i32 0, align 4
@GAIN_DEF = common dso_local global i32 0, align 4
@EXPO12A_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %6, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = call i32 @reg_r(%struct.gspca_dev* %14, i32 33028, i32 1)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = call i32 @reg_r(%struct.gspca_dev* %21, i32 33029, i32 1)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 %28, 8
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %33 = call i32 @reg_r(%struct.gspca_dev* %32, i32 33030, i32 1)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = call i32 @reg_r(%struct.gspca_dev* %39, i32 33031, i32 1)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %52 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %2
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55, %2
  %62 = load i32, i32* @D_PROBE, align 4
  %63 = call i32 @PDEBUG(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %119

66:                                               ; preds = %55
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 2
  store %struct.cam* %68, %struct.cam** %7, align 8
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 1
  store i32 8, i32* %70, align 8
  %71 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sd*, %struct.sd** %6, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.sd*, %struct.sd** %6, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @Rev012A, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %66
  %82 = load i8*, i8** @sif_012a_mode, align 8
  %83 = load %struct.cam*, %struct.cam** %7, align 8
  %84 = getelementptr inbounds %struct.cam, %struct.cam* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @sif_012a_mode, align 8
  %86 = call i8* @ARRAY_SIZE(i8* %85)
  %87 = load %struct.cam*, %struct.cam** %7, align 8
  %88 = getelementptr inbounds %struct.cam, %struct.cam* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %97

89:                                               ; preds = %66
  %90 = load i8*, i8** @sif_072a_mode, align 8
  %91 = load %struct.cam*, %struct.cam** %7, align 8
  %92 = getelementptr inbounds %struct.cam, %struct.cam* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @sif_072a_mode, align 8
  %94 = call i8* @ARRAY_SIZE(i8* %93)
  %95 = load %struct.cam*, %struct.cam** %7, align 8
  %96 = getelementptr inbounds %struct.cam, %struct.cam* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %89, %81
  %98 = load i32, i32* @BRIGHTNESS_DEF, align 4
  %99 = load %struct.sd*, %struct.sd** %6, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @CONTRAST_DEF, align 4
  %102 = load %struct.sd*, %struct.sd** %6, align 8
  %103 = getelementptr inbounds %struct.sd, %struct.sd* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @HUE_DEF, align 4
  %105 = load %struct.sd*, %struct.sd** %6, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @EXPOSURE_DEF, align 4
  %108 = load %struct.sd*, %struct.sd** %6, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @AUTOGAIN_DEF, align 4
  %111 = load %struct.sd*, %struct.sd** %6, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @GAIN_DEF, align 4
  %114 = load %struct.sd*, %struct.sd** %6, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @EXPO12A_DEF, align 4
  %117 = load %struct.sd*, %struct.sd** %6, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %97, %61
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
