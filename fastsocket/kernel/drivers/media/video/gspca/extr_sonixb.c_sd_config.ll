; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.gspca_dev = type { i32*, i32, %struct.cam }
%struct.cam = type { i32, i8*, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i64, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@F_SIF = common dso_local global i32 0, align 4
@vga_mode = common dso_local global i8* null, align 8
@sif_mode = common dso_local global i8* null, align 8
@BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@GAIN_DEF = common dso_local global i32 0, align 4
@F_COARSE_EXPO = common dso_local global i32 0, align 4
@COARSE_EXPOSURE_DEF = common dso_local global i32 0, align 4
@EXPOSURE_IDX = common dso_local global i32 0, align 4
@EXPOSURE_DEF = common dso_local global i32 0, align 4
@COARSE_EXPOSURE_IDX = common dso_local global i32 0, align 4
@AUTOGAIN_IDX = common dso_local global i32 0, align 4
@AUTOGAIN_DEF = common dso_local global i64 0, align 8
@FREQ_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = call i32 @reg_r(%struct.gspca_dev* %10, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %132

21:                                               ; preds = %2
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = load %struct.sd*, %struct.sd** %6, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.sd*, %struct.sd** %6, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %35 = load %struct.sd*, %struct.sd** %6, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 2
  store %struct.cam* %45, %struct.cam** %7, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %47 = load %struct.sd*, %struct.sd** %6, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @F_SIF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %21
  %58 = load i8*, i8** @vga_mode, align 8
  %59 = load %struct.cam*, %struct.cam** %7, align 8
  %60 = getelementptr inbounds %struct.cam, %struct.cam* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @vga_mode, align 8
  %62 = call i8* @ARRAY_SIZE(i8* %61)
  %63 = load %struct.cam*, %struct.cam** %7, align 8
  %64 = getelementptr inbounds %struct.cam, %struct.cam* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %73

65:                                               ; preds = %21
  %66 = load i8*, i8** @sif_mode, align 8
  %67 = load %struct.cam*, %struct.cam** %7, align 8
  %68 = getelementptr inbounds %struct.cam, %struct.cam* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @sif_mode, align 8
  %70 = call i8* @ARRAY_SIZE(i8* %69)
  %71 = load %struct.cam*, %struct.cam** %7, align 8
  %72 = getelementptr inbounds %struct.cam, %struct.cam* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %65, %57
  %74 = load %struct.cam*, %struct.cam** %7, align 8
  %75 = getelementptr inbounds %struct.cam, %struct.cam* %74, i32 0, i32 0
  store i32 36, i32* %75, align 8
  %76 = load i32, i32* @BRIGHTNESS_DEF, align 4
  %77 = load %struct.sd*, %struct.sd** %6, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @GAIN_DEF, align 4
  %80 = load %struct.sd*, %struct.sd** %6, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %83 = load %struct.sd*, %struct.sd** %6, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @F_COARSE_EXPO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %73
  %94 = load i32, i32* @COARSE_EXPOSURE_DEF, align 4
  %95 = load %struct.sd*, %struct.sd** %6, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @EXPOSURE_IDX, align 4
  %98 = shl i32 1, %97
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %100 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %113

103:                                              ; preds = %73
  %104 = load i32, i32* @EXPOSURE_DEF, align 4
  %105 = load %struct.sd*, %struct.sd** %6, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @COARSE_EXPOSURE_IDX, align 4
  %108 = shl i32 1, %107
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %110 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %103, %93
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %115 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @AUTOGAIN_IDX, align 4
  %118 = shl i32 1, %117
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.sd*, %struct.sd** %6, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  br label %128

124:                                              ; preds = %113
  %125 = load i64, i64* @AUTOGAIN_DEF, align 8
  %126 = load %struct.sd*, %struct.sd** %6, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* @FREQ_DEF, align 4
  %130 = load %struct.sd*, %struct.sd** %6, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %18
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
