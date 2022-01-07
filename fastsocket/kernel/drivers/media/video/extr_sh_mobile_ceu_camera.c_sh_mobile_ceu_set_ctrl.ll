; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i32 }

@CLFCR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_control*)* @sh_mobile_ceu_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_set_ctrl(%struct.soc_camera_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.sh_mobile_ceu_dev*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %9 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %11)
  store %struct.soc_camera_host* %12, %struct.soc_camera_host** %6, align 8
  %13 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %14 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %13, i32 0, i32 0
  %15 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %14, align 8
  store %struct.sh_mobile_ceu_dev* %15, %struct.sh_mobile_ceu_dev** %7, align 8
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %38 [
    i32 132, label %19
  ]

19:                                               ; preds = %2
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %21 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %35 [
    i32 131, label %25
    i32 129, label %25
    i32 130, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %19, %19, %19, %19
  %26 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %7, align 8
  %27 = load i32, i32* @CLFCR, align 4
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %26, i32 %27, i32 %33)
  store i32 0, i32* %3, align 4
  br label %41

35:                                               ; preds = %19
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOIOCTLCMD, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %35, %25
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @ceu_write(%struct.sh_mobile_ceu_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
