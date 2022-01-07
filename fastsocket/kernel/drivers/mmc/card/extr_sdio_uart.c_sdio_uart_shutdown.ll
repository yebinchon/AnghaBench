; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HUPCL = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*)* @sdio_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_shutdown(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca %struct.sdio_uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %2, align 8
  %4 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %5 = call i32 @sdio_uart_claim_func(%struct.sdio_uart_port* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %70

9:                                                ; preds = %1
  %10 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %11 = call i32 @sdio_uart_stop_rx(%struct.sdio_uart_port* %10)
  %12 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HUPCL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %9
  %23 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %24 = load i32, i32* @TIOCM_DTR, align 4
  %25 = load i32, i32* @TIOCM_RTS, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @sdio_uart_clear_mctrl(%struct.sdio_uart_port* %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %9
  %29 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %30 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sdio_release_irq(i32 %31)
  %33 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %36 = load i32, i32* @UART_IER, align 4
  %37 = call i32 @sdio_out(%struct.sdio_uart_port* %35, i32 %36, i32 0)
  %38 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %39 = load i32, i32* @TIOCM_OUT2, align 4
  %40 = call i32 @sdio_uart_clear_mctrl(%struct.sdio_uart_port* %38, i32 %39)
  %41 = load i32, i32* @UART_LCR_SBC, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %44 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %48 = load i32, i32* @UART_LCR, align 4
  %49 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %50 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sdio_out(%struct.sdio_uart_port* %47, i32 %48, i32 %51)
  %53 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %54 = load i32, i32* @UART_FCR, align 4
  %55 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %56 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @sdio_out(%struct.sdio_uart_port* %53, i32 %54, i32 %59)
  %61 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %62 = load i32, i32* @UART_FCR, align 4
  %63 = call i32 @sdio_out(%struct.sdio_uart_port* %61, i32 %62, i32 0)
  %64 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %65 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sdio_disable_func(i32 %66)
  %68 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %69 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %68)
  br label %70

70:                                               ; preds = %28, %8
  %71 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %2, align 8
  %72 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @free_page(i64 %74)
  ret void
}

declare dso_local i32 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_stop_rx(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_uart_clear_mctrl(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_release_irq(i32) #1

declare dso_local i32 @sdio_out(%struct.sdio_uart_port*, i32, i32) #1

declare dso_local i32 @sdio_disable_func(i32) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
