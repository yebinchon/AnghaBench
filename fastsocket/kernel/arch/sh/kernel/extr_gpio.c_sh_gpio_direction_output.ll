; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pinmux_info = type { i32 }

@gpio_lock = common dso_local global i32 0, align 4
@PINMUX_TYPE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @sh_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinmux_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.pinmux_info* @chip_to_pinmux(%struct.gpio_chip* %10)
  store %struct.pinmux_info* %11, %struct.pinmux_info** %7, align 8
  %12 = load %struct.pinmux_info*, %struct.pinmux_info** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @sh_gpio_set_value(%struct.pinmux_info* %12, i32 %13, i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %16)
  %18 = load %struct.pinmux_info*, %struct.pinmux_info** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PINMUX_TYPE_OUTPUT, align 4
  %21 = call i32 @pinmux_direction(%struct.pinmux_info* %18, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %22)
  %24 = load i32, i32* %9, align 4
  ret i32 %24
}

declare dso_local %struct.pinmux_info* @chip_to_pinmux(%struct.gpio_chip*) #1

declare dso_local i32 @sh_gpio_set_value(%struct.pinmux_info*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pinmux_direction(%struct.pinmux_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
