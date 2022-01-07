; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-cmos.c_cmos_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtc_lock = common dso_local global i32 0, align 4
@RTC_INTR_FLAGS = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_IRQMASK = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i32 0, align 4
@RTC_AIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cmos_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmos_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = call i32 @spin_lock(i32* @rtc_lock)
  %9 = load i32, i32* @RTC_INTR_FLAGS, align 4
  %10 = call i32 @CMOS_READ(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @RTC_CONTROL, align 4
  %12 = call i32 @CMOS_READ(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = call i64 (...) @is_hpet_enabled()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 240
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RTC_IRQMASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @RTC_IRQF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RTC_AIE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %20
  %33 = load i32, i32* @RTC_AIE, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @RTC_CONTROL, align 4
  %39 = call i32 @CMOS_WRITE(i32 %37, i32 %38)
  %40 = load i32, i32* @RTC_AIE, align 4
  %41 = call i32 @hpet_mask_rtc_irq_bit(i32 %40)
  %42 = load i32, i32* @RTC_INTR_FLAGS, align 4
  %43 = call i32 @CMOS_READ(i32 %42)
  br label %44

44:                                               ; preds = %32, %20
  %45 = call i32 @spin_unlock(i32* @rtc_lock)
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @is_intr(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @rtc_update_irq(i8* %50, i32 1, i32 %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @IRQ_NONE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @CMOS_READ(i32) #1

declare dso_local i64 @is_hpet_enabled(...) #1

declare dso_local i32 @CMOS_WRITE(i32, i32) #1

declare dso_local i32 @hpet_mask_rtc_irq_bit(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @is_intr(i32) #1

declare dso_local i32 @rtc_update_irq(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
