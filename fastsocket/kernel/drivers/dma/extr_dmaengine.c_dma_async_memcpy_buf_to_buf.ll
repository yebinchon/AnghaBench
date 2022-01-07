; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_async_memcpy_buf_to_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_async_memcpy_buf_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32, %struct.dma_device* }
%struct.dma_device = type { i32, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)* }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, i32* }
%struct.dma_chan.0 = type opaque
%struct.TYPE_2__ = type { i64, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@DMA_COMPL_SRC_UNMAP_SINGLE = common dso_local global i64 0, align 8
@DMA_COMPL_DEST_UNMAP_SINGLE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_async_memcpy_buf_to_buf(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dma_device*, align 8
  %11 = alloca %struct.dma_async_tx_descriptor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %18 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %17, i32 0, i32 1
  %19 = load %struct.dma_device*, %struct.dma_device** %18, align 8
  store %struct.dma_device* %19, %struct.dma_device** %10, align 8
  %20 = load %struct.dma_device*, %struct.dma_device** %10, align 8
  %21 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = call i32 @dma_map_single(i32 %22, i8* %23, i64 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.dma_device*, %struct.dma_device** %10, align 8
  %28 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_map_single(i32 %29, i8* %30, i64 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i64, i64* @DMA_CTRL_ACK, align 8
  %35 = load i64, i64* @DMA_COMPL_SRC_UNMAP_SINGLE, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @DMA_COMPL_DEST_UNMAP_SINGLE, align 8
  %38 = or i64 %36, %37
  store i64 %38, i64* %16, align 8
  %39 = load %struct.dma_device*, %struct.dma_device** %10, align 8
  %40 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %39, i32 0, i32 1
  %41 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)** %40, align 8
  %42 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %43 = bitcast %struct.dma_chan* %42 to %struct.dma_chan.0*
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %16, align 8
  %48 = call %struct.dma_async_tx_descriptor* %41(%struct.dma_chan.0* %43, i32 %44, i32 %45, i64 %46, i64 %47)
  store %struct.dma_async_tx_descriptor* %48, %struct.dma_async_tx_descriptor** %11, align 8
  %49 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %50 = icmp ne %struct.dma_async_tx_descriptor* %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %4
  %52 = load %struct.dma_device*, %struct.dma_device** %10, align 8
  %53 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_unmap_single(i32 %54, i32 %55, i64 %56, i32 %57)
  %59 = load %struct.dma_device*, %struct.dma_device** %10, align 8
  %60 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i32 @dma_unmap_single(i32 %61, i32 %62, i64 %63, i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %96

68:                                               ; preds = %4
  %69 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %70 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %72 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %71, i32 0, i32 0
  %73 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %72, align 8
  %74 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %75 = call i32 %73(%struct.dma_async_tx_descriptor* %74)
  store i32 %75, i32* %14, align 4
  %76 = call i32 (...) @get_cpu()
  store i32 %76, i32* %15, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %79 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %77
  store i64 %85, i64* %83, align 8
  %86 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %87 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %88, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = call i32 (...) @put_cpu()
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %68, %51
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
