; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { %struct.tty_driver*, i32 }
%struct.tty_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_unregister_driver(%struct.uart_driver* %0) #0 {
  %2 = alloca %struct.uart_driver*, align 8
  %3 = alloca %struct.tty_driver*, align 8
  store %struct.uart_driver* %0, %struct.uart_driver** %2, align 8
  %4 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %5 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %4, i32 0, i32 0
  %6 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  store %struct.tty_driver* %6, %struct.tty_driver** %3, align 8
  %7 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %8 = call i32 @tty_unregister_driver(%struct.tty_driver* %7)
  %9 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %10 = call i32 @put_tty_driver(%struct.tty_driver* %9)
  %11 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %12 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kfree(i32 %13)
  %15 = load %struct.uart_driver*, %struct.uart_driver** %2, align 8
  %16 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %15, i32 0, i32 0
  store %struct.tty_driver* null, %struct.tty_driver** %16, align 8
  ret void
}

declare dso_local i32 @tty_unregister_driver(%struct.tty_driver*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
