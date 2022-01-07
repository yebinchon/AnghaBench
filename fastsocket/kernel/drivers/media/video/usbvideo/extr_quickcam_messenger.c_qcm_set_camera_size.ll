; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_set_camera_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_set_camera_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uvd = type { i32, i64 }
%struct.qcm = type { i64, i32, i32 }

@camera_sizes = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @qcm_set_camera_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_set_camera_size(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcm*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %5 = load %struct.uvd*, %struct.uvd** %2, align 8
  %6 = getelementptr inbounds %struct.uvd, %struct.uvd* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.qcm*
  store %struct.qcm* %8, %struct.qcm** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.uvd*, %struct.uvd** %2, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @camera_sizes, align 8
  %12 = load %struct.qcm*, %struct.qcm** %4, align 8
  %13 = getelementptr inbounds %struct.qcm, %struct.qcm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qcm_sensor_setsize(%struct.uvd* %10, i32 %17)
  %19 = call i32 @CHECK_RET(i32 %9, i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @camera_sizes, align 8
  %21 = load %struct.qcm*, %struct.qcm** %4, align 8
  %22 = getelementptr inbounds %struct.qcm, %struct.qcm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qcm*, %struct.qcm** %4, align 8
  %28 = getelementptr inbounds %struct.qcm, %struct.qcm* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @camera_sizes, align 8
  %30 = load %struct.qcm*, %struct.qcm** %4, align 8
  %31 = getelementptr inbounds %struct.qcm, %struct.qcm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qcm*, %struct.qcm** %4, align 8
  %37 = getelementptr inbounds %struct.qcm, %struct.qcm* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.qcm*, %struct.qcm** %4, align 8
  %39 = getelementptr inbounds %struct.qcm, %struct.qcm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qcm*, %struct.qcm** %4, align 8
  %42 = getelementptr inbounds %struct.qcm, %struct.qcm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @VIDEOSIZE(i32 %40, i32 %43)
  %45 = load %struct.uvd*, %struct.uvd** %2, align 8
  %46 = getelementptr inbounds %struct.uvd, %struct.uvd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret i32 0
}

declare dso_local i32 @CHECK_RET(i32, i32) #1

declare dso_local i32 @qcm_sensor_setsize(%struct.uvd*, i32) #1

declare dso_local i32 @VIDEOSIZE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
