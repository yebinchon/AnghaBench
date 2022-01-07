; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@SYSCON_UARTEN = common dso_local global i32 0, align 4
@UBRLCR_FIFOEN = common dso_local global i32 0, align 4
@UBRLCR_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @clps711xuart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clps711xuart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call i32 @TX_IRQ(%struct.uart_port* %5)
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call i32 @free_irq(i32 %6, %struct.uart_port* %7)
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i32 @RX_IRQ(%struct.uart_port* %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.uart_port* %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = call i32 @SYSCON(%struct.uart_port* %13)
  %15 = call i32 @clps_readl(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @SYSCON_UARTEN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = call i32 @SYSCON(%struct.uart_port* %21)
  %23 = call i32 @clps_writel(i32 %20, i32 %22)
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = call i32 @UBRLCR(%struct.uart_port* %24)
  %26 = call i32 @clps_readl(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @UBRLCR_FIFOEN, align 4
  %28 = load i32, i32* @UBRLCR_BREAK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = call i32 @UBRLCR(%struct.uart_port* %34)
  %36 = call i32 @clps_writel(i32 %33, i32 %35)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

declare dso_local i32 @TX_IRQ(%struct.uart_port*) #1

declare dso_local i32 @RX_IRQ(%struct.uart_port*) #1

declare dso_local i32 @clps_readl(i32) #1

declare dso_local i32 @SYSCON(%struct.uart_port*) #1

declare dso_local i32 @clps_writel(i32, i32) #1

declare dso_local i32 @UBRLCR(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
