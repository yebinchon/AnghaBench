; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_timer.c_bcm63xx_timer_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_timer.c_bcm63xx_timer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCM63XX_TIMER_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@timer_reg_lock = common dso_local global i32 0, align 4
@TIMER_CTL_ENABLE_MASK = common dso_local global i32 0, align 4
@TIMER_IRQSTAT_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm63xx_timer_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @BCM63XX_TIMER_COUNT, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @timer_reg_lock, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TIMER_CTLx_REG(i32 %15)
  %17 = call i32 @bcm_timer_readl(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @TIMER_CTL_ENABLE_MASK, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TIMER_CTLx_REG(i32 %22)
  %24 = call i32 @bcm_timer_writel(i32 %21, i32 %23)
  %25 = load i32, i32* @TIMER_IRQSTAT_REG, align 4
  %26 = call i32 @bcm_timer_readl(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @TIMER_IRQSTAT_TIMER_IR_EN(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TIMER_IRQSTAT_REG, align 4
  %33 = call i32 @bcm_timer_writel(i32 %31, i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @timer_reg_lock, i64 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %12, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcm_timer_readl(i32) #1

declare dso_local i32 @TIMER_CTLx_REG(i32) #1

declare dso_local i32 @bcm_timer_writel(i32, i32) #1

declare dso_local i32 @TIMER_IRQSTAT_TIMER_IR_EN(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
