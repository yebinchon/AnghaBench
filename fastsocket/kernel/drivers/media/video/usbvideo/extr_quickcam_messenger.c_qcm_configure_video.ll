; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_configure_video.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_configure_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.uvd = type { %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@colour = common dso_local global i32 0, align 4
@hue = common dso_local global i32 0, align 4
@brightness = common dso_local global i32 0, align 4
@contrast = common dso_local global i32 0, align 4
@whiteness = common dso_local global i32 0, align 4
@VIDEO_PALETTE_RGB24 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"QCM USB Camera\00", align 1
@VID_TYPE_CAPTURE = common dso_local global i32 0, align 4
@camera_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@SIZE_160X120 = common dso_local global i64 0, align 8
@SIZE_320X240 = common dso_local global i64 0, align 8
@VIDEO_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @qcm_configure_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_configure_video(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %4 = load %struct.uvd*, %struct.uvd** %2, align 8
  %5 = getelementptr inbounds %struct.uvd, %struct.uvd* %4, i32 0, i32 2
  %6 = call i32 @memset(%struct.TYPE_3__* %5, i32 0, i32 88)
  %7 = load %struct.uvd*, %struct.uvd** %2, align 8
  %8 = getelementptr inbounds %struct.uvd, %struct.uvd* %7, i32 0, i32 3
  %9 = call i32 @memset(%struct.TYPE_3__* %8, i32 85, i32 88)
  %10 = load i32, i32* @colour, align 4
  %11 = load %struct.uvd*, %struct.uvd** %2, align 8
  %12 = getelementptr inbounds %struct.uvd, %struct.uvd* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 17
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @hue, align 4
  %15 = load %struct.uvd*, %struct.uvd** %2, align 8
  %16 = getelementptr inbounds %struct.uvd, %struct.uvd* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 16
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @brightness, align 4
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = getelementptr inbounds %struct.uvd, %struct.uvd* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 15
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @contrast, align 4
  %23 = load %struct.uvd*, %struct.uvd** %2, align 8
  %24 = getelementptr inbounds %struct.uvd, %struct.uvd* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 14
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @whiteness, align 4
  %27 = load %struct.uvd*, %struct.uvd** %2, align 8
  %28 = getelementptr inbounds %struct.uvd, %struct.uvd* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 13
  store i32 %26, i32* %29, align 4
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 24, i32* %32, align 8
  %33 = load i32, i32* @VIDEO_PALETTE_RGB24, align 4
  %34 = load %struct.uvd*, %struct.uvd** %2, align 8
  %35 = getelementptr inbounds %struct.uvd, %struct.uvd* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 12
  store i32 %33, i32* %36, align 8
  %37 = load %struct.uvd*, %struct.uvd** %2, align 8
  %38 = getelementptr inbounds %struct.uvd, %struct.uvd* %37, i32 0, i32 1
  %39 = call i32 @memset(%struct.TYPE_3__* %38, i32 0, i32 88)
  %40 = load %struct.uvd*, %struct.uvd** %2, align 8
  %41 = getelementptr inbounds %struct.uvd, %struct.uvd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @strcpy(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @VID_TYPE_CAPTURE, align 4
  %46 = load %struct.uvd*, %struct.uvd** %2, align 8
  %47 = getelementptr inbounds %struct.uvd, %struct.uvd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.uvd*, %struct.uvd** %2, align 8
  %50 = getelementptr inbounds %struct.uvd, %struct.uvd* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.uvd*, %struct.uvd** %2, align 8
  %53 = getelementptr inbounds %struct.uvd, %struct.uvd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 11
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %56 = load i64, i64* @SIZE_160X120, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uvd*, %struct.uvd** %2, align 8
  %61 = getelementptr inbounds %struct.uvd, %struct.uvd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 10
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %64 = load i64, i64* @SIZE_160X120, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.uvd*, %struct.uvd** %2, align 8
  %69 = getelementptr inbounds %struct.uvd, %struct.uvd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 9
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %72 = load i64, i64* @SIZE_320X240, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.uvd*, %struct.uvd** %2, align 8
  %77 = getelementptr inbounds %struct.uvd, %struct.uvd* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  store i32 %75, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @camera_sizes, align 8
  %80 = load i64, i64* @SIZE_320X240, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.uvd*, %struct.uvd** %2, align 8
  %85 = getelementptr inbounds %struct.uvd, %struct.uvd* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 7
  store i32 %83, i32* %86, align 8
  %87 = load %struct.uvd*, %struct.uvd** %2, align 8
  %88 = getelementptr inbounds %struct.uvd, %struct.uvd* %87, i32 0, i32 0
  %89 = call i32 @memset(%struct.TYPE_3__* %88, i32 0, i32 88)
  %90 = load %struct.uvd*, %struct.uvd** %2, align 8
  %91 = getelementptr inbounds %struct.uvd, %struct.uvd* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.uvd*, %struct.uvd** %2, align 8
  %94 = getelementptr inbounds %struct.uvd, %struct.uvd* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.uvd*, %struct.uvd** %2, align 8
  %97 = getelementptr inbounds %struct.uvd, %struct.uvd* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @VIDEO_TYPE_CAMERA, align 4
  %100 = load %struct.uvd*, %struct.uvd** %2, align 8
  %101 = getelementptr inbounds %struct.uvd, %struct.uvd* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load %struct.uvd*, %struct.uvd** %2, align 8
  %104 = getelementptr inbounds %struct.uvd, %struct.uvd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @strcpy(i32 %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %3, align 4
  %109 = load %struct.uvd*, %struct.uvd** %2, align 8
  %110 = call i32 @qcm_sensor_init(%struct.uvd* %109)
  %111 = call i32 @CHECK_RET(i32 %108, i32 %110)
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @CHECK_RET(i32, i32) #1

declare dso_local i32 @qcm_sensor_init(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
