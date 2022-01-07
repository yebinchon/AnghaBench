; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NMK_GPIO_AFSLA = common dso_local global i64 0, align 8
@NMK_GPIO_AFSLB = common dso_local global i64 0, align 8
@NMK_GPIO_ALT_A = common dso_local global i32 0, align 4
@NMK_GPIO_ALT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nmk_gpio_get_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmk_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @NOMADIK_GPIO_TO_IRQ(i32 %8)
  %10 = call %struct.nmk_gpio_chip* @get_irq_chip_data(i32 %9)
  store %struct.nmk_gpio_chip* %10, %struct.nmk_gpio_chip** %4, align 8
  %11 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %12 = icmp ne %struct.nmk_gpio_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %19 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %17, %21
  %23 = shl i32 1, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %25 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NMK_GPIO_AFSLA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %33 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NMK_GPIO_AFSLB, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %16
  %43 = load i32, i32* @NMK_GPIO_ALT_A, align 4
  br label %45

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @NMK_GPIO_ALT_B, align 4
  br label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = or i32 %46, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.nmk_gpio_chip* @get_irq_chip_data(i32) #1

declare dso_local i32 @NOMADIK_GPIO_TO_IRQ(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
