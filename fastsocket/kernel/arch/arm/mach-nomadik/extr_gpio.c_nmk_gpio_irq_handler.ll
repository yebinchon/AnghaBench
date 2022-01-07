; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.nmk_gpio_chip = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.irq_chip = type { i32 (i32)* }

@NMK_GPIO_IS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @nmk_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmk_gpio_irq_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.nmk_gpio_chip*, align 8
  %6 = alloca %struct.irq_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.nmk_gpio_chip* @get_irq_data(i32 %10)
  store %struct.nmk_gpio_chip* %11, %struct.nmk_gpio_chip** %5, align 8
  %12 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NOMADIK_GPIO_TO_IRQ(i32 %15)
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %25, %2
  %18 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %5, align 8
  %19 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NMK_GPIO_IS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @__ffs(i32 %27)
  %29 = add i32 %26, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @generic_handle_irq(i32 %30)
  br label %17

32:                                               ; preds = %17
  ret void
}

declare dso_local %struct.nmk_gpio_chip* @get_irq_data(i32) #1

declare dso_local i32 @NOMADIK_GPIO_TO_IRQ(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
