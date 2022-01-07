; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i32 }

@CLFCR = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_control*)* @sh_mobile_ceu_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_get_ctrl(%struct.soc_camera_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %10 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %12)
  store %struct.soc_camera_host* %13, %struct.soc_camera_host** %6, align 8
  %14 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %15 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %14, i32 0, i32 0
  %16 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %15, align 8
  store %struct.sh_mobile_ceu_dev* %16, %struct.sh_mobile_ceu_dev** %7, align 8
  %17 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
  ]

20:                                               ; preds = %2
  %21 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %22 = load i32, i32* @CLFCR, align 4
  %23 = call i32 @ceu_read(%struct.sh_mobile_ceu_dev* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = xor i32 %24, 1
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOIOCTLCMD, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @ceu_read(%struct.sh_mobile_ceu_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
