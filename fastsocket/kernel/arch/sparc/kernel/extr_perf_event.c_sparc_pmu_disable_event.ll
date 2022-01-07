; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_disable_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_disable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.cpu_hw_events = type { i32 }
%struct.hw_perf_event = type { i32 }

@pcr_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, %struct.hw_perf_event*, i32)* @sparc_pmu_disable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_pmu_disable_event(%struct.cpu_hw_events* %0, %struct.hw_perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @mask_for_index(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @nop_for_index(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcr_ops, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %31 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %29(i32 %32)
  ret void
}

declare dso_local i32 @mask_for_index(i32) #1

declare dso_local i32 @nop_for_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
