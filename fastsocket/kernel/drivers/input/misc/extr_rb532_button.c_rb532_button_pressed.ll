; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_rb532_button.c_rb532_button_pressed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_rb532_button.c_rb532_button_pressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LO_FOFF = common dso_local global i32 0, align 4
@GPIO_BTN_S1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rb532_button_pressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb532_button_pressed() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LO_FOFF, align 4
  %3 = call i32 @set_latch_u5(i32 0, i32 %2)
  %4 = load i32, i32* @GPIO_BTN_S1, align 4
  %5 = call i32 @gpio_direction_input(i32 %4)
  %6 = load i32, i32* @GPIO_BTN_S1, align 4
  %7 = call i32 @gpio_get_value(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @GPIO_BTN_S1, align 4
  %9 = call i32 @rb532_gpio_set_func(i32 %8)
  %10 = load i32, i32* @LO_FOFF, align 4
  %11 = call i32 @set_latch_u5(i32 %10, i32 0)
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i32 @set_latch_u5(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @rb532_gpio_set_func(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
