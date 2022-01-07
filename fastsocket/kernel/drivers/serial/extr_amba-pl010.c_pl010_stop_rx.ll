; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_stop_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UART010_CR = common dso_local global i64 0, align 8
@UART010_CR_RIE = common dso_local global i32 0, align 4
@UART010_CR_RTIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pl010_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_amba_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %6, %struct.uart_amba_port** %3, align 8
  %7 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UART010_CR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readb(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @UART010_CR_RIE, align 4
  %15 = load i32, i32* @UART010_CR_RTIE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UART010_CR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %20, i64 %26)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
