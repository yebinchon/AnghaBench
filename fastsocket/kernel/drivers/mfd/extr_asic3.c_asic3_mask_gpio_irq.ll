; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_mask_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_mask_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asic3 = type { i32 }

@ASIC3_GPIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @asic3_mask_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asic3_mask_gpio_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asic3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.asic3* @get_irq_chip_data(i32 %8)
  store %struct.asic3* %9, %struct.asic3** %3, align 8
  %10 = load %struct.asic3*, %struct.asic3** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @asic3_irq_to_bank(%struct.asic3* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.asic3*, %struct.asic3** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @asic3_irq_to_index(%struct.asic3* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.asic3*, %struct.asic3** %3, align 8
  %17 = getelementptr inbounds %struct.asic3, %struct.asic3* %16, i32 0, i32 0
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.asic3*, %struct.asic3** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ASIC3_GPIO_MASK, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @asic3_read_register(%struct.asic3* %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.asic3*, %struct.asic3** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ASIC3_GPIO_MASK, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @asic3_write_register(%struct.asic3* %29, i32 %32, i32 %33)
  %35 = load %struct.asic3*, %struct.asic3** %3, align 8
  %36 = getelementptr inbounds %struct.asic3, %struct.asic3* %35, i32 0, i32 0
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.asic3* @get_irq_chip_data(i32) #1

declare dso_local i32 @asic3_irq_to_bank(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_irq_to_index(%struct.asic3*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asic3_read_register(%struct.asic3*, i32) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
