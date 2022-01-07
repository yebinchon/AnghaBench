; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_receive_chars_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_receive_chars_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32 }

@ESP_STAT_RX_TIMEOUT = common dso_local global i32 0, align 4
@dma_bytes = common dso_local global i32 0, align 4
@ESP_STAT_DMA_RX = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@dma_buffer = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_START_DMA_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*, i32)* @receive_chars_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars_dma(%struct.esp_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.esp_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.esp_struct* %0, %struct.esp_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @ESP_STAT_RX_TIMEOUT, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %8 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* @dma_bytes, align 4
  %12 = load i32, i32* @ESP_STAT_DMA_RX, align 4
  %13 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %14 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @dma, align 4
  %18 = load i32, i32* @DMA_MODE_READ, align 4
  %19 = load i32, i32* @dma_buffer, align 4
  %20 = call i32 @isa_virt_to_bus(i32 %19)
  %21 = load i32, i32* @dma_bytes, align 4
  %22 = call i32 @program_isa_dma(i32 %17, i32 %18, i32 %20, i32 %21)
  %23 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %24 = load i32, i32* @UART_ESI_CMD1, align 4
  %25 = load i32, i32* @ESI_START_DMA_RX, align 4
  %26 = call i32 @serial_out(%struct.esp_struct* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @program_isa_dma(i32, i32, i32, i32) #1

declare dso_local i32 @isa_virt_to_bus(i32) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
