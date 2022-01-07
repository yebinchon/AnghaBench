; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@ATMEL_PDC_TXTEN = common dso_local global i32 0, align 4
@ATMEL_US_ENDTX = common dso_local global i32 0, align 4
@ATMEL_US_TXBUFE = common dso_local global i32 0, align 4
@ATMEL_US_TXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %4 = call i64 @atmel_use_dma_tx(%struct.uart_port* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call i32 @UART_GET_PTSR(%struct.uart_port* %7)
  %9 = load i32, i32* @ATMEL_PDC_TXTEN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %26

13:                                               ; preds = %6
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @ATMEL_US_ENDTX, align 4
  %16 = load i32, i32* @ATMEL_US_TXBUFE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @UART_PUT_IER(%struct.uart_port* %14, i32 %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = load i32, i32* @ATMEL_PDC_TXTEN, align 4
  %21 = call i32 @UART_PUT_PTCR(%struct.uart_port* %19, i32 %20)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %25 = call i32 @UART_PUT_IER(%struct.uart_port* %23, i32 %24)
  br label %26

26:                                               ; preds = %12, %22, %13
  ret void
}

declare dso_local i64 @atmel_use_dma_tx(%struct.uart_port*) #1

declare dso_local i32 @UART_GET_PTSR(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_IER(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_PTCR(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
