; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U300_GPIO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@virtbase = common dso_local global i64 0, align 8
@U300_GPIO_PXPCR = common dso_local global i64 0, align 8
@U300_GPIO_PORTX_SPACING = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_MASK = common dso_local global i32 0, align 4
@U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_direction_output(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @U300_GPIO_MAX, align 4
  %10 = icmp ugt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load i64, i64* @virtbase, align 8
  %18 = load i64, i64* @U300_GPIO_PXPCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @PIN_TO_PORT(i32 %20)
  %22 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %19, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_MASK, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 7
  %30 = shl i32 %29, 1
  %31 = shl i32 %27, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 7
  %38 = shl i32 %37, 1
  %39 = shl i32 %35, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* @virtbase, align 8
  %44 = load i64, i64* @U300_GPIO_PXPCR, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @PIN_TO_PORT(i32 %46)
  %48 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %45, %50
  %52 = call i32 @writel(i32 %42, i64 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @gpio_set_value(i32 %53, i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %14, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @PIN_TO_PORT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
