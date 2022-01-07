; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_set_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_gpio.c_gpio_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@virtbase = common dso_local global i64 0, align 8
@U300_GPIO_PXPDOR = common dso_local global i64 0, align 8
@U300_GPIO_PORTX_SPACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpio_set_value(i32 %0, i32 %1) #0 {
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
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load i64, i64* @virtbase, align 8
  %13 = load i64, i64* @U300_GPIO_PXPDOR, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @PIN_TO_PORT(i32 %15)
  %17 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %14, %19
  %21 = call i32 @readl(i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 7
  %24 = shl i32 1, %23
  %25 = and i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 7
  %29 = shl i32 1, %28
  %30 = or i32 %26, %29
  %31 = load i64, i64* @virtbase, align 8
  %32 = load i64, i64* @U300_GPIO_PXPDOR, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @PIN_TO_PORT(i32 %34)
  %36 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %33, %38
  %40 = call i32 @writel(i32 %30, i64 %39)
  br label %72

41:                                               ; preds = %2
  %42 = load i64, i64* @virtbase, align 8
  %43 = load i64, i64* @U300_GPIO_PXPDOR, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @PIN_TO_PORT(i32 %45)
  %47 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  %51 = call i32 @readl(i64 %50)
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 7
  %54 = shl i32 1, %53
  %55 = and i32 %51, %54
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 7
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = load i64, i64* @virtbase, align 8
  %63 = load i64, i64* @U300_GPIO_PXPDOR, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @PIN_TO_PORT(i32 %65)
  %67 = load i32, i32* @U300_GPIO_PORTX_SPACING, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %64, %69
  %71 = call i32 @writel(i32 %61, i64 %70)
  br label %72

72:                                               ; preds = %41, %11
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @local_irq_restore(i64 %73)
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
