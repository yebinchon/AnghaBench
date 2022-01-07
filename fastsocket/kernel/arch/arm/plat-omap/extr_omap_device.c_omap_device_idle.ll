; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@OMAP_DEVICE_STATE_ENABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"omap_device: %s.%d: omap_device_idle() called from invalid state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USE_WAKEUP_LAT = common dso_local global i32 0, align 4
@OMAP_DEVICE_STATE_IDLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_device_idle(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.omap_device* @_find_by_pdev(%struct.platform_device* %6)
  store %struct.omap_device* %7, %struct.omap_device** %5, align 8
  %8 = load %struct.omap_device*, %struct.omap_device** %5, align 8
  %9 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OMAP_DEVICE_STATE_ENABLED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.omap_device*, %struct.omap_device** %5, align 8
  %15 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.omap_device*, %struct.omap_device** %5, align 8
  %19 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.omap_device*, %struct.omap_device** %5, align 8
  %27 = load i32, i32* @USE_WAKEUP_LAT, align 4
  %28 = call i32 @_omap_device_deactivate(%struct.omap_device* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* @OMAP_DEVICE_STATE_IDLE, align 8
  %30 = load %struct.omap_device*, %struct.omap_device** %5, align 8
  %31 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.omap_device* @_find_by_pdev(%struct.platform_device*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @_omap_device_deactivate(%struct.omap_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
