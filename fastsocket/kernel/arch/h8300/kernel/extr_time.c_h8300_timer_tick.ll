; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/kernel/extr_time.c_h8300_timer_tick.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/kernel/extr_time.c_h8300_timer_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@CPU_PROFILING = common dso_local global i32 0, align 4
@xtime_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h8300_timer_tick() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @CPU_PROFILING, align 4
  %7 = call i32 @profile_tick(i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 @write_seqlock(i32* @xtime_lock)
  %10 = call i32 @do_timer(i32 1)
  %11 = call i32 @write_sequnlock(i32* @xtime_lock)
  %12 = call i32 (...) @get_irq_regs()
  %13 = call i32 @user_mode(i32 %12)
  %14 = call i32 @update_process_times(i32 %13)
  ret void
}

declare dso_local i32 @profile_tick(i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @do_timer(i32) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @update_process_times(i32) #1

declare dso_local i32 @user_mode(i32) #1

declare dso_local i32 @get_irq_regs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
