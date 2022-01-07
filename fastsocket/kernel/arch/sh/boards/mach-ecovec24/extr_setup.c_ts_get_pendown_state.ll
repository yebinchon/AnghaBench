; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-ecovec24/extr_setup.c_ts_get_pendown_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-ecovec24/extr_setup.c_ts_get_pendown_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_FN_INTC_IRQ0 = common dso_local global i32 0, align 4
@GPIO_PTZ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ts_get_pendown_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_get_pendown_state() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @GPIO_FN_INTC_IRQ0, align 4
  %3 = call i32 @gpio_free(i32 %2)
  %4 = load i32, i32* @GPIO_PTZ0, align 4
  %5 = call i32 @gpio_request(i32 %4, i32* null)
  %6 = load i32, i32* @GPIO_PTZ0, align 4
  %7 = call i32 @gpio_direction_input(i32 %6)
  %8 = load i32, i32* @GPIO_PTZ0, align 4
  %9 = call i32 @gpio_get_value(i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @GPIO_PTZ0, align 4
  %11 = call i32 @gpio_free(i32 %10)
  %12 = load i32, i32* @GPIO_FN_INTC_IRQ0, align 4
  %13 = call i32 @gpio_request(i32 %12, i32* null)
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  ret i32 %17
}

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_request(i32, i32*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
