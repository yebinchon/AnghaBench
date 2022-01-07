; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U300_GPIO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@virtbase = common dso_local global i64 0, align 8
@U300_GPIO_PXPCR = common dso_local global i64 0, align 8
@U300_GPIO_PORTX_SPACING = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_direction_input(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @U300_GPIO_MAX, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load i64, i64* @virtbase, align 8
  %16 = load i64, i64* @U300_GPIO_PXPCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @PIN_TO_PORT(i32 %18)
  %20 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %17, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_MASK, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 7
  %28 = shl i32 %27, 1
  %29 = shl i32 %25, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* @virtbase, align 8
  %35 = load i64, i64* @U300_GPIO_PXPCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @PIN_TO_PORT(i32 %37)
  %39 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %36, %41
  %43 = call i32 @writel(i32 %33, i64 %42)
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %12, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @PIN_TO_PORT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
