; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NMK_GPIO_AFSLA = common dso_local global i64 0, align 8
@NMK_GPIO_AFSLB = common dso_local global i64 0, align 8
@NMK_GPIO_ALT_A = common dso_local global i32 0, align 4
@NMK_GPIO_ALT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nmk_gpio_set_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nmk_gpio_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @NOMADIK_GPIO_TO_IRQ(i32 %11)
  %13 = call %struct.nmk_gpio_chip* @get_irq_chip_data(i32 %12)
  store %struct.nmk_gpio_chip* %13, %struct.nmk_gpio_chip** %6, align 8
  %14 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %15 = icmp ne %struct.nmk_gpio_chip* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %85

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %22 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %20, %24
  %26 = shl i32 1, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %28 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %32 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NMK_GPIO_AFSLA, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = load i32, i32* %10, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %41 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NMK_GPIO_AFSLB, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  %46 = load i32, i32* %10, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NMK_GPIO_ALT_A, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %19
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %19
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @NMK_GPIO_ALT_B, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %69 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NMK_GPIO_AFSLA, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %76 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NMK_GPIO_AFSLB, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %82 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %81, i32 0, i32 0
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %66, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.nmk_gpio_chip* @get_irq_chip_data(i32) #1

declare dso_local i32 @NOMADIK_GPIO_TO_IRQ(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
