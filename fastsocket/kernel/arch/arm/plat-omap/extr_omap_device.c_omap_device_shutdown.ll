; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c_omap_device_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_device = type { i64, i32, %struct.omap_hwmod**, %struct.TYPE_2__ }
%struct.omap_hwmod = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OMAP_DEVICE_STATE_ENABLED = common dso_local global i64 0, align 8
@OMAP_DEVICE_STATE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"omap_device: %s.%d: omap_device_shutdown() called from invalid state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IGNORE_WAKEUP_LAT = common dso_local global i32 0, align 4
@OMAP_DEVICE_STATE_SHUTDOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_device_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_device*, align 8
  %7 = alloca %struct.omap_hwmod*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.omap_device* @_find_by_pdev(%struct.platform_device* %8)
  store %struct.omap_device* %9, %struct.omap_device** %6, align 8
  %10 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %11 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OMAP_DEVICE_STATE_ENABLED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %17 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OMAP_DEVICE_STATE_IDLE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %23 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %27 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %15, %1
  %34 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %35 = load i32, i32* @IGNORE_WAKEUP_LAT, align 4
  %36 = call i32 @_omap_device_deactivate(%struct.omap_device* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %37 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %38 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %37, i32 0, i32 2
  %39 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %38, align 8
  %40 = load %struct.omap_hwmod*, %struct.omap_hwmod** %39, align 8
  store %struct.omap_hwmod* %40, %struct.omap_hwmod** %7, align 8
  br label %41

41:                                               ; preds = %50, %33
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %44 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.omap_hwmod*, %struct.omap_hwmod** %7, align 8
  %49 = call i32 @omap_hwmod_shutdown(%struct.omap_hwmod* %48)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = load %struct.omap_hwmod*, %struct.omap_hwmod** %7, align 8
  %54 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %53, i32 1
  store %struct.omap_hwmod* %54, %struct.omap_hwmod** %7, align 8
  br label %41

55:                                               ; preds = %41
  %56 = load i64, i64* @OMAP_DEVICE_STATE_SHUTDOWN, align 8
  %57 = load %struct.omap_device*, %struct.omap_device** %6, align 8
  %58 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.omap_device* @_find_by_pdev(%struct.platform_device*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @_omap_device_deactivate(%struct.omap_device*, i32) #1

declare dso_local i32 @omap_hwmod_shutdown(%struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
