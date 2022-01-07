; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c_async_mult.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c_async_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32, i32 }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32*, i32*, i32, i64*, i64, i32)*, %struct.device* }
%struct.dma_chan.0 = type opaque
%struct.device = type { i32 }

@DMA_PQ = common dso_local global i32 0, align 4
@DMA_PREP_PQ_DISABLE_P = common dso_local global i32 0, align 4
@ASYNC_TX_FENCE = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@raid6_gfmul = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.page*, %struct.page*, i64, i64, %struct.async_submit_ctl*)* @async_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @async_mult(%struct.page* %0, %struct.page* %1, i64 %2, i64 %3, %struct.async_submit_ctl* %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.async_submit_ctl*, align 8
  %12 = alloca %struct.dma_chan*, align 8
  %13 = alloca %struct.dma_device*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca [2 x i32], align 4
  %18 = alloca [1 x i32], align 4
  %19 = alloca %struct.device*, align 8
  %20 = alloca %struct.dma_async_tx_descriptor*, align 8
  %21 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.async_submit_ctl* %4, %struct.async_submit_ctl** %11, align 8
  %22 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %23 = load i32, i32* @DMA_PQ, align 4
  %24 = load i64, i64* %10, align 8
  %25 = call %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl* %22, i32 %23, %struct.page** %7, i32 1, %struct.page** %8, i32 1, i64 %24)
  store %struct.dma_chan* %25, %struct.dma_chan** %12, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %27 = icmp ne %struct.dma_chan* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %30 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %29, i32 0, i32 0
  %31 = load %struct.dma_device*, %struct.dma_device** %30, align 8
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi %struct.dma_device* [ %31, %28 ], [ null, %32 ]
  store %struct.dma_device* %34, %struct.dma_device** %13, align 8
  %35 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %36 = icmp ne %struct.dma_device* %35, null
  br i1 %36, label %37, label %96

37:                                               ; preds = %33
  %38 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %39 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %38, i32 0, i32 1
  %40 = load %struct.device*, %struct.device** %39, align 8
  store %struct.device* %40, %struct.device** %19, align 8
  %41 = load i32, i32* @DMA_PREP_PQ_DISABLE_P, align 4
  store i32 %41, i32* %21, align 4
  %42 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %43 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @DMA_PREP_FENCE, align 4
  %50 = load i32, i32* %21, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %21, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load %struct.device*, %struct.device** %19, align 8
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %57 = call i32 @dma_map_page(%struct.device* %53, %struct.page* %54, i32 0, i64 %55, i32 %56)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.device*, %struct.device** %19, align 8
  %60 = load %struct.page*, %struct.page** %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i32 @dma_map_page(%struct.device* %59, %struct.page* %60, i32 0, i64 %61, i32 %62)
  %64 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %66 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %65, i32 0, i32 0
  %67 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32*, i32*, i32, i64*, i64, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32*, i32*, i32, i64*, i64, i32)** %66, align 8
  %68 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %69 = bitcast %struct.dma_chan* %68 to %struct.dma_chan.0*
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %71 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 0
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %21, align 4
  %74 = call %struct.dma_async_tx_descriptor* %67(%struct.dma_chan.0* %69, i32* %70, i32* %71, i32 1, i64* %9, i64 %72, i32 %73)
  store %struct.dma_async_tx_descriptor* %74, %struct.dma_async_tx_descriptor** %20, align 8
  %75 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %20, align 8
  %76 = icmp ne %struct.dma_async_tx_descriptor* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %52
  %78 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %79 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %20, align 8
  %80 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %81 = call i32 @async_tx_submit(%struct.dma_chan* %78, %struct.dma_async_tx_descriptor* %79, %struct.async_submit_ctl* %80)
  %82 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %20, align 8
  store %struct.dma_async_tx_descriptor* %82, %struct.dma_async_tx_descriptor** %6, align 8
  br label %122

83:                                               ; preds = %52
  %84 = load %struct.device*, %struct.device** %19, align 8
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %89 = call i32 @dma_unmap_page(%struct.device* %84, i32 %86, i64 %87, i32 %88)
  %90 = load %struct.device*, %struct.device** %19, align 8
  %91 = getelementptr inbounds [1 x i32], [1 x i32]* %18, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* @DMA_TO_DEVICE, align 4
  %95 = call i32 @dma_unmap_page(%struct.device* %90, i32 %92, i64 %93, i32 %94)
  br label %96

96:                                               ; preds = %83, %33
  %97 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %98 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %97, i32 0, i32 1
  %99 = call i32 @async_tx_quiesce(i32* %98)
  %100 = load i64**, i64*** @raid6_gfmul, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  %103 = load i64*, i64** %102, align 8
  store i64* %103, i64** %14, align 8
  %104 = load %struct.page*, %struct.page** %7, align 8
  %105 = call i64* @page_address(%struct.page* %104)
  store i64* %105, i64** %15, align 8
  %106 = load %struct.page*, %struct.page** %8, align 8
  %107 = call i64* @page_address(%struct.page* %106)
  store i64* %107, i64** %16, align 8
  br label %108

108:                                              ; preds = %112, %96
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %10, align 8
  %111 = icmp ne i64 %109, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i64*, i64** %14, align 8
  %114 = load i64*, i64** %16, align 8
  %115 = getelementptr inbounds i64, i64* %114, i32 1
  store i64* %115, i64** %16, align 8
  %116 = load i64, i64* %114, align 8
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %15, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %15, align 8
  store i64 %118, i64* %119, align 8
  br label %108

121:                                              ; preds = %108
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %122

122:                                              ; preds = %121, %77
  %123 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %123
}

declare dso_local %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl*, i32, %struct.page**, i32, %struct.page**, i32, i64) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @async_tx_submit(%struct.dma_chan*, %struct.dma_async_tx_descriptor*, %struct.async_submit_ctl*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @async_tx_quiesce(i32*) #1

declare dso_local i64* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
