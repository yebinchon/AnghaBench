; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c___intel_shared_reg_get_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c___intel_shared_reg_get_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.er_account* }
%struct.er_account = type { i64, i32, i32, i32 }
%struct.perf_event = type { i32 }
%struct.hw_perf_event_extra = type { i32, i32, i64, i32 }

@emptyconstraint = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*, %struct.hw_perf_event_extra*)* @__intel_shared_reg_get_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @__intel_shared_reg_get_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1, %struct.hw_perf_event_extra* %2) #0 {
  %4 = alloca %struct.event_constraint*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.event_constraint*, align 8
  %9 = alloca %struct.er_account*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %5, align 8
  store %struct.perf_event* %1, %struct.perf_event** %6, align 8
  store %struct.hw_perf_event_extra* %2, %struct.hw_perf_event_extra** %7, align 8
  store %struct.event_constraint* @emptyconstraint, %struct.event_constraint** %8, align 8
  %12 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.event_constraint* null, %struct.event_constraint** %4, align 8
  br label %81

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %69, %20
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.er_account*, %struct.er_account** %25, align 8
  %27 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.er_account, %struct.er_account* %26, i64 %30
  store %struct.er_account* %31, %struct.er_account** %9, align 8
  %32 = load %struct.er_account*, %struct.er_account** %9, align 8
  %33 = getelementptr inbounds %struct.er_account, %struct.er_account* %32, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.er_account*, %struct.er_account** %9, align 8
  %37 = getelementptr inbounds %struct.er_account, %struct.er_account* %36, i32 0, i32 2
  %38 = call i32 @atomic_read(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %21
  %41 = load %struct.er_account*, %struct.er_account** %9, align 8
  %42 = getelementptr inbounds %struct.er_account, %struct.er_account* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %40, %21
  %49 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %50 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.er_account*, %struct.er_account** %9, align 8
  %53 = getelementptr inbounds %struct.er_account, %struct.er_account* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.er_account*, %struct.er_account** %9, align 8
  %58 = getelementptr inbounds %struct.er_account, %struct.er_account* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.er_account*, %struct.er_account** %9, align 8
  %60 = getelementptr inbounds %struct.er_account, %struct.er_account* %59, i32 0, i32 2
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  store %struct.event_constraint* null, %struct.event_constraint** %8, align 8
  br label %75

64:                                               ; preds = %40
  %65 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @intel_try_alt_er(%struct.perf_event* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.er_account*, %struct.er_account** %9, align 8
  %71 = getelementptr inbounds %struct.er_account, %struct.er_account* %70, i32 0, i32 1
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %21

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %48
  %76 = load %struct.er_account*, %struct.er_account** %9, align 8
  %77 = getelementptr inbounds %struct.er_account, %struct.er_account* %76, i32 0, i32 1
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  store %struct.event_constraint* %80, %struct.event_constraint** %4, align 8
  br label %81

81:                                               ; preds = %75, %19
  %82 = load %struct.event_constraint*, %struct.event_constraint** %4, align 8
  ret %struct.event_constraint* %82
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @intel_try_alt_er(%struct.perf_event*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
