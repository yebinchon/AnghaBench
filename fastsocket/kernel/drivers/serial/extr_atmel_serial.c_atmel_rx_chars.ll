; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32 }

@ATMEL_US_RXRDY = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call i32 @UART_GET_CSR(%struct.uart_port* %8)
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %68, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ATMEL_US_RXRDY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %10
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = call i32 @UART_GET_CHAR(%struct.uart_port* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ATMEL_US_PARE, align 4
  %20 = load i32, i32* @ATMEL_US_FRAME, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ATMEL_US_OVRE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %18, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %15
  %29 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %15
  %34 = phi i1 [ true, %15 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %41 = call i32 @UART_PUT_CR(%struct.uart_port* %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %56 = call i32 @UART_PUT_IER(%struct.uart_port* %54, i32 %55)
  br label %67

57:                                               ; preds = %46, %38
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %60 = call i32 @UART_PUT_IDR(%struct.uart_port* %58, i32 %59)
  %61 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %51
  br label %68

68:                                               ; preds = %67, %33
  %69 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @atmel_buffer_rx_char(%struct.uart_port* %69, i32 %70, i32 %71)
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = call i32 @UART_GET_CSR(%struct.uart_port* %73)
  store i32 %74, i32* %4, align 4
  br label %10

75:                                               ; preds = %10
  %76 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %77 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %76, i32 0, i32 1
  %78 = call i32 @tasklet_schedule(i32* %77)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @UART_GET_CSR(%struct.uart_port*) #1

declare dso_local i32 @UART_GET_CHAR(%struct.uart_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @UART_PUT_CR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_IER(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_IDR(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_buffer_rx_char(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
