; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_gpio.c_ep93xx_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_gpio.c_ep93xx_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ep93xx_gpio_chip = type { i32, i32 }

@EP93XX_GPIO_LINE_MAX_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @ep93xx_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ep93xx_gpio_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.ep93xx_gpio_chip* @to_ep93xx_gpio_chip(%struct.gpio_chip* %11)
  store %struct.ep93xx_gpio_chip* %12, %struct.ep93xx_gpio_chip** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.ep93xx_gpio_chip*, %struct.ep93xx_gpio_chip** %7, align 8
  %16 = getelementptr inbounds %struct.ep93xx_gpio_chip, %struct.ep93xx_gpio_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__raw_readb(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ep93xx_gpio_chip*, %struct.ep93xx_gpio_chip** %7, align 8
  %35 = getelementptr inbounds %struct.ep93xx_gpio_chip, %struct.ep93xx_gpio_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__raw_writeb(i32 %33, i32 %36)
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @EP93XX_GPIO_LINE_MAX_IRQ, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ep93xx_gpio_int_mask(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 3
  %51 = call i32 @ep93xx_gpio_update_int_params(i32 %50)
  br label %52

52:                                               ; preds = %46, %32
  %53 = load %struct.ep93xx_gpio_chip*, %struct.ep93xx_gpio_chip** %7, align 8
  %54 = getelementptr inbounds %struct.ep93xx_gpio_chip, %struct.ep93xx_gpio_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__raw_readb(i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ep93xx_gpio_chip*, %struct.ep93xx_gpio_chip** %7, align 8
  %63 = getelementptr inbounds %struct.ep93xx_gpio_chip, %struct.ep93xx_gpio_chip* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__raw_writeb(i32 %61, i32 %64)
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @local_irq_restore(i64 %66)
  ret i32 0
}

declare dso_local %struct.ep93xx_gpio_chip* @to_ep93xx_gpio_chip(%struct.gpio_chip*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_readb(i32) #1

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @ep93xx_gpio_int_mask(i32) #1

declare dso_local i32 @ep93xx_gpio_update_int_params(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
