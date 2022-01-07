; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_validate_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_validate_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_pmu = type { i32 }
%struct.perf_event = type { %struct.perf_event* }
%struct.intel_uncore_box = type { i32, %struct.intel_uncore_pmu* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_pmu*, %struct.perf_event*)* @uncore_validate_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_validate_group(%struct.intel_uncore_pmu* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_pmu*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.intel_uncore_box*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_uncore_pmu* %0, %struct.intel_uncore_pmu** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load %struct.perf_event*, %struct.perf_event** %11, align 8
  store %struct.perf_event* %12, %struct.perf_event** %6, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %4, align 8
  %16 = getelementptr inbounds %struct.intel_uncore_pmu, %struct.intel_uncore_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (...) @smp_processor_id()
  %19 = call %struct.intel_uncore_box* @uncore_alloc_box(i32 %17, i32 %18)
  store %struct.intel_uncore_box* %19, %struct.intel_uncore_box** %7, align 8
  %20 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %21 = icmp ne %struct.intel_uncore_box* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %4, align 8
  %27 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %28 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %27, i32 0, i32 1
  store %struct.intel_uncore_pmu* %26, %struct.intel_uncore_pmu** %28, align 8
  %29 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %31 = call i32 @uncore_collect_events(%struct.intel_uncore_box* %29, %struct.perf_event* %30, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %52

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %38 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %41 = call i32 @uncore_collect_events(%struct.intel_uncore_box* %39, %struct.perf_event* %40, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %52

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %48 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @uncore_assign_events(%struct.intel_uncore_box* %49, i32* null, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %44, %34
  %53 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %54 = call i32 @kfree(%struct.intel_uncore_box* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %22
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.intel_uncore_box* @uncore_alloc_box(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @uncore_collect_events(%struct.intel_uncore_box*, %struct.perf_event*, i32) #1

declare dso_local i32 @uncore_assign_events(%struct.intel_uncore_box*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.intel_uncore_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
