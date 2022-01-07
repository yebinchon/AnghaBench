; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_align_pm_lat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_align_pm_lat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_device = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_DEVICE_STATE_IDLE = common dso_local global i64 0, align 8
@USE_WAKEUP_LAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_device_align_pm_lat(%struct.platform_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = call %struct.omap_device* @_find_by_pdev(%struct.platform_device* %10)
  store %struct.omap_device* %11, %struct.omap_device** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.omap_device*, %struct.omap_device** %7, align 8
  %14 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.omap_device*, %struct.omap_device** %7, align 8
  %21 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.omap_device*, %struct.omap_device** %7, align 8
  %23 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OMAP_DEVICE_STATE_IDLE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %52

28:                                               ; preds = %18
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.omap_device*, %struct.omap_device** %7, align 8
  %31 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.omap_device*, %struct.omap_device** %7, align 8
  %36 = load i32, i32* @USE_WAKEUP_LAT, align 4
  %37 = call i32 @_omap_device_deactivate(%struct.omap_device* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %49

38:                                               ; preds = %28
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.omap_device*, %struct.omap_device** %7, align 8
  %41 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.omap_device*, %struct.omap_device** %7, align 8
  %46 = load i32, i32* @USE_WAKEUP_LAT, align 4
  %47 = call i32 @_omap_device_activate(%struct.omap_device* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %27, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.omap_device* @_find_by_pdev(%struct.platform_device*) #1

declare dso_local i32 @_omap_device_deactivate(%struct.omap_device*, i32) #1

declare dso_local i32 @_omap_device_activate(%struct.omap_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
