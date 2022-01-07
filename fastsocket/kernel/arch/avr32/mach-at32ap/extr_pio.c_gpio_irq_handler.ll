; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_pio.c_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_pio.c_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 (i32, %struct.irq_desc*)* }
%struct.pio_device = type { i32 }

@ISR = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_irq_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.pio_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_desc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.pio_device* @get_irq_chip_data(i32 %10)
  store %struct.pio_device* %11, %struct.pio_device** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @get_irq_data(i32 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %52, %2
  %16 = load %struct.pio_device*, %struct.pio_device** %5, align 8
  %17 = load i32, i32* @ISR, align 4
  %18 = call i32 @pio_readl(%struct.pio_device* %16, i32 %17)
  %19 = load %struct.pio_device*, %struct.pio_device** %5, align 8
  %20 = load i32, i32* @IMR, align 4
  %21 = call i32 @pio_readl(%struct.pio_device* %19, i32 %20)
  %22 = and i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %53

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ffs(i32 %28)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 1, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %39, i64 %41
  store %struct.irq_desc* %42, %struct.irq_desc** %8, align 8
  %43 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %44 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %43, i32 0, i32 0
  %45 = load i32 (i32, %struct.irq_desc*)*, i32 (i32, %struct.irq_desc*)** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  %48 = call i32 %45(i32 %46, %struct.irq_desc* %47)
  br label %49

49:                                               ; preds = %27
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %27, label %52

52:                                               ; preds = %49
  br label %15

53:                                               ; preds = %25
  ret void
}

declare dso_local %struct.pio_device* @get_irq_chip_data(i32) #1

declare dso_local i64 @get_irq_data(i32) #1

declare dso_local i32 @pio_readl(%struct.pio_device*, i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
