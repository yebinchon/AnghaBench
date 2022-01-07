; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_gpio.c_mx2_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_gpio.c_mx2_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.mxc_gpio_port = type { i64 }

@gpio_table_size = common dso_local global i32 0, align 4
@GPIO_IMR = common dso_local global i64 0, align 8
@GPIO_ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @mx2_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx2_gpio_irq_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxc_gpio_port*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @get_irq_data(i32 %9)
  %11 = inttoptr i64 %10 to %struct.mxc_gpio_port*
  store %struct.mxc_gpio_port* %11, %struct.mxc_gpio_port** %8, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %51, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @gpio_table_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %17, i64 %19
  %21 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GPIO_IMR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @__raw_readl(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %51

29:                                               ; preds = %16
  %30 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %30, i64 %32
  %34 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GPIO_ISR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @__raw_readl(i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = load %struct.mxc_gpio_port*, %struct.mxc_gpio_port** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mxc_gpio_port, %struct.mxc_gpio_port* %44, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mxc_gpio_irq_handler(%struct.mxc_gpio_port* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %29
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %12

54:                                               ; preds = %12
  ret void
}

declare dso_local i64 @get_irq_data(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @mxc_gpio_irq_handler(%struct.mxc_gpio_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
