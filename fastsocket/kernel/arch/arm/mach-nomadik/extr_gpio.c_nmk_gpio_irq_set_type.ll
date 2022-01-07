; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@NMK_GPIO_RIMSC = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@NMK_GPIO_FIMSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nmk_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_gpio_irq_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nmk_gpio_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @NOMADIK_IRQ_TO_GPIO(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.nmk_gpio_chip* @get_irq_chip_data(i32 %12)
  store %struct.nmk_gpio_chip* %13, %struct.nmk_gpio_chip** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @nmk_gpio_get_bitmask(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %17 = icmp ne %struct.nmk_gpio_chip* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %100

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %100

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %100

37:                                               ; preds = %29
  %38 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %39 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %38, i32 0, i32 0
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %45 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %37
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %55 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %37
  %59 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %60 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %63 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NMK_GPIO_RIMSC, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* %9, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %71 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %58
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %81 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %58
  %85 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %86 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %89 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NMK_GPIO_FIMSC, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  %94 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %7, align 8
  %95 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %94, i32 0, i32 0
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @nmk_gpio_irq_unmask(i32 %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %84, %34, %26, %18
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @NOMADIK_IRQ_TO_GPIO(i32) #1

declare dso_local %struct.nmk_gpio_chip* @get_irq_chip_data(i32) #1

declare dso_local i32 @nmk_gpio_get_bitmask(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nmk_gpio_irq_unmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
