; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_async_memcpy_buf_to_pg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_async_memcpy_buf_to_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, %struct.dma_device* }
%struct.dma_device = type { i32, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)* }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, i32* }
%struct.dma_chan.0 = type opaque
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@DMA_COMPL_SRC_UNMAP_SINGLE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_async_memcpy_buf_to_pg(%struct.dma_chan* %0, %struct.page* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dma_device*, align 8
  %13 = alloca %struct.dma_async_tx_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 1
  %21 = load %struct.dma_device*, %struct.dma_device** %20, align 8
  store %struct.dma_device* %21, %struct.dma_device** %12, align 8
  %22 = load %struct.dma_device*, %struct.dma_device** %12, align 8
  %23 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32, i32* @DMA_TO_DEVICE, align 4
  %28 = call i32 @dma_map_single(i32 %24, i8* %25, i64 %26, i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.dma_device*, %struct.dma_device** %12, align 8
  %30 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = call i32 @dma_map_page(i32 %31, %struct.page* %32, i32 %33, i64 %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i64, i64* @DMA_CTRL_ACK, align 8
  %38 = load i64, i64* @DMA_COMPL_SRC_UNMAP_SINGLE, align 8
  %39 = or i64 %37, %38
  store i64 %39, i64* %18, align 8
  %40 = load %struct.dma_device*, %struct.dma_device** %12, align 8
  %41 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %40, i32 0, i32 1
  %42 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)** %41, align 8
  %43 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %44 = bitcast %struct.dma_chan* %43 to %struct.dma_chan.0*
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %18, align 8
  %49 = call %struct.dma_async_tx_descriptor* %42(%struct.dma_chan.0* %44, i32 %45, i32 %46, i64 %47, i64 %48)
  store %struct.dma_async_tx_descriptor* %49, %struct.dma_async_tx_descriptor** %13, align 8
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %51 = icmp ne %struct.dma_async_tx_descriptor* %50, null
  br i1 %51, label %69, label %52

52:                                               ; preds = %5
  %53 = load %struct.dma_device*, %struct.dma_device** %12, align 8
  %54 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_single(i32 %55, i32 %56, i64 %57, i32 %58)
  %60 = load %struct.dma_device*, %struct.dma_device** %12, align 8
  %61 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i64, i64* %11, align 8
  %65 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %66 = call i32 @dma_unmap_page(i32 %62, i32 %63, i64 %64, i32 %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %97

69:                                               ; preds = %5
  %70 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %71 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %73 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %72, i32 0, i32 0
  %74 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %73, align 8
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  %76 = call i32 %74(%struct.dma_async_tx_descriptor* %75)
  store i32 %76, i32* %16, align 4
  %77 = call i32 (...) @get_cpu()
  store i32 %77, i32* %17, align 4
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %80 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %78
  store i64 %86, i64* %84, align 8
  %87 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %88 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %89, i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = call i32 (...) @put_cpu()
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %69, %52
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
