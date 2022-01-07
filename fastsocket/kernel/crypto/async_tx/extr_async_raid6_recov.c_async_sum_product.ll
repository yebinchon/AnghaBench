; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c_async_sum_product.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_async_raid6_recov.c_async_sum_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i32, i32 }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32*, i32*, i32, i8*, i64, i32)*, %struct.device* }
%struct.dma_chan.0 = type opaque
%struct.device = type { i32 }

@DMA_PQ = common dso_local global i32 0, align 4
@DMA_PREP_PQ_DISABLE_P = common dso_local global i32 0, align 4
@ASYNC_TX_FENCE = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@raid6_gfmul = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.page*, %struct.page**, i8*, i64, %struct.async_submit_ctl*)* @async_sum_product to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @async_sum_product(%struct.page* %0, %struct.page** %1, i8* %2, i64 %3, %struct.async_submit_ctl* %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.async_submit_ctl*, align 8
  %12 = alloca %struct.dma_chan*, align 8
  %13 = alloca %struct.dma_device*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca [2 x i32], align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca %struct.device*, align 8
  %24 = alloca %struct.dma_async_tx_descriptor*, align 8
  %25 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %7, align 8
  store %struct.page** %1, %struct.page*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.async_submit_ctl* %4, %struct.async_submit_ctl** %11, align 8
  %26 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %27 = load i32, i32* @DMA_PQ, align 4
  %28 = load %struct.page**, %struct.page*** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl* %26, i32 %27, %struct.page** %7, i32 1, %struct.page** %28, i32 2, i64 %29)
  store %struct.dma_chan* %30, %struct.dma_chan** %12, align 8
  %31 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %32 = icmp ne %struct.dma_chan* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %35 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %34, i32 0, i32 0
  %36 = load %struct.dma_device*, %struct.dma_device** %35, align 8
  br label %38

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi %struct.dma_device* [ %36, %33 ], [ null, %37 ]
  store %struct.dma_device* %39, %struct.dma_device** %13, align 8
  %40 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %41 = icmp ne %struct.dma_device* %40, null
  br i1 %41, label %42, label %118

42:                                               ; preds = %38
  %43 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %44 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %43, i32 0, i32 1
  %45 = load %struct.device*, %struct.device** %44, align 8
  store %struct.device* %45, %struct.device** %23, align 8
  %46 = load i32, i32* @DMA_PREP_PQ_DISABLE_P, align 4
  store i32 %46, i32* %25, align 4
  %47 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %48 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ASYNC_TX_FENCE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @DMA_PREP_FENCE, align 4
  %55 = load i32, i32* %25, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %25, align 4
  br label %57

57:                                               ; preds = %53, %42
  %58 = load %struct.device*, %struct.device** %23, align 8
  %59 = load %struct.page*, %struct.page** %7, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %62 = call i32 @dma_map_page(%struct.device* %58, %struct.page* %59, i32 0, i64 %60, i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.device*, %struct.device** %23, align 8
  %65 = load %struct.page**, %struct.page*** %8, align 8
  %66 = getelementptr inbounds %struct.page*, %struct.page** %65, i64 0
  %67 = load %struct.page*, %struct.page** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @dma_map_page(%struct.device* %64, %struct.page* %67, i32 0, i64 %68, i32 %69)
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.device*, %struct.device** %23, align 8
  %73 = load %struct.page**, %struct.page*** %8, align 8
  %74 = getelementptr inbounds %struct.page*, %struct.page** %73, i64 1
  %75 = load %struct.page*, %struct.page** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* @DMA_TO_DEVICE, align 4
  %78 = call i32 @dma_map_page(%struct.device* %72, %struct.page* %75, i32 0, i64 %76, i32 %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.dma_device*, %struct.dma_device** %13, align 8
  %81 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %80, i32 0, i32 0
  %82 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32*, i32*, i32, i8*, i64, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan.0*, i32*, i32*, i32, i8*, i64, i32)** %81, align 8
  %83 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %84 = bitcast %struct.dma_chan* %83 to %struct.dma_chan.0*
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %25, align 4
  %90 = call %struct.dma_async_tx_descriptor* %82(%struct.dma_chan.0* %84, i32* %85, i32* %86, i32 2, i8* %87, i64 %88, i32 %89)
  store %struct.dma_async_tx_descriptor* %90, %struct.dma_async_tx_descriptor** %24, align 8
  %91 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %24, align 8
  %92 = icmp ne %struct.dma_async_tx_descriptor* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %57
  %94 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %24, align 8
  %96 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %97 = call i32 @async_tx_submit(%struct.dma_chan* %94, %struct.dma_async_tx_descriptor* %95, %struct.async_submit_ctl* %96)
  %98 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %24, align 8
  store %struct.dma_async_tx_descriptor* %98, %struct.dma_async_tx_descriptor** %6, align 8
  br label %171

99:                                               ; preds = %57
  %100 = load %struct.device*, %struct.device** %23, align 8
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %105 = call i32 @dma_unmap_page(%struct.device* %100, i32 %102, i64 %103, i32 %104)
  %106 = load %struct.device*, %struct.device** %23, align 8
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %10, align 8
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  %111 = call i32 @dma_unmap_page(%struct.device* %106, i32 %108, i64 %109, i32 %110)
  %112 = load %struct.device*, %struct.device** %23, align 8
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i32 @dma_unmap_page(%struct.device* %112, i32 %114, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %99, %38
  %119 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %11, align 8
  %120 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %119, i32 0, i32 1
  %121 = call i32 @async_tx_quiesce(i32* %120)
  %122 = load i32**, i32*** @raid6_gfmul, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %122, i64 %126
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %14, align 8
  %129 = load i32**, i32*** @raid6_gfmul, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %129, i64 %133
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %15, align 8
  %136 = load %struct.page**, %struct.page*** %8, align 8
  %137 = getelementptr inbounds %struct.page*, %struct.page** %136, i64 0
  %138 = load %struct.page*, %struct.page** %137, align 8
  %139 = call i32* @page_address(%struct.page* %138)
  store i32* %139, i32** %18, align 8
  %140 = load %struct.page**, %struct.page*** %8, align 8
  %141 = getelementptr inbounds %struct.page*, %struct.page** %140, i64 1
  %142 = load %struct.page*, %struct.page** %141, align 8
  %143 = call i32* @page_address(%struct.page* %142)
  store i32* %143, i32** %19, align 8
  %144 = load %struct.page*, %struct.page** %7, align 8
  %145 = call i32* @page_address(%struct.page* %144)
  store i32* %145, i32** %20, align 8
  br label %146

146:                                              ; preds = %150, %118
  %147 = load i64, i64* %10, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %10, align 8
  %149 = icmp ne i64 %147, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %146
  %151 = load i32*, i32** %14, align 8
  %152 = load i32*, i32** %18, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %18, align 8
  %154 = load i32, i32* %152, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %16, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %19, align 8
  %161 = load i32, i32* %159, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = xor i32 %165, %166
  %168 = load i32*, i32** %20, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %20, align 8
  store i32 %167, i32* %168, align 4
  br label %146

170:                                              ; preds = %146
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %171

171:                                              ; preds = %170, %93
  %172 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %172
}

declare dso_local %struct.dma_chan* @async_tx_find_channel(%struct.async_submit_ctl*, i32, %struct.page**, i32, %struct.page**, i32, i64) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i64, i32) #1

declare dso_local i32 @async_tx_submit(%struct.dma_chan*, %struct.dma_async_tx_descriptor*, %struct.async_submit_ctl*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @async_tx_quiesce(i32*) #1

declare dso_local i32* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
