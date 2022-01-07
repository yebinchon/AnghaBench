; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, i32, i32, %struct.TYPE_6__, i64, i32*, %struct.esp_struct*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@ESP_STAT_DMA_RX = common dso_local global i32 0, align 4
@ESP_STAT_DMA_TX = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@dma_bytes = common dso_local global i64 0, align 8
@dma_buffer = common dso_local global i32* null, align 8
@ports = common dso_local global %struct.esp_struct* null, align 8
@DMA_BUFFER_SZ = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@ESI_WRITE_UART = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.esp_struct* %0) #0 {
  %2 = alloca %struct.esp_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.esp_struct*, align 8
  store %struct.esp_struct* %0, %struct.esp_struct** %2, align 8
  %6 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %7 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %179

14:                                               ; preds = %1
  %15 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %16 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %15, i32 0, i32 2
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %20 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = call i32 @wake_up_interruptible(i32* %21)
  %23 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %24 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %23, i32 0, i32 8
  %25 = call i32 @wake_up_interruptible(i32* %24)
  %26 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %27 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ESP_STAT_DMA_RX, align 4
  %30 = load i32, i32* @ESP_STAT_DMA_TX, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %14
  %35 = call i64 (...) @claim_dma_lock()
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* @dma, align 4
  %37 = call i32 @disable_dma(i32 %36)
  %38 = load i32, i32* @dma, align 4
  %39 = call i32 @clear_dma_ff(i32 %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @release_dma_lock(i64 %40)
  store i64 0, i64* @dma_bytes, align 8
  br label %42

42:                                               ; preds = %34, %14
  %43 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %44 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %47 = call i32 @free_irq(i32 %45, %struct.esp_struct* %46)
  %48 = load i32*, i32** @dma_buffer, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %42
  %51 = load %struct.esp_struct*, %struct.esp_struct** @ports, align 8
  store %struct.esp_struct* %51, %struct.esp_struct** %5, align 8
  br label %52

52:                                               ; preds = %68, %50
  %53 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %54 = icmp ne %struct.esp_struct* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %57 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %58 = icmp ne %struct.esp_struct* %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %61 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %72

68:                                               ; preds = %59, %55
  %69 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %70 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %69, i32 0, i32 6
  %71 = load %struct.esp_struct*, %struct.esp_struct** %70, align 8
  store %struct.esp_struct* %71, %struct.esp_struct** %5, align 8
  br label %52

72:                                               ; preds = %67, %52
  %73 = load %struct.esp_struct*, %struct.esp_struct** %5, align 8
  %74 = icmp ne %struct.esp_struct* %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @dma, align 4
  %77 = call i32 @free_dma(i32 %76)
  %78 = load i32*, i32** @dma_buffer, align 8
  %79 = ptrtoint i32* %78 to i64
  %80 = load i32, i32* @DMA_BUFFER_SZ, align 4
  %81 = call i32 @get_order(i32 %80)
  %82 = call i32 @free_pages(i64 %79, i32 %81)
  store i32* null, i32** @dma_buffer, align 8
  br label %83

83:                                               ; preds = %75, %72
  br label %84

84:                                               ; preds = %83, %42
  %85 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %86 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %91 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %92 to i64
  %94 = call i32 @free_page(i64 %93)
  %95 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %96 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %95, i32 0, i32 5
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %89, %84
  %98 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %99 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  %100 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %101 = load i32, i32* @UART_ESI_CMD1, align 4
  %102 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %103 = call i32 @serial_out(%struct.esp_struct* %100, i32 %101, i32 %102)
  %104 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %105 = load i32, i32* @UART_ESI_CMD2, align 4
  %106 = call i32 @serial_out(%struct.esp_struct* %104, i32 %105, i32 0)
  %107 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %108 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = icmp ne %struct.TYPE_5__* %110, null
  br i1 %111, label %112, label %124

112:                                              ; preds = %97
  %113 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %114 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @HUPCL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %112, %97
  %125 = load i32, i32* @UART_MCR_DTR, align 4
  %126 = load i32, i32* @UART_MCR_RTS, align 4
  %127 = or i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %130 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %124, %112
  %134 = load i32, i32* @UART_MCR_OUT2, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %137 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %141 = load i32, i32* @UART_ESI_CMD1, align 4
  %142 = load i32, i32* @ESI_WRITE_UART, align 4
  %143 = call i32 @serial_out(%struct.esp_struct* %140, i32 %141, i32 %142)
  %144 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %145 = load i32, i32* @UART_ESI_CMD2, align 4
  %146 = load i32, i32* @UART_MCR, align 4
  %147 = call i32 @serial_out(%struct.esp_struct* %144, i32 %145, i32 %146)
  %148 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %149 = load i32, i32* @UART_ESI_CMD2, align 4
  %150 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %151 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @serial_out(%struct.esp_struct* %148, i32 %149, i32 %152)
  %154 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %155 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = icmp ne %struct.TYPE_5__* %157, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %133
  %160 = load i32, i32* @TTY_IO_ERROR, align 4
  %161 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %162 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = call i32 @set_bit(i32 %160, i32* %165)
  br label %167

167:                                              ; preds = %159, %133
  %168 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %171 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %169
  store i32 %174, i32* %172, align 8
  %175 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %176 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %175, i32 0, i32 2
  %177 = load i64, i64* %3, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32* %176, i64 %177)
  br label %179

179:                                              ; preds = %167, %13
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @free_irq(i32, %struct.esp_struct*) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
