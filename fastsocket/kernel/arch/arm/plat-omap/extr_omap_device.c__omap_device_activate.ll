; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c__omap_device_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_omap_device.c__omap_device_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i64, i64, i64, %struct.TYPE_2__, %struct.omap_device_pm_latency* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.omap_device_pm_latency = type { i32, i32 (%struct.omap_device.0*)* }
%struct.omap_device.0 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"omap_device: %s: activating\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"omap_device: %s: pm_lat %d: activate: elapsed time %d usec\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"omap_device: %s.%d: activate step %d took longer than expected (%d > %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_device*, i32)* @_omap_device_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap_device_activate(%struct.omap_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_device_pm_latency*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_device* %0, %struct.omap_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %10 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %42, %2
  %15 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %16 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %95

19:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %20 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %21 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %25 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %24, i32 0, i32 4
  %26 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %25, align 8
  %27 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %28 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %26, i64 %29
  store %struct.omap_device_pm_latency* %30, %struct.omap_device_pm_latency** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %19
  %34 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %35 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %38 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %95

42:                                               ; preds = %33, %19
  %43 = call i32 (...) @_read_32ksynct()
  store i32 %43, i32* %5, align 4
  %44 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %45 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %44, i32 0, i32 1
  %46 = load i32 (%struct.omap_device.0*)*, i32 (%struct.omap_device.0*)** %45, align 8
  %47 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %48 = bitcast %struct.omap_device* %47 to %struct.omap_device.0*
  %49 = call i32 %46(%struct.omap_device.0* %48)
  %50 = call i32 (...) @_read_32ksynct()
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = ashr i32 %53, 15
  store i32 %54, i32* %8, align 4
  %55 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %56 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %60 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %66 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %71 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %75 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %79 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %84 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @WARN(i32 %69, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %77, i32 %81, i32 %82, i32 %85)
  %87 = load %struct.omap_device_pm_latency*, %struct.omap_device_pm_latency** %7, align 8
  %88 = getelementptr inbounds %struct.omap_device_pm_latency, %struct.omap_device_pm_latency* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = load %struct.omap_device*, %struct.omap_device** %3, align 8
  %92 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  br label %14

95:                                               ; preds = %41, %14
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
