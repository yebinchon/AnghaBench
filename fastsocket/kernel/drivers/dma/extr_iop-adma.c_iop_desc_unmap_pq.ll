; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_desc_unmap_pq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_iop-adma.c_iop_desc_unmap_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.iop_adma_desc_slot = type { i32, i32, %struct.iop_adma_desc_slot*, i64, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }

@DMA_PREP_CONTINUE = common dso_local global i32 0, align 4
@DMA_COMPL_SKIP_DEST_UNMAP = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_COMPL_SKIP_SRC_UNMAP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_chan*, %struct.iop_adma_desc_slot*)* @iop_desc_unmap_pq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_desc_unmap_pq(%struct.iop_adma_chan* %0, %struct.iop_adma_desc_slot* %1) #0 {
  %3 = alloca %struct.iop_adma_chan*, align 8
  %4 = alloca %struct.iop_adma_desc_slot*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.iop_adma_desc_slot*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iop_adma_chan* %0, %struct.iop_adma_chan** %3, align 8
  store %struct.iop_adma_desc_slot* %1, %struct.iop_adma_desc_slot** %4, align 8
  %15 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %16 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %15, i32 0, i32 4
  store %struct.dma_async_tx_descriptor* %16, %struct.dma_async_tx_descriptor** %5, align 8
  %17 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %18 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %17, i32 0, i32 2
  %19 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %18, align 8
  store %struct.iop_adma_desc_slot* %19, %struct.iop_adma_desc_slot** %6, align 8
  %20 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %7, align 8
  %26 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %27 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %30 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %33 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %36 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %37 = call i32 @iop_desc_get_dest_addr(%struct.iop_adma_desc_slot* %35, %struct.iop_adma_chan* %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %39 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %40 = call i32 @iop_desc_get_qdest_addr(%struct.iop_adma_desc_slot* %38, %struct.iop_adma_chan* %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_PREP_CONTINUE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, 3
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %2
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @DMA_COMPL_SKIP_DEST_UNMAP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %50
  %56 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %57 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %65 = call i32 @dma_unmap_page(%struct.device* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %70 = call i32 @dma_unmap_page(%struct.device* %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %55, %50
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @DMA_COMPL_SKIP_SRC_UNMAP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %71
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %6, align 8
  %83 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %3, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @iop_desc_get_src_addr(%struct.iop_adma_desc_slot* %82, %struct.iop_adma_chan* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @DMA_TO_DEVICE, align 4
  %90 = call i32 @dma_unmap_page(%struct.device* %86, i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %77

94:                                               ; preds = %77
  %95 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %96 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @DMA_TO_DEVICE, align 4
  %104 = call i32 @dma_unmap_page(%struct.device* %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @DMA_TO_DEVICE, align 4
  %109 = call i32 @dma_unmap_page(%struct.device* %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %99, %94
  br label %111

111:                                              ; preds = %110, %71
  %112 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %113 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %112, i32 0, i32 2
  store %struct.iop_adma_desc_slot* null, %struct.iop_adma_desc_slot** %113, align 8
  ret void
}

declare dso_local i32 @iop_desc_get_dest_addr(%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*) #1

declare dso_local i32 @iop_desc_get_qdest_addr(%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @iop_desc_get_src_addr(%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
