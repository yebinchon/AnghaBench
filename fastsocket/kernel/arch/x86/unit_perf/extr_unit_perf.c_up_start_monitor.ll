; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_up_start_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_up_start_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_perf_monitor = type { i32 }
%struct.cpu_cost_stats = type { i32 }

@g_up_monitor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @up_start_monitor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.unit_perf_monitor*, align 8
  %4 = alloca %struct.cpu_cost_stats*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load i32, i32* @g_up_monitor, align 4
  %7 = call %struct.unit_perf_monitor* @rcu_dereference(i32 %6)
  store %struct.unit_perf_monitor* %7, %struct.unit_perf_monitor** %3, align 8
  %8 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %3, align 8
  %9 = icmp ne %struct.unit_perf_monitor* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call %struct.cpu_cost_stats* @get_monitorer_stats(%struct.unit_perf_monitor* %11, i8* %12)
  store %struct.cpu_cost_stats* %13, %struct.cpu_cost_stats** %4, align 8
  %14 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %4, align 8
  %15 = icmp ne %struct.cpu_cost_stats* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %4, align 8
  %18 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @UP_GET_CPU_CYCLES(i32 %19)
  br label %21

21:                                               ; preds = %16, %10
  br label %22

22:                                               ; preds = %21, %1
  %23 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.unit_perf_monitor* @rcu_dereference(i32) #1

declare dso_local %struct.cpu_cost_stats* @get_monitorer_stats(%struct.unit_perf_monitor*, i8*) #1

declare dso_local i32 @UP_GET_CPU_CYCLES(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
