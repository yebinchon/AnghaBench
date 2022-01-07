; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/boards/merisc/extr_setup.c_detect_merisc_board_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/boards/merisc/extr_setup.c_detect_merisc_board_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AT32_GPIOF_PULLUP = common dso_local global i32 0, align 4
@merisc_board_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @detect_merisc_board_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_merisc_board_id() #0 {
  %1 = call i32 @GPIO_PIN_PA(i32 24)
  %2 = load i32, i32* @AT32_GPIOF_PULLUP, align 4
  %3 = call i32 @at32_select_gpio(i32 %1, i32 %2)
  %4 = call i32 @GPIO_PIN_PA(i32 25)
  %5 = load i32, i32* @AT32_GPIOF_PULLUP, align 4
  %6 = call i32 @at32_select_gpio(i32 %4, i32 %5)
  %7 = call i32 @GPIO_PIN_PA(i32 26)
  %8 = load i32, i32* @AT32_GPIOF_PULLUP, align 4
  %9 = call i32 @at32_select_gpio(i32 %7, i32 %8)
  %10 = call i32 @GPIO_PIN_PA(i32 27)
  %11 = load i32, i32* @AT32_GPIOF_PULLUP, align 4
  %12 = call i32 @at32_select_gpio(i32 %10, i32 %11)
  %13 = call i32 @GPIO_PIN_PA(i32 24)
  %14 = call i32 @gpio_get_value(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @GPIO_PIN_PA(i32 25)
  %19 = call i32 @gpio_get_value(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %17, %23
  %25 = call i32 @GPIO_PIN_PA(i32 26)
  %26 = call i32 @gpio_get_value(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = mul nsw i32 %29, 4
  %31 = add nsw i32 %24, %30
  %32 = call i32 @GPIO_PIN_PA(i32 27)
  %33 = call i32 @gpio_get_value(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = mul nsw i32 %36, 8
  %38 = add nsw i32 %31, %37
  store i32 %38, i32* @merisc_board_id, align 4
  ret void
}

declare dso_local i32 @at32_select_gpio(i32, i32) #1

declare dso_local i32 @GPIO_PIN_PA(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
