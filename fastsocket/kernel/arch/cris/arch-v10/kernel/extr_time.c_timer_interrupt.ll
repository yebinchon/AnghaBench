; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_time.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_time.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.pt_regs = type { i32 }

@r_timer_ctrl_shadow = common dso_local global i32 0, align 4
@R_TIMER_CTRL = common dso_local global i32* null, align 8
@i0 = common dso_local global i32 0, align 4
@clr = common dso_local global i32 0, align 4
@xtime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@last_rtc_update = common dso_local global i64 0, align 8
@tick_nsec = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@c6250kHz = common dso_local global i32 0, align 4
@cascade0 = common dso_local global i32 0, align 4
@clksel0 = common dso_local global i32 0, align 4
@clksel1 = common dso_local global i32 0, align 4
@i1 = common dso_local global i32 0, align 4
@run = common dso_local global i32 0, align 4
@timerdiv0 = common dso_local global i32 0, align 4
@timerdiv1 = common dso_local global i32 0, align 4
@tm0 = common dso_local global i32 0, align 4
@tm1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %6, %struct.pt_regs** %5, align 8
  %7 = load i32, i32* @r_timer_ctrl_shadow, align 4
  %8 = load i32*, i32** @R_TIMER_CTRL, align 8
  %9 = load i32, i32* @i0, align 4
  %10 = load i32, i32* @clr, align 4
  %11 = call i32 @IO_STATE(i32* %8, i32 %9, i32 %10)
  %12 = or i32 %7, %11
  %13 = load i32*, i32** @R_TIMER_CTRL, align 8
  store i32 %12, i32* %13, align 4
  %14 = call i32 (...) @reset_watchdog()
  %15 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %16 = call i32 @user_mode(%struct.pt_regs* %15)
  %17 = call i32 @update_process_times(i32 %16)
  %18 = call i32 @do_timer(i32 1)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %20 = call i32 @cris_do_profile(%struct.pt_regs* %19)
  %21 = call i64 (...) @ntp_synced()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %2
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %25 = load i64, i64* @last_rtc_update, align 8
  %26 = add nsw i64 %25, 660
  %27 = icmp sgt i64 %24, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %30 = sdiv i32 %29, 1000
  %31 = load i32, i32* @tick_nsec, align 4
  %32 = sdiv i32 %31, 1000
  %33 = sdiv i32 %32, 2
  %34 = sub nsw i32 500000, %33
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %28
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  %38 = sdiv i32 %37, 1000
  %39 = load i32, i32* @tick_nsec, align 4
  %40 = sdiv i32 %39, 1000
  %41 = sdiv i32 %40, 2
  %42 = add nsw i32 500000, %41
  %43 = icmp sle i32 %38, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %46 = call i64 @set_rtc_mmss(i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  store i64 %49, i64* @last_rtc_update, align 8
  br label %53

50:                                               ; preds = %44
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %52 = sub nsw i64 %51, 600
  store i64 %52, i64* @last_rtc_update, align 8
  br label %53

53:                                               ; preds = %50, %48
  br label %54

54:                                               ; preds = %53, %36, %28, %23, %2
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @IO_STATE(i32*, i32, i32) #1

declare dso_local i32 @reset_watchdog(...) #1

declare dso_local i32 @update_process_times(i32) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @do_timer(i32) #1

declare dso_local i32 @cris_do_profile(%struct.pt_regs*) #1

declare dso_local i64 @ntp_synced(...) #1

declare dso_local i64 @set_rtc_mmss(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
