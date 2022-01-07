; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_assign_hw_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel_uncore.c_uncore_assign_hw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i64* }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32, i64 }

@UNCORE_PMC_IDX_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*, i32)* @uncore_assign_hw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_assign_hw_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_perf_event*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %14 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UNCORE_PMC_IDX_FIXED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %30 = call i32 @uncore_fixed_ctr(%struct.intel_uncore_box* %29)
  %31 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %34 = call i32 @uncore_fixed_ctl(%struct.intel_uncore_box* %33)
  %35 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %36 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %52

37:                                               ; preds = %3
  %38 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %39 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %40 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @uncore_event_ctl(%struct.intel_uncore_box* %38, i32 %41)
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %44 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %46 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %47 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @uncore_perf_ctr(%struct.intel_uncore_box* %45, i32 %48)
  %50 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %51 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @uncore_fixed_ctr(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_fixed_ctl(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_event_ctl(%struct.intel_uncore_box*, i32) #1

declare dso_local i32 @uncore_perf_ctr(%struct.intel_uncore_box*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
