; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_up_end_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_up_end_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_perf_monitor = type { i32 }
%struct.cpu_cost_stats = type { i64, i64, i32, i32 }

@g_up_monitor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @up_end_monitor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.unit_perf_monitor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cpu_cost_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @UP_GET_CPU_CYCLES(i64 %8)
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* @g_up_monitor, align 4
  %12 = call %struct.unit_perf_monitor* @rcu_dereference(i32 %11)
  store %struct.unit_perf_monitor* %12, %struct.unit_perf_monitor** %3, align 8
  %13 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %3, align 8
  %14 = icmp ne %struct.unit_perf_monitor* %13, null
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %3, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call %struct.cpu_cost_stats* @get_monitorer_stats(%struct.unit_perf_monitor* %16, i8* %17)
  store %struct.cpu_cost_stats* %18, %struct.cpu_cost_stats** %5, align 8
  %19 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %20 = icmp ne %struct.cpu_cost_stats* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %23 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %32 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %37 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %41 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %43 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %47 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %26
  %52 = load %struct.cpu_cost_stats*, %struct.cpu_cost_stats** %5, align 8
  %53 = getelementptr inbounds %struct.cpu_cost_stats, %struct.cpu_cost_stats* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %26
  br label %57

57:                                               ; preds = %56, %21, %15
  br label %58

58:                                               ; preds = %57, %1
  %59 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @UP_GET_CPU_CYCLES(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.unit_perf_monitor* @rcu_dereference(i32) #1

declare dso_local %struct.cpu_cost_stats* @get_monitorer_stats(%struct.unit_perf_monitor*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
