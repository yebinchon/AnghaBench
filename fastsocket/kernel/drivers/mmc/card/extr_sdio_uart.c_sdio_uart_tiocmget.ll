; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port* }
%struct.sdio_uart_port = type { i32 }
%struct.file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @sdio_uart_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.sdio_uart_port*, align 8
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %8, align 8
  store %struct.sdio_uart_port* %9, %struct.sdio_uart_port** %5, align 8
  %10 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %11 = call i32 @sdio_uart_claim_func(%struct.sdio_uart_port* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %16 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %19 = call i32 @sdio_uart_get_mctrl(%struct.sdio_uart_port* %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %5, align 8
  %22 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %21)
  br label %23

23:                                               ; preds = %14, %2
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_get_mctrl(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
