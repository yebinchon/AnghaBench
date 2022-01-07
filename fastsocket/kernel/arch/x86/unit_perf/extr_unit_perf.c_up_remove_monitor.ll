; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_up_remove_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/unit_perf/extr_unit_perf.c_up_remove_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_perf_monitor = type { i32 }

@g_up_monitor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @up_remove_monitor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.unit_perf_monitor*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load i32, i32* @g_up_monitor, align 4
  %6 = call %struct.unit_perf_monitor* @rcu_dereference(i32 %5)
  store %struct.unit_perf_monitor* %6, %struct.unit_perf_monitor** %3, align 8
  %7 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %3, align 8
  %8 = icmp ne %struct.unit_perf_monitor* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.unit_perf_monitor*, %struct.unit_perf_monitor** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @remove_monitor(%struct.unit_perf_monitor* %10, i8* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.unit_perf_monitor* @rcu_dereference(i32) #1

declare dso_local i32 @remove_monitor(%struct.unit_perf_monitor*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
