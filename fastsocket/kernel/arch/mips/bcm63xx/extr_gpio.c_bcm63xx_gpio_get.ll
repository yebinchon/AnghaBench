; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_gpio.c_bcm63xx_gpio_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/bcm63xx/extr_gpio.c_bcm63xx_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@GPIO_DATA_LO_REG = common dso_local global i32 0, align 4
@GPIO_DATA_HI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @bcm63xx_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp uge i32 %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @BUG()
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ult i32 %15, 32
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* @GPIO_DATA_LO_REG, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @GPIO_DATA_HI_REG, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 32
  %25 = shl i32 1, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @bcm_gpio_readl(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @bcm_gpio_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
