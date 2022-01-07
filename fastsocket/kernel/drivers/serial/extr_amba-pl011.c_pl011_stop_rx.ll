; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_stop_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UART011_RXIM = common dso_local global i32 0, align 4
@UART011_RTIM = common dso_local global i32 0, align 4
@UART011_FEIM = common dso_local global i32 0, align 4
@UART011_PEIM = common dso_local global i32 0, align 4
@UART011_BEIM = common dso_local global i32 0, align 4
@UART011_OEIM = common dso_local global i32 0, align 4
@UART011_IMSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pl011_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl011_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_amba_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %5, %struct.uart_amba_port** %3, align 8
  %6 = load i32, i32* @UART011_RXIM, align 4
  %7 = load i32, i32* @UART011_RTIM, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @UART011_FEIM, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @UART011_PEIM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @UART011_BEIM, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @UART011_OEIM, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UART011_IMSC, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writew(i32 %24, i64 %30)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
