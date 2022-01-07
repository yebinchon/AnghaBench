; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_bts_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_bts_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32)* }
%struct.event_constraint = type { i32 }
%struct.perf_event = type { %struct.TYPE_3__, %struct.hw_perf_event }
%struct.TYPE_3__ = type { i64 }
%struct.hw_perf_event = type { i32, i32 }

@INTEL_ARCH_EVENT_MASK = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PERF_COUNT_HW_BRANCH_INSTRUCTIONS = common dso_local global i32 0, align 4
@bts_constraint = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.perf_event*)* @intel_bts_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @intel_bts_constraints(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.event_constraint*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.event_constraint* null, %struct.event_constraint** %2, align 8
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INTEL_ARCH_EVENT_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %22 = load i32, i32* @PERF_COUNT_HW_BRANCH_INSTRUCTIONS, align 4
  %23 = call i32 %21(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br label %32

32:                                               ; preds = %27, %15
  %33 = phi i1 [ false, %15 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.event_constraint* @bts_constraint, %struct.event_constraint** %2, align 8
  br label %39

38:                                               ; preds = %32
  store %struct.event_constraint* null, %struct.event_constraint** %2, align 8
  br label %39

39:                                               ; preds = %38, %37, %14
  %40 = load %struct.event_constraint*, %struct.event_constraint** %2, align 8
  ret %struct.event_constraint* %40
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
