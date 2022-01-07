; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_setup_on_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_quickcam_messenger.c_qcm_setup_on_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @qcm_setup_on_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcm_setup_on_open(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.uvd*, %struct.uvd** %2, align 8
  %6 = load %struct.uvd*, %struct.uvd** %2, align 8
  %7 = getelementptr inbounds %struct.uvd, %struct.uvd* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.uvd*, %struct.uvd** %2, align 8
  %11 = getelementptr inbounds %struct.uvd, %struct.uvd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uvd*, %struct.uvd** %2, align 8
  %15 = getelementptr inbounds %struct.uvd, %struct.uvd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qcm_sensor_set_gains(%struct.uvd* %5, i32 %9, i32 %13, i32 %17)
  %19 = call i32 @CHECK_RET(i32 %4, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.uvd*, %struct.uvd** %2, align 8
  %22 = load %struct.uvd*, %struct.uvd** %2, align 8
  %23 = getelementptr inbounds %struct.uvd, %struct.uvd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qcm_sensor_set_exposure(%struct.uvd* %21, i32 %25)
  %27 = call i32 @CHECK_RET(i32 %20, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.uvd*, %struct.uvd** %2, align 8
  %30 = load %struct.uvd*, %struct.uvd** %2, align 8
  %31 = getelementptr inbounds %struct.uvd, %struct.uvd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qcm_sensor_set_shutter(%struct.uvd* %29, i32 %33)
  %35 = call i32 @CHECK_RET(i32 %28, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.uvd*, %struct.uvd** %2, align 8
  %38 = call i32 @qcm_set_camera_size(%struct.uvd* %37)
  %39 = call i32 @CHECK_RET(i32 %36, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.uvd*, %struct.uvd** %2, align 8
  %42 = call i32 @qcm_camera_on(%struct.uvd* %41)
  %43 = call i32 @CHECK_RET(i32 %40, i32 %42)
  ret i32 0
}

declare dso_local i32 @CHECK_RET(i32, i32) #1

declare dso_local i32 @qcm_sensor_set_gains(%struct.uvd*, i32, i32, i32) #1

declare dso_local i32 @qcm_sensor_set_exposure(%struct.uvd*, i32) #1

declare dso_local i32 @qcm_sensor_set_shutter(%struct.uvd*, i32) #1

declare dso_local i32 @qcm_set_camera_size(%struct.uvd*) #1

declare dso_local i32 @qcm_camera_on(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
