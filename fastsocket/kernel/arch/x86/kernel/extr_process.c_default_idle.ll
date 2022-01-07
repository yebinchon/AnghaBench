; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_default_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_process.c_default_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@POWER_CSTATE = common dso_local global i32 0, align 4
@TS_POLLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_idle() #0 {
  %1 = call i64 (...) @hlt_use_halt()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %26

3:                                                ; preds = %0
  %4 = load i32, i32* @POWER_CSTATE, align 4
  %5 = call i32 (...) @smp_processor_id()
  %6 = call i32 @trace_power_start(i32 %4, i32 1, i32 %5)
  %7 = load i32, i32* @TS_POLLING, align 4
  %8 = xor i32 %7, -1
  %9 = call %struct.TYPE_2__* (...) @current_thread_info()
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = call i32 (...) @smp_mb()
  %14 = call i32 (...) @need_resched()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (...) @safe_halt()
  br label %20

18:                                               ; preds = %3
  %19 = call i32 (...) @local_irq_enable()
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* @TS_POLLING, align 4
  %22 = call %struct.TYPE_2__* (...) @current_thread_info()
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %29

26:                                               ; preds = %0
  %27 = call i32 (...) @local_irq_enable()
  %28 = call i32 (...) @cpu_relax()
  br label %29

29:                                               ; preds = %26, %20
  ret void
}

declare dso_local i64 @hlt_use_halt(...) #1

declare dso_local i32 @trace_power_start(i32, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @safe_halt(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
