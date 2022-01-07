; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/msp71xx/extr_gpio.c_msp71xx_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/msp71xx/extr_gpio.c_msp71xx_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.msp71xx_gpio_chip = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @msp71xx_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp71xx_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.msp71xx_gpio_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.msp71xx_gpio_chip* @to_msp71xx_gpio_chip(%struct.gpio_chip* %10)
  store %struct.msp71xx_gpio_chip* %11, %struct.msp71xx_gpio_chip** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %12)
  %14 = load %struct.msp71xx_gpio_chip*, %struct.msp71xx_gpio_chip** %7, align 8
  %15 = getelementptr inbounds %struct.msp71xx_gpio_chip, %struct.msp71xx_gpio_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__raw_readl(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.msp71xx_gpio_chip*, %struct.msp71xx_gpio_chip** %7, align 8
  %34 = getelementptr inbounds %struct.msp71xx_gpio_chip, %struct.msp71xx_gpio_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__raw_writel(i32 %32, i32 %35)
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %37)
  ret void
}

declare dso_local %struct.msp71xx_gpio_chip* @to_msp71xx_gpio_chip(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
