; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_pullup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtbase = common dso_local global i64 0, align 8
@U300_GPIO_PXPER = common dso_local global i64 0, align 8
@U300_GPIO_PORTX_SPACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpio_pullup(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load i64, i64* @virtbase, align 8
  %13 = load i64, i64* @U300_GPIO_PXPER, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @PIN_TO_PORT(i32 %15)
  %17 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %14, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 7
  %25 = shl i32 1, %24
  %26 = or i32 %22, %25
  %27 = load i64, i64* @virtbase, align 8
  %28 = load i64, i64* @U300_GPIO_PXPER, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @PIN_TO_PORT(i32 %30)
  %32 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %29, %34
  %36 = call i32 @writel(i32 %26, i64 %35)
  br label %64

37:                                               ; preds = %2
  %38 = load i64, i64* @virtbase, align 8
  %39 = load i64, i64* @U300_GPIO_PXPER, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @PIN_TO_PORT(i32 %41)
  %43 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 7
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = load i64, i64* @virtbase, align 8
  %55 = load i64, i64* @U300_GPIO_PXPER, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @PIN_TO_PORT(i32 %57)
  %59 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %56, %61
  %63 = call i32 @writel(i32 %53, i64 %62)
  br label %64

64:                                               ; preds = %37, %11
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @local_irq_restore(i64 %65)
  ret void
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
