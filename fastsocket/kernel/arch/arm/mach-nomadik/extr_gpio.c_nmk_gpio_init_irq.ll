; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_init_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-nomadik/extr_gpio.c_nmk_gpio_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NMK_GPIO_PER_CHIP = common dso_local global i32 0, align 4
@nmk_gpio_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQF_VALID = common dso_local global i32 0, align 4
@nmk_gpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmk_gpio_chip*)* @nmk_gpio_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_gpio_init_irq(%struct.nmk_gpio_chip* %0) #0 {
  %2 = alloca %struct.nmk_gpio_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nmk_gpio_chip* %0, %struct.nmk_gpio_chip** %2, align 8
  %5 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %2, align 8
  %6 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @NOMADIK_GPIO_TO_IRQ(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @NMK_GPIO_PER_CHIP, align 4
  %15 = add i32 %13, %14
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @set_irq_chip(i32 %18, i32* @nmk_gpio_irq_chip)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @handle_edge_irq, align 4
  %22 = call i32 @set_irq_handler(i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IRQF_VALID, align 4
  %25 = call i32 @set_irq_flags(i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %2, align 8
  %28 = call i32 @set_irq_chip_data(i32 %26, %struct.nmk_gpio_chip* %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %2, align 8
  %34 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @nmk_gpio_irq_handler, align 4
  %37 = call i32 @set_irq_chained_handler(i32 %35, i32 %36)
  %38 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %2, align 8
  %39 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %2, align 8
  %42 = call i32 @set_irq_data(i32 %40, %struct.nmk_gpio_chip* %41)
  ret i32 0
}

declare dso_local i32 @NOMADIK_GPIO_TO_IRQ(i32) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @set_irq_flags(i32, i32) #1

declare dso_local i32 @set_irq_chip_data(i32, %struct.nmk_gpio_chip*) #1

declare dso_local i32 @set_irq_chained_handler(i32, i32) #1

declare dso_local i32 @set_irq_data(i32, %struct.nmk_gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
