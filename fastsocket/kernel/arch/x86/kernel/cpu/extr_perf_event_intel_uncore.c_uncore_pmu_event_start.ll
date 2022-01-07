; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.intel_uncore_box = type { i32, i32, %struct.perf_event** }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@UNCORE_PMC_IDX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @uncore_pmu_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_pmu_event_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_box*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %7)
  store %struct.intel_uncore_box* %8, %struct.intel_uncore_box** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PERF_HES_STOPPED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %77

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %31 = icmp sge i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ true, %25 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %77

38:                                               ; preds = %32
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %44 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %43, i32 0, i32 2
  %45 = load %struct.perf_event**, %struct.perf_event*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %45, i64 %47
  store %struct.perf_event* %42, %struct.perf_event** %48, align 8
  %49 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %50 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %55 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @__set_bit(i32 %53, i32 %56)
  %58 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %62 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %63 = call i32 @uncore_read_counter(%struct.intel_uncore_box* %61, %struct.perf_event* %62)
  %64 = call i32 @local64_set(i32* %60, i32 %63)
  %65 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %66 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %67 = call i32 @uncore_enable_event(%struct.intel_uncore_box* %65, %struct.perf_event* %66)
  %68 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %69 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %77

72:                                               ; preds = %38
  %73 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %74 = call i32 @uncore_enable_box(%struct.intel_uncore_box* %73)
  %75 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %76 = call i32 @uncore_pmu_start_hrtimer(%struct.intel_uncore_box* %75)
  br label %77

77:                                               ; preds = %24, %37, %72, %38
  ret void
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @uncore_read_counter(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i32 @uncore_enable_event(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i32 @uncore_enable_box(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_pmu_start_hrtimer(%struct.intel_uncore_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
