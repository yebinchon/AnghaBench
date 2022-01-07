; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_sched_save_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_perf_event.c_perf_sched_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, i32, i32* }

@SCHED_STATES_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*)* @perf_sched_save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_sched_save_state(%struct.perf_sched* %0) #0 {
  %2 = alloca %struct.perf_sched*, align 8
  store %struct.perf_sched* %0, %struct.perf_sched** %2, align 8
  %3 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %4 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SCHED_STATES_MAX, align 8
  %7 = icmp uge i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON_ONCE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %14 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %17 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %20 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %15, i32* %22, align 4
  %23 = load %struct.perf_sched*, %struct.perf_sched** %2, align 8
  %24 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
