; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_get_event_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event_intel.c_intel_get_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*)* @intel_get_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @intel_get_event_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.event_constraint*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %8 = call %struct.event_constraint* @intel_bts_constraints(%struct.perf_event* %7)
  store %struct.event_constraint* %8, %struct.event_constraint** %6, align 8
  %9 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  %10 = icmp ne %struct.event_constraint* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  store %struct.event_constraint* %12, %struct.event_constraint** %3, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %15 = call %struct.event_constraint* @intel_pebs_constraints(%struct.perf_event* %14)
  store %struct.event_constraint* %15, %struct.event_constraint** %6, align 8
  %16 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  %17 = icmp ne %struct.event_constraint* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  store %struct.event_constraint* %19, %struct.event_constraint** %3, align 8
  br label %32

20:                                               ; preds = %13
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %23 = call %struct.event_constraint* @intel_shared_regs_constraints(%struct.cpu_hw_events* %21, %struct.perf_event* %22)
  store %struct.event_constraint* %23, %struct.event_constraint** %6, align 8
  %24 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  %25 = icmp ne %struct.event_constraint* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  store %struct.event_constraint* %27, %struct.event_constraint** %3, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %31 = call %struct.event_constraint* @x86_get_event_constraints(%struct.cpu_hw_events* %29, %struct.perf_event* %30)
  store %struct.event_constraint* %31, %struct.event_constraint** %3, align 8
  br label %32

32:                                               ; preds = %28, %26, %18, %11
  %33 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %33
}

declare dso_local %struct.event_constraint* @intel_bts_constraints(%struct.perf_event*) #1

declare dso_local %struct.event_constraint* @intel_pebs_constraints(%struct.perf_event*) #1

declare dso_local %struct.event_constraint* @intel_shared_regs_constraints(%struct.cpu_hw_events*, %struct.perf_event*) #1

declare dso_local %struct.event_constraint* @x86_get_event_constraints(%struct.cpu_hw_events*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
