; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_time.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_time.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@CPU_PROFILING = common dso_local global i32 0, align 4
@xtime_lock = common dso_local global i32 0, align 4
@xtime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@last_rtc_update = common dso_local global i64 0, align 8
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
  %7 = call i32 @do_timer(i32 1)
  %8 = call i32 (...) @get_irq_regs()
  %9 = call i32 @user_mode(i32 %8)
  %10 = call i32 @update_process_times(i32 %9)
  %11 = call i32 @write_seqlock(i32* @xtime_lock)
  %12 = call i64 (...) @ntp_synced()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %16 = load i64, i64* @last_rtc_update, align 8
  %17 = add nsw i64 %16, 660
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %21 = sdiv i32 %20, 1000
  %22 = load i64, i64* @TICK_SIZE, align 8
  %23 = trunc i64 %22 to i32
  %24 = udiv i32 %23, 2
  %25 = sub i32 500000, %24
  %26 = icmp uge i32 %21, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %29 = sdiv i32 %28, 1000
  %30 = load i64, i64* @TICK_SIZE, align 8
  %31 = trunc i64 %30 to i32
  %32 = udiv i32 %31, 2
  %33 = add i32 500000, %32
  %34 = icmp ule i32 %29, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %37 = call i64 @set_rtc_mmss(i64 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  store i64 %40, i64* @last_rtc_update, align 8
  br label %44

41:                                               ; preds = %35
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %43 = sub nsw i64 %42, 600
  store i64 %43, i64* @last_rtc_update, align 8
  br label %44

44:                                               ; preds = %41, %39
  br label %45

45:                                               ; preds = %44, %27, %19, %14, %2
  %46 = call i32 @write_sequnlock(i32* @xtime_lock)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @profile_tick(i32) #1

declare dso_local i32 @do_timer(i32) #1

declare dso_local i32 @update_process_times(i32) #1

declare dso_local i32 @user_mode(i32) #1

declare dso_local i32 @get_irq_regs(...) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i64 @ntp_synced(...) #1

declare dso_local i64 @set_rtc_mmss(i64) #1

declare dso_local i32 @write_sequnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
