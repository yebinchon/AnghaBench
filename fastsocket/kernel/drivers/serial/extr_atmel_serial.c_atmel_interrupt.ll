; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@ATMEL_ISR_PASS_LIMIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_port*
  store %struct.uart_port* %10, %struct.uart_port** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = call i32 @UART_GET_CSR(%struct.uart_port* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = call i32 @UART_GET_IMR(%struct.uart_port* %15)
  %17 = and i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %37

21:                                               ; preds = %11
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @atmel_handle_receive(%struct.uart_port* %22, i32 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @atmel_handle_status(%struct.uart_port* %25, i32 %26, i32 %27)
  %29 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @atmel_handle_transmit(%struct.uart_port* %29, i32 %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @ATMEL_ISR_PASS_LIMIT, align 4
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %11, label %37

37:                                               ; preds = %32, %20
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @IRQ_NONE, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  ret i32 %45
}

declare dso_local i32 @UART_GET_CSR(%struct.uart_port*) #1

declare dso_local i32 @UART_GET_IMR(%struct.uart_port*) #1

declare dso_local i32 @atmel_handle_receive(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_handle_status(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_handle_transmit(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
