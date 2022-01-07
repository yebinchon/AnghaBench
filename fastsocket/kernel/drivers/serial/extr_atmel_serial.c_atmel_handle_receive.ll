; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_handle_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_handle_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i64, i32 }

@ATMEL_US_ENDRX = common dso_local global i32 0, align 4
@ATMEL_US_TIMEOUT = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@ATMEL_US_RXRDY = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @atmel_handle_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_handle_receive(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call i64 @atmel_use_dma_rx(%struct.uart_port* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ATMEL_US_ENDRX, align 4
  %14 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = load i32, i32* @ATMEL_US_ENDRX, align 4
  %21 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @UART_PUT_IDR(%struct.uart_port* %19, i32 %22)
  %24 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %24, i32 0, i32 1
  %26 = call i32 @tasklet_schedule(i32* %25)
  br label %27

27:                                               ; preds = %18, %11
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %30 = load i32, i32* @ATMEL_US_OVRE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ATMEL_US_FRAME, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ATMEL_US_PARE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %28, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @atmel_pdc_rxerr(%struct.uart_port* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %27
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ATMEL_US_RXRDY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = call i32 @atmel_rx_chars(%struct.uart_port* %49)
  br label %66

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %59 = call i32 @UART_PUT_CR(%struct.uart_port* %57, i32 %58)
  %60 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %61 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %62 = call i32 @UART_PUT_IDR(%struct.uart_port* %60, i32 %61)
  %63 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %64 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %51
  br label %66

66:                                               ; preds = %65, %48
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_dma_rx(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_IDR(%struct.uart_port*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @atmel_pdc_rxerr(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_rx_chars(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_CR(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
