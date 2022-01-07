; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @serial8250_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %6, %struct.uart_8250_port** %3, align 8
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %8 = load i32, i32* @UART_IIR, align 4
  %9 = call i32 @serial_in(%struct.uart_8250_port* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @UART_IIR_NO_INT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %16 = call i32 @serial8250_handle_port(%struct.uart_8250_port* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 1
  %20 = load i64, i64* @jiffies, align 8
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @poll_timeout(i32 %24)
  %26 = add nsw i64 %20, %25
  %27 = call i32 @mod_timer(i32* %19, i64 %26)
  ret void
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial8250_handle_port(%struct.uart_8250_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @poll_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
