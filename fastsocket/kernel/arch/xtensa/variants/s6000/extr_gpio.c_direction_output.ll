; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_gpio.c_direction_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/variants/s6000/extr_gpio.c_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@S6_REG_GPIO = common dso_local global i64 0, align 8
@S6_GPIO_DIR = common dso_local global i64 0, align 8
@S6_GPIO_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @S6_GPIO_OFFSET(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* @S6_REG_GPIO, align 8
  %11 = load i64, i64* @S6_GPIO_DIR, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = call i32 @writeb(i32 -1, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 -1, i32 0
  %21 = load i64, i64* @S6_REG_GPIO, align 8
  %22 = load i64, i64* @S6_GPIO_DATA, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @writeb(i32 %20, i64 %26)
  ret i32 0
}

declare dso_local i32 @S6_GPIO_OFFSET(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
