; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_try_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_try_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 (%struct.soc_camera_device*)* }
%struct.TYPE_3__ = type { i32 }
%struct.soc_camera_host = type { %struct.pxa_camera_dev* }
%struct.pxa_camera_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i8)* @pxa_camera_try_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_try_bus_param(%struct.soc_camera_device* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.pxa_camera_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %12 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %14)
  store %struct.soc_camera_host* %15, %struct.soc_camera_host** %6, align 8
  %16 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %17 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %16, i32 0, i32 0
  %18 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %17, align 8
  store %struct.pxa_camera_dev* %18, %struct.pxa_camera_dev** %7, align 8
  %19 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %7, align 8
  %20 = load i8, i8* %5, align 1
  %21 = call i32 @test_platform_param(%struct.pxa_camera_dev* %19, i8 zeroext %20, i64* %8)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %28 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64 (%struct.soc_camera_device*)*, i64 (%struct.soc_camera_device*)** %30, align 8
  %32 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %33 = call i64 %31(%struct.soc_camera_device* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @soc_camera_bus_param_compatible(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi i32 [ 0, %38 ], [ %41, %39 ]
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @test_platform_param(%struct.pxa_camera_dev*, i8 zeroext, i64*) #1

declare dso_local i64 @soc_camera_bus_param_compatible(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
