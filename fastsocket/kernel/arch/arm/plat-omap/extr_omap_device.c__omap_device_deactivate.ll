; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c__omap_device_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c__omap_device_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i64, i64, i64, i64, %struct.TYPE_2__, %struct.omap_device_pm_latency* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.omap_device_pm_latency = type { i64, i32, i32 (%struct.omap_device.0*)* }
%struct.omap_device.0 = type opaque

@.str = private unnamed_addr constant [31 x i8] c"omap_device: %s: deactivating\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"omap_device: %s: pm_lat %d: deactivate: elapsed time %d usec\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"omap_device: %s.%d: deactivate step %d took longer than expected (%d > %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_device*, i32)* @_omap_device_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap_device_deactivate(%struct.omap_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_device_pm_latency*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_device* %0, %struct.omap_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %45, %2
  %15 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %16 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %19 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %101

22:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %23 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %24 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %23, i32 0, i32 5
  %25 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %24, align 8
  %26 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %27 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %25, i64 %28
  store %struct.omap_device_pm_latency* %29, %struct.omap_device_pm_latency** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %22
  %33 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %34 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %37 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %41 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %101

45:                                               ; preds = %32, %22
  %46 = call i32 (...) @_read_32ksynct()
  store i32 %46, i32* %5, align 4
  %47 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %48 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %47, i32 0, i32 2
  %49 = load i32 (%struct.omap_device.0*)*, i32 (%struct.omap_device.0*)** %48, align 8
  %50 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %51 = bitcast %struct.omap_device* %50 to %struct.omap_device.0*
  %52 = call i32 %49(%struct.omap_device.0* %51)
  %53 = call i32 (...) @_read_32ksynct()
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %54, %55
  %57 = ashr i32 %56, 15
  store i32 %57, i32* %8, align 4
  %58 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %59 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %63 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %69 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %74 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %78 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %82 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %87 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @WARN(i32 %72, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %80, i32 %84, i32 %85, i32 %88)
  %90 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %91 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %94 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %98 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  br label %14

101:                                              ; preds = %44, %14
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @_read_32ksynct(...) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
