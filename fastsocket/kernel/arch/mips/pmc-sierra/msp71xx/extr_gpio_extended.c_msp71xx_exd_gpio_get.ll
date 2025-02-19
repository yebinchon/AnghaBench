; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/msp71xx/extr_gpio_extended.c_msp71xx_exd_gpio_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/msp71xx/extr_gpio_extended.c_msp71xx_exd_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.msp71xx_exd_gpio_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @msp71xx_exd_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp71xx_exd_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msp71xx_exd_gpio_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %8 = call %struct.msp71xx_exd_gpio_chip* @to_msp71xx_exd_gpio_chip(%struct.gpio_chip* %7)
  store %struct.msp71xx_exd_gpio_chip* %8, %struct.msp71xx_exd_gpio_chip** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MSP71XX_READ_OFFSET(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.msp71xx_exd_gpio_chip*, %struct.msp71xx_exd_gpio_chip** %5, align 8
  %12 = getelementptr inbounds %struct.msp71xx_exd_gpio_chip, %struct.msp71xx_exd_gpio_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @__raw_readl(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  ret i32 %17
}

declare dso_local %struct.msp71xx_exd_gpio_chip* @to_msp71xx_exd_gpio_chip(%struct.gpio_chip*) #1

declare dso_local i32 @MSP71XX_READ_OFFSET(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
