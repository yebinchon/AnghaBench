; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_enable_irq_on_gpio_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_enable_irq_on_gpio_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtbase = common dso_local global i64 0, align 8
@U300_GPIO_PXIEN = common dso_local global i64 0, align 8
@U300_GPIO_PORTX_SPACING = common dso_local global i32 0, align 4
@U300_GPIO_PXICR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_irq_on_gpio_pin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i64, i64* @virtbase, align 8
  %10 = load i64, i64* @U300_GPIO_PXIEN, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @PIN_TO_PORT(i32 %12)
  %14 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %11, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 7
  %21 = shl i32 1, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* @virtbase, align 8
  %26 = load i64, i64* @U300_GPIO_PXIEN, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @PIN_TO_PORT(i32 %28)
  %30 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %27, %32
  %34 = call i32 @writel(i32 %24, i64 %33)
  %35 = load i64, i64* @virtbase, align 8
  %36 = load i64, i64* @U300_GPIO_PXICR, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @PIN_TO_PORT(i32 %38)
  %40 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %37, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 7
  %50 = shl i32 1, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %60

53:                                               ; preds = %2
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 7
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* @virtbase, align 8
  %63 = load i64, i64* @U300_GPIO_PXICR, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @PIN_TO_PORT(i32 %65)
  %67 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %64, %69
  %71 = call i32 @writel(i32 %61, i64 %70)
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @local_irq_restore(i64 %72)
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
