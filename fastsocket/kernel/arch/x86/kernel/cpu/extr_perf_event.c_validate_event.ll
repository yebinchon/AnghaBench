; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_validate_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_validate_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, %struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*)* }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { i32 }
%struct.event_constraint = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @validate_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_event(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.event_constraint*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = call %struct.cpu_hw_events* (...) @allocate_fake_cpuc()
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %4, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %9 = call i64 @IS_ERR(%struct.cpu_hw_events* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.cpu_hw_events* %12)
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*)*, %struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = call %struct.event_constraint* %15(%struct.cpu_hw_events* %16, %struct.perf_event* %17)
  store %struct.event_constraint* %18, %struct.event_constraint** %5, align 8
  %19 = load %struct.event_constraint*, %struct.event_constraint** %5, align 8
  %20 = icmp ne %struct.event_constraint* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.event_constraint*, %struct.event_constraint** %5, align 8
  %23 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %31 = icmp ne i32 (%struct.cpu_hw_events*, %struct.perf_event*)* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = call i32 %33(%struct.cpu_hw_events* %34, %struct.perf_event* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %39 = call i32 @free_fake_cpuc(%struct.cpu_hw_events* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.cpu_hw_events* @allocate_fake_cpuc(...) #1

declare dso_local i64 @IS_ERR(%struct.cpu_hw_events*) #1

declare dso_local i32 @PTR_ERR(%struct.cpu_hw_events*) #1

declare dso_local i32 @free_fake_cpuc(%struct.cpu_hw_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
