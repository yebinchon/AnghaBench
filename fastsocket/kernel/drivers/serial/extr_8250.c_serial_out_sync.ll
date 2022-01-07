; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial_out_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial_out_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.uart_port }
%struct.uart_port = type { i32, i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32)* }

@UART_LCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32, i32)* @serial_out_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_out_sync(%struct.uart_8250_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_8250_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %9 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 0
  store %struct.uart_port* %9, %struct.uart_port** %7, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %27 [
    i32 129, label %13
    i32 128, label %13
    i32 130, label %13
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32, i32)** %15, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 %16(%struct.uart_port* %17, i32 %18, i32 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 2
  %23 = load i32 (%struct.uart_port*, i32)*, i32 (%struct.uart_port*, i32)** %22, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %25 = load i32, i32* @UART_LCR, align 4
  %26 = call i32 %23(%struct.uart_port* %24, i32 %25)
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load i32 (%struct.uart_port*, i32, i32)*, i32 (%struct.uart_port*, i32, i32)** %29, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 %30(%struct.uart_port* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
