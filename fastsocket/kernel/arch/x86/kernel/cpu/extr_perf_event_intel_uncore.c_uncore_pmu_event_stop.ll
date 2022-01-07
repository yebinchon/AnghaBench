; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_pmu_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32 }
%struct.intel_uncore_box = type { i64, i32**, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @uncore_pmu_event_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_pmu_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_box*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %7)
  store %struct.intel_uncore_box* %8, %struct.intel_uncore_box** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %6, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %15 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @__test_and_clear_bit(i64 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = call i32 @uncore_disable_event(%struct.intel_uncore_box* %20, %struct.perf_event* %21)
  %23 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %24 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %28 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  store i32* null, i32** %33, align 8
  %34 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %35 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PERF_HES_STOPPED, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @WARN_ON_ONCE(i32 %38)
  %40 = load i32, i32* @PERF_HES_STOPPED, align 4
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %46 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %19
  %50 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %51 = call i32 @uncore_disable_box(%struct.intel_uncore_box* %50)
  %52 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %53 = call i32 @uncore_pmu_cancel_hrtimer(%struct.intel_uncore_box* %52)
  br label %54

54:                                               ; preds = %49, %19
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PERF_EF_UPDATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %62 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %60
  %68 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %69 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %70 = call i32 @uncore_perf_event_update(%struct.intel_uncore_box* %68, %struct.perf_event* %69)
  %71 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %72 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %73 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %67, %60, %55
  ret void
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

declare dso_local i64 @__test_and_clear_bit(i64, i32) #1

declare dso_local i32 @uncore_disable_event(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @uncore_disable_box(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_pmu_cancel_hrtimer(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_perf_event_update(%struct.intel_uncore_box*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
