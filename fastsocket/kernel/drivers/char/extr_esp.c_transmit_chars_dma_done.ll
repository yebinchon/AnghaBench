; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_transmit_chars_dma_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_transmit_chars_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dma = common dso_local global i32 0, align 4
@dma_bytes = common dso_local global i32 0, align 4
@dma_buffer = common dso_local global i64 0, align 8
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_START_DMA_TX = common dso_local global i32 0, align 4
@ESP_STAT_DMA_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*)* @transmit_chars_dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars_dma_done(%struct.esp_struct* %0) #0 {
  %2 = alloca %struct.esp_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.esp_struct* %0, %struct.esp_struct** %2, align 8
  %5 = call i64 (...) @claim_dma_lock()
  store i64 %5, i64* %4, align 8
  %6 = load i32, i32* @dma, align 4
  %7 = call i32 @disable_dma(i32 %6)
  %8 = load i32, i32* @dma, align 4
  %9 = call i32 @clear_dma_ff(i32 %8)
  %10 = load i32, i32* @dma_bytes, align 4
  %11 = load i32, i32* @dma, align 4
  %12 = call i32 @get_dma_residue(i32 %11)
  %13 = sub nsw i32 %10, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @dma_bytes, align 4
  %15 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %16 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @release_dma_lock(i64 %20)
  %22 = load i32, i32* @dma_bytes, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @dma_bytes, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* @dma_bytes, align 4
  %29 = load i64, i64* @dma_buffer, align 8
  %30 = load i64, i64* @dma_buffer, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* @dma_bytes, align 4
  %35 = call i32 @memmove(i64 %29, i64 %33, i32 %34)
  %36 = load i32, i32* @dma, align 4
  %37 = load i32, i32* @DMA_MODE_WRITE, align 4
  %38 = load i64, i64* @dma_buffer, align 8
  %39 = call i32 @isa_virt_to_bus(i64 %38)
  %40 = load i32, i32* @dma_bytes, align 4
  %41 = call i32 @program_isa_dma(i32 %36, i32 %37, i32 %39, i32 %40)
  %42 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %43 = load i32, i32* @UART_ESI_CMD1, align 4
  %44 = load i32, i32* @ESI_START_DMA_TX, align 4
  %45 = call i32 @serial_out(%struct.esp_struct* %42, i32 %43, i32 %44)
  br label %53

46:                                               ; preds = %1
  store i32 0, i32* @dma_bytes, align 4
  %47 = load i32, i32* @ESP_STAT_DMA_TX, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %50 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %25
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @program_isa_dma(i32, i32, i32, i32) #1

declare dso_local i32 @isa_virt_to_bus(i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
