; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_32.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_32.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@timer_interrupt.last_rtc_update = internal global i64 0, align 8
@CPU_PROFILING = common dso_local global i32 0, align 4
@xtime_lock = common dso_local global i32 0, align 4
@xtime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TICK_SIZE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @CPU_PROFILING, align 4
  %6 = call i32 @profile_tick(i32 %5)
  %7 = call i32 @write_seqlock(i32* @xtime_lock)
  %8 = call i32 (...) @clear_clock_irq()
  %9 = call i32 @do_timer(i32 1)
  %10 = call i64 (...) @ntp_synced()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %14 = load i64, i64* @timer_interrupt.last_rtc_update, align 8
  %15 = add nsw i64 %14, 660
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %19 = sdiv i32 %18, 1000
  %20 = load i64, i64* @TICK_SIZE, align 8
  %21 = trunc i64 %20 to i32
  %22 = udiv i32 %21, 2
  %23 = sub i32 500000, %22
  %24 = icmp uge i32 %19, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %17
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %27 = sdiv i32 %26, 1000
  %28 = load i64, i64* @TICK_SIZE, align 8
  %29 = trunc i64 %28 to i32
  %30 = udiv i32 %29, 2
  %31 = add i32 500000, %30
  %32 = icmp ule i32 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %35 = call i64 @set_rtc_mmss(i64 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  store i64 %38, i64* @timer_interrupt.last_rtc_update, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %41 = sub nsw i64 %40, 600
  store i64 %41, i64* @timer_interrupt.last_rtc_update, align 8
  br label %42

42:                                               ; preds = %39, %37
  br label %43

43:                                               ; preds = %42, %25, %17, %12, %2
  %44 = call i32 @write_sequnlock(i32* @xtime_lock)
  %45 = call i32 (...) @get_irq_regs()
  %46 = call i32 @user_mode(i32 %45)
  %47 = call i32 @update_process_times(i32 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local i32 @profile_tick(i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @clear_clock_irq(...) #1

declare dso_local i32 @do_timer(i32) #1

declare dso_local i64 @ntp_synced(...) #1

declare dso_local i64 @set_rtc_mmss(i64) #1

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
