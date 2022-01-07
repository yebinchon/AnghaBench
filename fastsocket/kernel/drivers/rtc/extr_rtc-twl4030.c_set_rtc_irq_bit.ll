; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_set_rtc_irq_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-twl4030.c_set_rtc_irq_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rtc_irq_bits = common dso_local global i8 0, align 1
@BIT_RTC_INTERRUPTS_REG_EVERY_M = common dso_local global i8 0, align 1
@REG_RTC_INTERRUPTS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @set_rtc_irq_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rtc_irq_bit(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %5 = load i8, i8* @rtc_irq_bits, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = or i32 %6, %8
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %3, align 1
  %11 = load i8, i8* @BIT_RTC_INTERRUPTS_REG_EVERY_M, align 1
  %12 = zext i8 %11 to i32
  %13 = xor i32 %12, -1
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* %3, align 1
  %19 = load i32, i32* @REG_RTC_INTERRUPTS_REG, align 4
  %20 = call i32 @twl4030_rtc_write_u8(i8 zeroext %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i8, i8* %3, align 1
  store i8 %24, i8* @rtc_irq_bits, align 1
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @twl4030_rtc_write_u8(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
