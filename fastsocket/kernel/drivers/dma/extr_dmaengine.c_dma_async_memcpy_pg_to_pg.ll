; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_async_memcpy_pg_to_pg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmaengine.c_dma_async_memcpy_pg_to_pg.c"
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
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_async_memcpy_pg_to_pg(%struct.dma_chan* %0, %struct.page* %1, i32 %2, %struct.page* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dma_device*, align 8
  %15 = alloca %struct.dma_async_tx_descriptor*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.page* %3, %struct.page** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %21 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %22 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %21, i32 0, i32 1
  %23 = load %struct.dma_device*, %struct.dma_device** %22, align 8
  store %struct.dma_device* %23, %struct.dma_device** %14, align 8
  %24 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %25 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.page*, %struct.page** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i64, i64* %13, align 8
  %30 = load i32, i32* @DMA_TO_DEVICE, align 4
  %31 = call i32 @dma_map_page(i32 %26, %struct.page* %27, i32 %28, i64 %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %33 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.page*, %struct.page** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %13, align 8
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_map_page(i32 %34, %struct.page* %35, i32 %36, i64 %37, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i64, i64* @DMA_CTRL_ACK, align 8
  store i64 %40, i64* %20, align 8
  %41 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %42 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %41, i32 0, i32 1
  %43 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32, i32, i64, i64)** %42, align 8
  %44 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %45 = bitcast %struct.dma_chan* %44 to %struct.dma_chan.0*
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %20, align 8
  %50 = call %struct.dma_async_tx_descriptor* %43(%struct.dma_chan.0* %45, i32 %46, i32 %47, i64 %48, i64 %49)
  store %struct.dma_async_tx_descriptor* %50, %struct.dma_async_tx_descriptor** %15, align 8
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %52 = icmp ne %struct.dma_async_tx_descriptor* %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %6
  %54 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %55 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_page(i32 %56, i32 %57, i64 %58, i32 %59)
  %61 = load %struct.dma_device*, %struct.dma_device** %14, align 8
  %62 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i64, i64* %13, align 8
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = call i32 @dma_unmap_page(i32 %63, i32 %64, i64 %65, i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %98

70:                                               ; preds = %6
  %71 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %72 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %74 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %73, i32 0, i32 0
  %75 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %74, align 8
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %15, align 8
  %77 = call i32 %75(%struct.dma_async_tx_descriptor* %76)
  store i32 %77, i32* %18, align 4
  %78 = call i32 (...) @get_cpu()
  store i32 %78, i32* %19, align 4
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %81 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %19, align 4
  %84 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %79
  store i64 %87, i64* %85, align 8
  %88 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %89 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %19, align 4
  %92 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = call i32 (...) @put_cpu()
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %70, %53
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i64, i32) #1

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
