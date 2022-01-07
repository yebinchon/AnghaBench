; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_handle_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_handle_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32 }

@ATMEL_US_ENDTX = common dso_local global i32 0, align 4
@ATMEL_US_TXBUFE = common dso_local global i32 0, align 4
@ATMEL_US_TXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @atmel_handle_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_handle_transmit(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call i64 @atmel_use_dma_tx(%struct.uart_port* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ATMEL_US_ENDTX, align 4
  %14 = load i32, i32* @ATMEL_US_TXBUFE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = load i32, i32* @ATMEL_US_ENDTX, align 4
  %21 = load i32, i32* @ATMEL_US_TXBUFE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @UART_PUT_IDR(%struct.uart_port* %19, i32 %22)
  %24 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %24, i32 0, i32 0
  %26 = call i32 @tasklet_schedule(i32* %25)
  br label %27

27:                                               ; preds = %18, %11
  br label %41

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %36 = call i32 @UART_PUT_IDR(%struct.uart_port* %34, i32 %35)
  %37 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %37, i32 0, i32 0
  %39 = call i32 @tasklet_schedule(i32* %38)
  br label %40

40:                                               ; preds = %33, %28
  br label %41

41:                                               ; preds = %40, %27
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_dma_tx(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_IDR(%struct.uart_port*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
