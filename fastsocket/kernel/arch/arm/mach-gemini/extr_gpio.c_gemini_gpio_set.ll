; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_gpio.c_gemini_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-gemini/extr_gpio.c_gemini_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@GPIO_DATA_SET = common dso_local global i64 0, align 8
@GPIO_DATA_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @gemini_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemini_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = udiv i32 %8, 32
  %10 = call i32 @GPIO_BASE(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = urem i32 %14, 32
  %16 = shl i32 1, %15
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @GPIO_DATA_SET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @__raw_writel(i32 %16, i64 %20)
  br label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = urem i32 %23, 32
  %25 = shl i32 1, %24
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @GPIO_DATA_CLR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @__raw_writel(i32 %25, i64 %29)
  br label %31

31:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @GPIO_BASE(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
