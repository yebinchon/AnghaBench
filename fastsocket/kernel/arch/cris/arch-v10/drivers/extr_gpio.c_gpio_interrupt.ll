; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/drivers/extr_gpio.c_gpio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpio_lock = common dso_local global i32 0, align 4
@R_IRQ_READ1 = common dso_local global i64* null, align 8
@gpio_pa_irq_enabled_mask = common dso_local global i64 0, align 8
@R_IRQ_MASK1_CLR = common dso_local global i64* null, align 8
@gpio_some_alarms = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %8)
  %10 = load i64*, i64** @R_IRQ_READ1, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* @gpio_pa_irq_enabled_mask, align 8
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64*, i64** @R_IRQ_MASK1_CLR, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* @gpio_pa_irq_enabled_mask, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* @gpio_pa_irq_enabled_mask, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %21)
  %23 = load i64, i64* @gpio_some_alarms, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = call i32 (...) @etrax_gpio_wake_up_check()
  %27 = call i32 @IRQ_RETVAL(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

declare dso_local i32 @etrax_gpio_wake_up_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
