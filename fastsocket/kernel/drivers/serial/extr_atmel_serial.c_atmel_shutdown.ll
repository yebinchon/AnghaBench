; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.atmel_uart_port = type { %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* }
%struct.atmel_dma_buffer = type { i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_dma_buffer*, align 8
  %6 = alloca %struct.atmel_dma_buffer*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %7)
  store %struct.atmel_uart_port* %8, %struct.atmel_uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i32 @atmel_stop_rx(%struct.uart_port* %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call i32 @atmel_stop_tx(%struct.uart_port* %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = call i64 @atmel_use_dma_rx(%struct.uart_port* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %21, i32 0, i32 1
  %23 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %23, i64 %25
  store %struct.atmel_dma_buffer* %26, %struct.atmel_dma_buffer** %5, align 8
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(i32 %29, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kfree(i32 %40)
  br label %42

42:                                               ; preds = %20
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %17

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = call i64 @atmel_use_dma_tx(%struct.uart_port* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %51, i32 0, i32 0
  store %struct.atmel_dma_buffer* %52, %struct.atmel_dma_buffer** %6, align 8
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i32 @dma_unmap_single(i32 %55, i32 %58, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %50, %46
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %67 = call i32 @UART_PUT_CR(%struct.uart_port* %65, i32 %66)
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = call i32 @UART_PUT_IDR(%struct.uart_port* %68, i32 -1)
  %70 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = call i32 @free_irq(i32 %72, %struct.uart_port* %73)
  br i1 true, label %75, label %78

75:                                               ; preds = %64
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = call i32 @atmel_close_hook(%struct.uart_port* %76)
  br label %78

78:                                               ; preds = %75, %64
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_dma_rx(%struct.uart_port*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @atmel_use_dma_tx(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_CR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_IDR(%struct.uart_port*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

declare dso_local i32 @atmel_close_hook(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
