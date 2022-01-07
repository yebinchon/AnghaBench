; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_twl4030_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_twl4030_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_NONE = common dso_local global i32 0, align 4
@REG_RTC_STATUS_REG = common dso_local global i32 0, align 4
@BIT_RTC_STATUS_REG_ALARM_M = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@RTC_UF = common dso_local global i64 0, align 8
@TWL4030_MODULE_INT = common dso_local global i32 0, align 4
@TWL4030_INT_PWR_ISR1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl4030_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i32, i32* @IRQ_NONE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @REG_RTC_STATUS_REG, align 4
  %11 = call i32 @twl4030_rtc_read_u8(i32* %8, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %53

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @BIT_RTC_STATUS_REG_ALARM_M, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i64, i64* @RTC_IRQF, align 8
  %22 = load i64, i64* @RTC_AF, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* %5, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %32

26:                                               ; preds = %15
  %27 = load i64, i64* @RTC_IRQF, align 8
  %28 = load i64, i64* @RTC_UF, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @BIT_RTC_STATUS_REG_ALARM_M, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @REG_RTC_STATUS_REG, align 4
  %37 = call i32 @twl4030_rtc_write_u8(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %53

41:                                               ; preds = %32
  %42 = load i32, i32* @TWL4030_MODULE_INT, align 4
  %43 = load i32, i32* @TWL4030_INT_PWR_ISR1, align 4
  %44 = call i32 @twl4030_i2c_read_u8(i32 %42, i32* %8, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %53

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @rtc_update_irq(i8* %49, i32 1, i64 %50)
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %47, %40, %14
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @twl4030_rtc_read_u8(i32*, i32) #1

declare dso_local i32 @twl4030_rtc_write_u8(i32, i32) #1

declare dso_local i32 @twl4030_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @rtc_update_irq(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
