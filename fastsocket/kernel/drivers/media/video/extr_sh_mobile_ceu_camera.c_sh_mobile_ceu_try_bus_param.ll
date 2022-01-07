; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_try_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_try_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 (%struct.soc_camera_device*)* }
%struct.TYPE_3__ = type { i32 }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @sh_mobile_ceu_try_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_try_bus_param(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %8 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %9 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %11)
  store %struct.soc_camera_host* %12, %struct.soc_camera_host** %4, align 8
  %13 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %14 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %13, i32 0, i32 0
  %15 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %14, align 8
  store %struct.sh_mobile_ceu_dev* %15, %struct.sh_mobile_ceu_dev** %5, align 8
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %17 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64 (%struct.soc_camera_device*)*, i64 (%struct.soc_camera_device*)** %19, align 8
  %21 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %22 = call i64 %20(%struct.soc_camera_device* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %5, align 8
  %25 = call i32 @make_bus_param(%struct.sh_mobile_ceu_dev* %24)
  %26 = call i64 @soc_camera_bus_param_compatible(i64 %23, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i64 @soc_camera_bus_param_compatible(i64, i32) #1

declare dso_local i32 @make_bus_param(%struct.sh_mobile_ceu_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
