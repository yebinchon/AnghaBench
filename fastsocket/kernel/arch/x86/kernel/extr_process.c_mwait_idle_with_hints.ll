; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_mwait_idle_with_hints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_mwait_idle_with_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@POWER_CSTATE = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global i32 0, align 4
@X86_FEATURE_CLFLUSH_MONITOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwait_idle_with_hints(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @POWER_CSTATE, align 4
  %6 = load i64, i64* %3, align 8
  %7 = lshr i64 %6, 4
  %8 = add i64 %7, 1
  %9 = call i32 (...) @smp_processor_id()
  %10 = call i32 @trace_power_start(i32 %5, i64 %8, i32 %9)
  %11 = call i32 (...) @need_resched()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @X86_FEATURE_CLFLUSH_MONITOR, align 4
  %15 = call i64 @cpu_has(i32* @current_cpu_data, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call %struct.TYPE_2__* (...) @current_thread_info()
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to i8*
  %21 = call i32 @clflush(i8* %20)
  br label %22

22:                                               ; preds = %17, %13
  %23 = call %struct.TYPE_2__* (...) @current_thread_info()
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i8*
  %26 = call i32 @__monitor(i8* %25, i32 0, i32 0)
  %27 = call i32 (...) @smp_mb()
  %28 = call i32 (...) @need_resched()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @__mwait(i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %22
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @trace_power_start(i32, i64, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i64 @cpu_has(i32*, i32) #1

declare dso_local i32 @clflush(i8*) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @__monitor(i8*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @__mwait(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
