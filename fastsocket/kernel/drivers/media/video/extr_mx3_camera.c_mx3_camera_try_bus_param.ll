; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_try_bus_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_try_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.soc_camera_device*)* }
%struct.soc_camera_host = type { %struct.mx3_camera_dev* }
%struct.mx3_camera_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"request bus width %d bit: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Flags incompatible: camera %lx, host %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32)* @mx3_camera_try_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3_camera_try_bus_param(%struct.soc_camera_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.mx3_camera_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %12 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %14)
  store %struct.soc_camera_host* %15, %struct.soc_camera_host** %6, align 8
  %16 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %17 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %16, i32 0, i32 0
  %18 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %17, align 8
  store %struct.mx3_camera_dev* %18, %struct.mx3_camera_dev** %7, align 8
  %19 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @test_platform_param(%struct.mx3_camera_dev* %19, i32 %20, i64* %8)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %23 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %2
  %34 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %35 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64 (%struct.soc_camera_device*)*, i64 (%struct.soc_camera_device*)** %37, align 8
  %39 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %40 = call i64 %38(%struct.soc_camera_device* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @soc_camera_bus_param_compatible(i64 %41, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %48 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @dev_warn(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %46, %33
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %31
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @test_platform_param(%struct.mx3_camera_dev*, i32, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @soc_camera_bus_param_compatible(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
