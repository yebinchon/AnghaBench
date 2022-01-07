; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_rtc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-omap.c_rtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OMAP_RTC_STATUS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_ALARM = common dso_local global i32 0, align 4
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_AF = common dso_local global i64 0, align 8
@OMAP_RTC_STATUS_1S_EVENT = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %8 = call i32 @rtc_read(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @OMAP_RTC_STATUS_ALARM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @OMAP_RTC_STATUS_ALARM, align 4
  %15 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %16 = call i32 @rtc_write(i32 %14, i32 %15)
  %17 = load i64, i64* @RTC_IRQF, align 8
  %18 = load i64, i64* @RTC_AF, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* %5, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @OMAP_RTC_STATUS_1S_EVENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i64, i64* @RTC_IRQF, align 8
  %29 = load i64, i64* @RTC_UF, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* %5, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @rtc_update_irq(i8* %34, i32 1, i64 %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @rtc_read(i32) #1

declare dso_local i32 @rtc_write(i32, i32) #1

declare dso_local i32 @rtc_update_irq(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
