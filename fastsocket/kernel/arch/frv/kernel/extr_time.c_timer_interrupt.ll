; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_time.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_time.c_timer_interrupt.c"
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
  %8 = call i32 @do_timer(i32 1)
  %9 = call i64 (...) @ntp_synced()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %13 = load i64, i64* @timer_interrupt.last_rtc_update, align 8
  %14 = add nsw i64 %13, 660
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %18 = sdiv i32 %17, 1000
  %19 = load i64, i64* @TICK_SIZE, align 8
  %20 = trunc i64 %19 to i32
  %21 = udiv i32 %20, 2
  %22 = sub i32 500000, %21
  %23 = icmp uge i32 %18, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %26 = sdiv i32 %25, 1000
  %27 = load i64, i64* @TICK_SIZE, align 8
  %28 = trunc i64 %27 to i32
  %29 = udiv i32 %28, 2
  %30 = add i32 500000, %29
  %31 = icmp ule i32 %26, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %34 = call i64 @set_rtc_mmss(i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  store i64 %37, i64* @timer_interrupt.last_rtc_update, align 8
  br label %41

38:                                               ; preds = %32
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %40 = sub nsw i64 %39, 600
  store i64 %40, i64* @timer_interrupt.last_rtc_update, align 8
  br label %41

41:                                               ; preds = %38, %36
  br label %42

42:                                               ; preds = %41, %24, %16, %11, %2
  %43 = call i32 @write_sequnlock(i32* @xtime_lock)
  %44 = call i32 (...) @get_irq_regs()
  %45 = call i32 @user_mode(i32 %44)
  %46 = call i32 @update_process_times(i32 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @profile_tick(i32) #1

declare dso_local i32 @write_seqlock(i32*) #1

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
