; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_gpio.c_s6_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_gpio.c_s6_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S6_REG_GPIO = common dso_local global i64 0, align 8
@S6_GPIO_AFSEL = common dso_local global i64 0, align 8
@gpiochip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s6_gpio_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i64, i64* @S6_REG_GPIO, align 8
  %5 = call i64 @S6_GPIO_BANK(i32 0)
  %6 = add nsw i64 %4, %5
  %7 = load i64, i64* @S6_GPIO_AFSEL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writeb(i32 %3, i64 %8)
  %10 = load i32, i32* %2, align 4
  %11 = ashr i32 %10, 8
  %12 = load i64, i64* @S6_REG_GPIO, align 8
  %13 = call i64 @S6_GPIO_BANK(i32 1)
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @S6_GPIO_AFSEL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writeb(i32 %11, i64 %16)
  %18 = load i32, i32* %2, align 4
  %19 = ashr i32 %18, 16
  %20 = load i64, i64* @S6_REG_GPIO, align 8
  %21 = call i64 @S6_GPIO_BANK(i32 2)
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @S6_GPIO_AFSEL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb(i32 %19, i64 %24)
  %26 = call i32 @gpiochip_add(i32* @gpiochip)
  ret i32 %26
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @S6_GPIO_BANK(i32) #1

declare dso_local i32 @gpiochip_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
