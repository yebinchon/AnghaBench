; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_handle_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_handle_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"status = %x...\00", align 1
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @serial8250_handle_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_handle_port(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %11 = load i32, i32* @UART_LSR, align 4
  %12 = call i32 @serial_inp(%struct.uart_8250_port* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DEBUG_INTR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @UART_LSR_DR, align 4
  %17 = load i32, i32* @UART_LSR_BI, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %23 = call i32 @receive_chars(%struct.uart_8250_port* %22, i32* %3)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %26 = call i32 @check_modem_status(%struct.uart_8250_port* %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @UART_LSR_THRE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %33 = call i32 @transmit_chars(%struct.uart_8250_port* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_inp(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @DEBUG_INTR(i8*, i32) #1

declare dso_local i32 @receive_chars(%struct.uart_8250_port*, i32*) #1

declare dso_local i32 @check_modem_status(%struct.uart_8250_port*) #1

declare dso_local i32 @transmit_chars(%struct.uart_8250_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
