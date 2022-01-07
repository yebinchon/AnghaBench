; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_gpio.c_bcm63xx_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_gpio.c_bcm63xx_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@GPIO_DATA_LO_REG = common dso_local global i32 0, align 4
@gpio_out_low = common dso_local global i32 0, align 4
@GPIO_DATA_HI_REG = common dso_local global i32 0, align 4
@gpio_out_high = common dso_local global i32 0, align 4
@bcm63xx_gpio_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @bcm63xx_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm63xx_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 (...) @BUG()
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ult i32 %19, 32
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @GPIO_DATA_LO_REG, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %8, align 4
  store i32* @gpio_out_low, i32** %9, align 8
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @GPIO_DATA_HI_REG, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub i32 %27, 32
  %29 = shl i32 1, %28
  store i32 %29, i32* %8, align 4
  store i32* @gpio_out_high, i32** %9, align 8
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* @bcm63xx_gpio_lock, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %46

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, -1
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @bcm_gpio_writel(i32 %48, i32 %49)
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* @bcm63xx_gpio_lock, i64 %51)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcm_gpio_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
