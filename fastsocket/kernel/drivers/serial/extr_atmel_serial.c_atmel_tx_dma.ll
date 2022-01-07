; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_tx_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i32 }
%struct.atmel_uart_port = type { %struct.atmel_dma_buffer }
%struct.atmel_dma_buffer = type { i32, i64, i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTDIS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTEN = common dso_local global i32 0, align 4
@ATMEL_US_ENDTX = common dso_local global i32 0, align 4
@ATMEL_US_TXBUFE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_tx_dma(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca %struct.atmel_dma_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %7)
  store %struct.atmel_uart_port* %8, %struct.atmel_uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %4, align 8
  %13 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %13, i32 0, i32 0
  store %struct.atmel_dma_buffer* %14, %struct.atmel_dma_buffer** %5, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = call i64 @UART_GET_TCR(%struct.uart_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %24 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @UART_XMIT_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %30 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = load i32, i32* @ATMEL_PDC_TXTDIS, align 4
  %45 = call i32 @UART_PUT_PTCR(%struct.uart_port* %43, i32 %44)
  %46 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %47 = call i32 @uart_circ_empty(%struct.circ_buf* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %97, label %49

49:                                               ; preds = %19
  %50 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %51 = call i32 @uart_tx_stopped(%struct.uart_port* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %97, label %53

53:                                               ; preds = %49
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %58 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_sync_single_for_device(i32 %56, i64 %59, i32 %62, i32 %63)
  %65 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %69 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UART_XMIT_SIZE, align 4
  %72 = call i32 @CIRC_CNT_TO_END(i32 %67, i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %81 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = call i32 @UART_PUT_TPR(%struct.uart_port* %76, i64 %84)
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @UART_PUT_TCR(%struct.uart_port* %86, i32 %87)
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = load i32, i32* @ATMEL_PDC_TXTEN, align 4
  %91 = call i32 @UART_PUT_PTCR(%struct.uart_port* %89, i32 %90)
  %92 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %93 = load i32, i32* @ATMEL_US_ENDTX, align 4
  %94 = load i32, i32* @ATMEL_US_TXBUFE, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @UART_PUT_IER(%struct.uart_port* %92, i32 %95)
  br label %97

97:                                               ; preds = %53, %49, %19
  %98 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %99 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %98)
  %100 = load i64, i64* @WAKEUP_CHARS, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %104 = call i32 @uart_write_wakeup(%struct.uart_port* %103)
  br label %105

105:                                              ; preds = %18, %102, %97
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @UART_GET_TCR(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_PTCR(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @CIRC_CNT_TO_END(i32, i32, i32) #1

declare dso_local i32 @UART_PUT_TPR(%struct.uart_port*, i64) #1

declare dso_local i32 @UART_PUT_TCR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_IER(%struct.uart_port*, i32) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
