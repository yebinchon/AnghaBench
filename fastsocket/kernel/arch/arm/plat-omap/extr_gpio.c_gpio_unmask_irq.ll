; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_gpio_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_gpio.c_gpio_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { i32 }
%struct.irq_desc = type { i32 }

@IH_GPIO_BASE = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gpio_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_unmask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_bank*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_desc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @IH_GPIO_BASE, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.gpio_bank* @get_irq_chip_data(i32 %11)
  store %struct.gpio_bank* %12, %struct.gpio_bank** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @get_gpio_index(i32 %13)
  %15 = shl i32 1, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.irq_desc* @irq_to_desc(i32 %16)
  store %struct.irq_desc* %17, %struct.irq_desc** %6, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %6, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @get_gpio_index(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @_set_gpio_triggering(%struct.gpio_bank* %26, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %33 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @_set_gpio_irqenable(%struct.gpio_bank* %39, i32 %40, i32 0)
  %42 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @_clear_gpio_irqstatus(%struct.gpio_bank* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.gpio_bank*, %struct.gpio_bank** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @_set_gpio_irqenable(%struct.gpio_bank* %46, i32 %47, i32 1)
  ret void
}

declare dso_local %struct.gpio_bank* @get_irq_chip_data(i32) #1

declare dso_local i32 @get_gpio_index(i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @_set_gpio_triggering(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @_set_gpio_irqenable(%struct.gpio_bank*, i32, i32) #1

declare dso_local i32 @_clear_gpio_irqstatus(%struct.gpio_bank*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
