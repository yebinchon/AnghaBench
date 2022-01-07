; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_irq_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i32, i32, i32, i64 }

@NMK_GPIO_RWIMSC = common dso_local global i64 0, align 8
@NMK_GPIO_FWIMSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nmk_gpio_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmk_gpio_irq_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmk_gpio_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @NOMADIK_IRQ_TO_GPIO(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.nmk_gpio_chip* @get_irq_chip_data(i32 %10)
  store %struct.nmk_gpio_chip* %11, %struct.nmk_gpio_chip** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @nmk_gpio_get_bitmask(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %15 = icmp ne %struct.nmk_gpio_chip* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %76

17:                                               ; preds = %1
  %18 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %19 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %18, i32 0, i32 2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %23 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %17
  %29 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %30 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NMK_GPIO_RWIMSC, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %41 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NMK_GPIO_RWIMSC, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  br label %46

46:                                               ; preds = %28, %17
  %47 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %48 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %55 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NMK_GPIO_FWIMSC, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %66 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NMK_GPIO_FWIMSC, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  br label %71

71:                                               ; preds = %53, %46
  %72 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %73 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %72, i32 0, i32 2
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %71, %16
  ret void
}

declare dso_local i32 @NOMADIK_IRQ_TO_GPIO(i32) #1

declare dso_local %struct.nmk_gpio_chip* @get_irq_chip_data(i32) #1

declare dso_local i32 @nmk_gpio_get_bitmask(i32) #1

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
