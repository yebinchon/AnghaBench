; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_configure_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_configure_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i32 }

@init_brightness = common dso_local global i32 0, align 4
@init_contrast = common dso_local global i32 0, align 4
@init_color = common dso_local global i32 0, align 4
@init_hue = common dso_local global i32 0, align 4
@hue_correction = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"IBM USB Camera\00", align 1
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@min_canvasWidth = common dso_local global i32 0, align 4
@min_canvasHeight = common dso_local global i32 0, align 4
@VIDEO_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @ibmcam_configure_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmcam_configure_video(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %3 = load %struct.uvd*, %struct.uvd** %2, align 8
  %4 = icmp eq %struct.uvd* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %114

6:                                                ; preds = %1
  %7 = load i32, i32* @init_brightness, align 4
  %8 = call i32 @RESTRICT_TO_RANGE(i32 %7, i32 0, i32 255)
  %9 = load i32, i32* @init_contrast, align 4
  %10 = call i32 @RESTRICT_TO_RANGE(i32 %9, i32 0, i32 255)
  %11 = load i32, i32* @init_color, align 4
  %12 = call i32 @RESTRICT_TO_RANGE(i32 %11, i32 0, i32 255)
  %13 = load i32, i32* @init_hue, align 4
  %14 = call i32 @RESTRICT_TO_RANGE(i32 %13, i32 0, i32 255)
  %15 = load i32, i32* @hue_correction, align 4
  %16 = call i32 @RESTRICT_TO_RANGE(i32 %15, i32 0, i32 255)
  %17 = load %struct.uvd*, %struct.uvd** %2, align 8
  %18 = getelementptr inbounds %struct.uvd, %struct.uvd* %17, i32 0, i32 3
  %19 = call i32 @memset(%struct.TYPE_2__* %18, i32 0, i32 96)
  %20 = load %struct.uvd*, %struct.uvd** %2, align 8
  %21 = getelementptr inbounds %struct.uvd, %struct.uvd* %20, i32 0, i32 4
  %22 = call i32 @memset(%struct.TYPE_2__* %21, i32 85, i32 96)
  %23 = load i32, i32* @init_color, align 4
  %24 = shl i32 %23, 8
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = getelementptr inbounds %struct.uvd, %struct.uvd* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @init_hue, align 4
  %29 = shl i32 %28, 8
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @init_brightness, align 4
  %34 = shl i32 %33, 8
  %35 = load %struct.uvd*, %struct.uvd** %2, align 8
  %36 = getelementptr inbounds %struct.uvd, %struct.uvd* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @init_contrast, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.uvd*, %struct.uvd** %2, align 8
  %41 = getelementptr inbounds %struct.uvd, %struct.uvd* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load %struct.uvd*, %struct.uvd** %2, align 8
  %44 = getelementptr inbounds %struct.uvd, %struct.uvd* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 26880, i32* %45, align 8
  %46 = load %struct.uvd*, %struct.uvd** %2, align 8
  %47 = getelementptr inbounds %struct.uvd, %struct.uvd* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 5
  store i32 24, i32* %48, align 4
  %49 = load i32, i32* @VIDEO_PALETTE_RGB24, align 4
  %50 = load %struct.uvd*, %struct.uvd** %2, align 8
  %51 = getelementptr inbounds %struct.uvd, %struct.uvd* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 17
  store i32 %49, i32* %52, align 8
  %53 = load %struct.uvd*, %struct.uvd** %2, align 8
  %54 = getelementptr inbounds %struct.uvd, %struct.uvd* %53, i32 0, i32 1
  %55 = call i32 @memset(%struct.TYPE_2__* %54, i32 0, i32 96)
  %56 = load %struct.uvd*, %struct.uvd** %2, align 8
  %57 = getelementptr inbounds %struct.uvd, %struct.uvd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @strcpy(i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %62 = load %struct.uvd*, %struct.uvd** %2, align 8
  %63 = getelementptr inbounds %struct.uvd, %struct.uvd* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 8
  store i32 %61, i32* %64, align 8
  %65 = load %struct.uvd*, %struct.uvd** %2, align 8
  %66 = getelementptr inbounds %struct.uvd, %struct.uvd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  store i32 1, i32* %67, align 8
  %68 = load %struct.uvd*, %struct.uvd** %2, align 8
  %69 = getelementptr inbounds %struct.uvd, %struct.uvd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 16
  store i64 0, i64* %70, align 8
  %71 = load %struct.uvd*, %struct.uvd** %2, align 8
  %72 = getelementptr inbounds %struct.uvd, %struct.uvd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @VIDEOSIZE_X(i32 %73)
  %75 = load %struct.uvd*, %struct.uvd** %2, align 8
  %76 = getelementptr inbounds %struct.uvd, %struct.uvd* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 15
  store i32 %74, i32* %77, align 4
  %78 = load %struct.uvd*, %struct.uvd** %2, align 8
  %79 = getelementptr inbounds %struct.uvd, %struct.uvd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @VIDEOSIZE_Y(i32 %80)
  %82 = load %struct.uvd*, %struct.uvd** %2, align 8
  %83 = getelementptr inbounds %struct.uvd, %struct.uvd* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 14
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @min_canvasWidth, align 4
  %86 = load %struct.uvd*, %struct.uvd** %2, align 8
  %87 = getelementptr inbounds %struct.uvd, %struct.uvd* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 13
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @min_canvasHeight, align 4
  %90 = load %struct.uvd*, %struct.uvd** %2, align 8
  %91 = getelementptr inbounds %struct.uvd, %struct.uvd* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 12
  store i32 %89, i32* %92, align 8
  %93 = load %struct.uvd*, %struct.uvd** %2, align 8
  %94 = getelementptr inbounds %struct.uvd, %struct.uvd* %93, i32 0, i32 0
  %95 = call i32 @memset(%struct.TYPE_2__* %94, i32 0, i32 96)
  %96 = load %struct.uvd*, %struct.uvd** %2, align 8
  %97 = getelementptr inbounds %struct.uvd, %struct.uvd* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 11
  store i64 0, i64* %98, align 8
  %99 = load %struct.uvd*, %struct.uvd** %2, align 8
  %100 = getelementptr inbounds %struct.uvd, %struct.uvd* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 10
  store i64 0, i64* %101, align 8
  %102 = load %struct.uvd*, %struct.uvd** %2, align 8
  %103 = getelementptr inbounds %struct.uvd, %struct.uvd* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 9
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @VIDEO_TYPE_CAMERA, align 4
  %106 = load %struct.uvd*, %struct.uvd** %2, align 8
  %107 = getelementptr inbounds %struct.uvd, %struct.uvd* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 8
  store i32 %105, i32* %108, align 8
  %109 = load %struct.uvd*, %struct.uvd** %2, align 8
  %110 = getelementptr inbounds %struct.uvd, %struct.uvd* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strcpy(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %6, %5
  ret void
}

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @VIDEOSIZE_X(i32) #1

declare dso_local i32 @VIDEOSIZE_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
