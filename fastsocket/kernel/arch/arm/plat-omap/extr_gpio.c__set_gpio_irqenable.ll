; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c__set_gpio_irqenable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c__set_gpio_irqenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_bank*, i32, i32)* @_set_gpio_irqenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_set_gpio_irqenable(%struct.gpio_bank* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gpio_bank* %0, %struct.gpio_bank** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @get_gpio_index(i32 %8)
  %10 = shl i32 1, %9
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @_enable_gpio_irqbank(%struct.gpio_bank* %7, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @_enable_gpio_irqbank(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @get_gpio_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
