; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_transmit_chars_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_transmit_chars_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, i64, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }

@dma_bytes = common dso_local global i32 0, align 4
@ESP_XMIT_SIZE = common dso_local global i32 0, align 4
@dma_buffer = common dso_local global i32* null, align 8
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@ESP_STAT_DMA_TX = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@ESI_START_DMA_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*, i32)* @transmit_chars_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars_dma(%struct.esp_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.esp_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.esp_struct* %0, %struct.esp_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  store i32 %6, i32* @dma_bytes, align 4
  %7 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %8 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @dma_bytes, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load i32*, i32** @dma_buffer, align 8
  %16 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %17 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %20 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* @dma_bytes, align 4
  %25 = call i32 @memcpy(i32* %15, i32* %23, i32 %24)
  br label %54

26:                                               ; preds = %2
  %27 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %28 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %29 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32*, i32** @dma_buffer, align 8
  %33 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %34 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %37 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @memcpy(i32* %32, i32* %40, i32 %41)
  %43 = load i32*, i32** @dma_buffer, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %48 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @dma_bytes, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 @memcpy(i32* %46, i32* %49, i32 %52)
  br label %54

54:                                               ; preds = %26, %14
  %55 = load i32, i32* @dma_bytes, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %58 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %62 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @dma_bytes, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* @ESP_XMIT_SIZE, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  %69 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %70 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %72 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WAKEUP_CHARS, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %54
  %77 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %78 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %84 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @tty_wakeup(i64 %86)
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %90 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sle i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load i32, i32* @UART_IER_THRI, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %97 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %101 = load i32, i32* @UART_ESI_CMD1, align 4
  %102 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %103 = call i32 @serial_out(%struct.esp_struct* %100, i32 %101, i32 %102)
  %104 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %105 = load i32, i32* @UART_ESI_CMD2, align 4
  %106 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %107 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @serial_out(%struct.esp_struct* %104, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %93, %88
  br label %111

111:                                              ; preds = %110, %54
  %112 = load i32, i32* @ESP_STAT_DMA_TX, align 4
  %113 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %114 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @dma, align 4
  %118 = load i32, i32* @DMA_MODE_WRITE, align 4
  %119 = load i32*, i32** @dma_buffer, align 8
  %120 = call i32 @isa_virt_to_bus(i32* %119)
  %121 = load i32, i32* @dma_bytes, align 4
  %122 = call i32 @program_isa_dma(i32 %117, i32 %118, i32 %120, i32 %121)
  %123 = load %struct.esp_struct*, %struct.esp_struct** %3, align 8
  %124 = load i32, i32* @UART_ESI_CMD1, align 4
  %125 = load i32, i32* @ESI_START_DMA_TX, align 4
  %126 = call i32 @serial_out(%struct.esp_struct* %123, i32 %124, i32 %125)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tty_wakeup(i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @program_isa_dma(i32, i32, i32, i32) #1

declare dso_local i32 @isa_virt_to_bus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
