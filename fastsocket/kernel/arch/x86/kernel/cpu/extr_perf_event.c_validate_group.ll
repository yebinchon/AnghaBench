; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_validate_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_validate_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpu_hw_events*, i32, i32*)* }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { %struct.perf_event* }

@ENOSPC = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @validate_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_group(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  store %struct.perf_event* %10, %struct.perf_event** %4, align 8
  %11 = load i32, i32* @ENOSPC, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = call %struct.cpu_hw_events* (...) @allocate_fake_cpuc()
  store %struct.cpu_hw_events* %13, %struct.cpu_hw_events** %5, align 8
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %15 = call i64 @IS_ERR(%struct.cpu_hw_events* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.cpu_hw_events* %18)
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = call i32 @collect_events(%struct.cpu_hw_events* %21, %struct.perf_event* %22, i32 1)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %30 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = call i32 @collect_events(%struct.cpu_hw_events* %31, %struct.perf_event* %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %40 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32 (%struct.cpu_hw_events*, i32, i32*)*, i32 (%struct.cpu_hw_events*, i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %42 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 %41(%struct.cpu_hw_events* %42, i32 %43, i32* null)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %37, %36, %26
  %46 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %47 = call i32 @free_fake_cpuc(%struct.cpu_hw_events* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %17
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.cpu_hw_events* @allocate_fake_cpuc(...) #1

declare dso_local i64 @IS_ERR(%struct.cpu_hw_events*) #1

declare dso_local i32 @PTR_ERR(%struct.cpu_hw_events*) #1

declare dso_local i32 @collect_events(%struct.cpu_hw_events*, %struct.perf_event*, i32) #1

declare dso_local i32 @free_fake_cpuc(%struct.cpu_hw_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
