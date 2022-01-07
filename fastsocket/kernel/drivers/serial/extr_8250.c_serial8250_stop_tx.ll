; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_stop_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PORT_16C950 = common dso_local global i64 0, align 8
@UART_ACR_TXDIS = common dso_local global i32 0, align 4
@UART_ACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial8250_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %5, %struct.uart_8250_port** %3, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = call i32 @__stop_tx(%struct.uart_8250_port* %6)
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PORT_16C950, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @UART_ACR_TXDIS, align 4
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %21 = load i32, i32* @UART_ACR, align 4
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @serial_icr_write(%struct.uart_8250_port* %20, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @__stop_tx(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_icr_write(%struct.uart_8250_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
