; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.sdio_uart_port* }
%struct.sdio_uart_port = type { i32 }

@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @sdio_uart_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_break_ctl(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdio_uart_port*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %9, align 8
  store %struct.sdio_uart_port* %10, %struct.sdio_uart_port** %6, align 8
  %11 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %12 = call i32 @sdio_uart_claim_func(%struct.sdio_uart_port* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @UART_LCR_SBC, align 4
  %22 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %23 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @UART_LCR_SBC, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %30 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %35 = load i32, i32* @UART_LCR, align 4
  %36 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %37 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sdio_out(%struct.sdio_uart_port* %34, i32 %35, i32 %38)
  %40 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %6, align 8
  %41 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_out(%struct.sdio_uart_port*, i32, i32) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
