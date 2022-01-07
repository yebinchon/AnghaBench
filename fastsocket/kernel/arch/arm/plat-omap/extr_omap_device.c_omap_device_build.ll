; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i32 }
%struct.omap_hwmod = type { i32 }
%struct.omap_device_pm_latency = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_device* @omap_device_build(i8* %0, i32 %1, %struct.omap_hwmod* %2, i8* %3, i32 %4, %struct.omap_device_pm_latency* %5, i32 %6) #0 {
  %8 = alloca %struct.omap_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_hwmod*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.omap_device_pm_latency*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [1 x %struct.omap_hwmod*], align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.omap_hwmod* %2, %struct.omap_hwmod** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.omap_device_pm_latency* %5, %struct.omap_device_pm_latency** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = getelementptr inbounds [1 x %struct.omap_hwmod*], [1 x %struct.omap_hwmod*]* %16, i64 0, i64 0
  %18 = load %struct.omap_hwmod*, %struct.omap_hwmod** %11, align 8
  store %struct.omap_hwmod* %18, %struct.omap_hwmod** %17, align 8
  %19 = load %struct.omap_hwmod*, %struct.omap_hwmod** %11, align 8
  %20 = icmp ne %struct.omap_hwmod* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.omap_device* @ERR_PTR(i32 %23)
  store %struct.omap_device* %24, %struct.omap_device** %8, align 8
  br label %34

25:                                               ; preds = %7
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds [1 x %struct.omap_hwmod*], [1 x %struct.omap_hwmod*]* %16, i64 0, i64 0
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call %struct.omap_device* @omap_device_build_ss(i8* %26, i32 %27, %struct.omap_hwmod** %28, i32 1, i8* %29, i32 %30, %struct.omap_device_pm_latency* %31, i32 %32)
  store %struct.omap_device* %33, %struct.omap_device** %8, align 8
  br label %34

34:                                               ; preds = %25, %21
  %35 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  ret %struct.omap_device* %35
}

declare dso_local %struct.omap_device* @ERR_PTR(i32) #1

declare dso_local %struct.omap_device* @omap_device_build_ss(i8*, i32, %struct.omap_hwmod**, i32, i8*, i32, %struct.omap_device_pm_latency*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
