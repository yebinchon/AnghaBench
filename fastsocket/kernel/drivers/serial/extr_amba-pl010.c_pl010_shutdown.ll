; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@UART010_CR = common dso_local global i64 0, align 8
@UART010_LCRH = common dso_local global i64 0, align 8
@UART01x_LCRH_BRK = common dso_local global i32 0, align 4
@UART01x_LCRH_FEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pl010_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_amba_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %5, %struct.uart_amba_port** %3, align 8
  %6 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.uart_amba_port* %10)
  %12 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UART010_CR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 0, i64 %17)
  %19 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UART010_LCRH, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readb(i64 %24)
  %26 = load i32, i32* @UART01x_LCRH_BRK, align 4
  %27 = load i32, i32* @UART01x_LCRH_FEN, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UART010_LCRH, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %30, i64 %36)
  %38 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_disable(i32 %40)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.uart_amba_port*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
