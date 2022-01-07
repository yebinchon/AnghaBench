; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_console_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_console_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.console = type { i32, %struct.uart_driver* }
%struct.uart_driver = type { %struct.tty_driver* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_driver* @uart_console_device(%struct.console* %0, i32* %1) #0 {
  %3 = alloca %struct.console*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.uart_driver*, align 8
  store %struct.console* %0, %struct.console** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.console*, %struct.console** %3, align 8
  %7 = getelementptr inbounds %struct.console, %struct.console* %6, i32 0, i32 1
  %8 = load %struct.uart_driver*, %struct.uart_driver** %7, align 8
  store %struct.uart_driver* %8, %struct.uart_driver** %5, align 8
  %9 = load %struct.console*, %struct.console** %3, align 8
  %10 = getelementptr inbounds %struct.console, %struct.console* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.uart_driver*, %struct.uart_driver** %5, align 8
  %14 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %13, i32 0, i32 0
  %15 = load %struct.tty_driver*, %struct.tty_driver** %14, align 8
  ret %struct.tty_driver* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
