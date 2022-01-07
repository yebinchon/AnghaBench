; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_descriptor_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dwc_descriptor_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_dma_chan = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dw_desc = type { i32, %struct.TYPE_4__, i32, i32, %struct.dma_async_tx_descriptor }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i8*, i32 (i8*)*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"descriptor %u complete\0A\00", align 1
@DMA_COMPL_SKIP_DEST_UNMAP = common dso_local global i32 0, align 4
@DMA_COMPL_DEST_UNMAP_SINGLE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_COMPL_SKIP_SRC_UNMAP = common dso_local global i32 0, align 4
@DMA_COMPL_SRC_UNMAP_SINGLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_dma_chan*, %struct.dw_desc*)* @dwc_descriptor_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_descriptor_complete(%struct.dw_dma_chan* %0, %struct.dw_desc* %1) #0 {
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca %struct.dw_desc*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.dw_dma_chan* %0, %struct.dw_dma_chan** %3, align 8
  store %struct.dw_desc* %1, %struct.dw_desc** %4, align 8
  %9 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %10 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %9, i32 0, i32 4
  store %struct.dma_async_tx_descriptor* %10, %struct.dma_async_tx_descriptor** %7, align 8
  %11 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %11, i32 0, i32 0
  %13 = call i32 @chan2dev(%struct.TYPE_5__* %12)
  %14 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %15 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_vdbg(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %19 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %23, i32 0, i32 2
  %25 = load i32 (i8*)*, i32 (i8*)** %24, align 8
  store i32 (i8*)* %25, i32 (i8*)** %5, align 8
  %26 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %30 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %31 = call i32 @dwc_sync_desc_for_cpu(%struct.dw_dma_chan* %29, %struct.dw_desc* %30)
  %32 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %33 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %32, i32 0, i32 3
  %34 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %34, i32 0, i32 1
  %36 = call i32 @list_splice_init(i32* %33, i32* %35)
  %37 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %38 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %37, i32 0, i32 2
  %39 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %40 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %39, i32 0, i32 1
  %41 = call i32 @list_move(i32* %38, i32* %40)
  %42 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %43 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %125, label %47

47:                                               ; preds = %2
  %48 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %48, i32 0, i32 0
  %50 = call %struct.device* @chan2parent(%struct.TYPE_5__* %49)
  store %struct.device* %50, %struct.device** %8, align 8
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %52 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DMA_COMPL_SKIP_DEST_UNMAP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %47
  %58 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %59 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DMA_COMPL_DEST_UNMAP_SINGLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %67 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %71 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %74 = call i32 @dma_unmap_single(%struct.device* %65, i32 %69, i32 %72, i32 %73)
  br label %86

75:                                               ; preds = %57
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %78 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %82 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %85 = call i32 @dma_unmap_page(%struct.device* %76, i32 %80, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %75, %64
  br label %87

87:                                               ; preds = %86, %47
  %88 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %89 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DMA_COMPL_SKIP_SRC_UNMAP, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %124, label %94

94:                                               ; preds = %87
  %95 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %96 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DMA_COMPL_SRC_UNMAP_SINGLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load %struct.device*, %struct.device** %8, align 8
  %103 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %104 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %108 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @DMA_TO_DEVICE, align 4
  %111 = call i32 @dma_unmap_single(%struct.device* %102, i32 %106, i32 %109, i32 %110)
  br label %123

112:                                              ; preds = %94
  %113 = load %struct.device*, %struct.device** %8, align 8
  %114 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %115 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dw_desc*, %struct.dw_desc** %4, align 8
  %119 = getelementptr inbounds %struct.dw_desc, %struct.dw_desc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @DMA_TO_DEVICE, align 4
  %122 = call i32 @dma_unmap_page(%struct.device* %113, i32 %117, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %112, %101
  br label %124

124:                                              ; preds = %123, %87
  br label %125

125:                                              ; preds = %124, %2
  %126 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %127 = icmp ne i32 (i8*)* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 %129(i8* %130)
  br label %132

132:                                              ; preds = %128, %125
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.TYPE_5__*) #1

declare dso_local i32 @dwc_sync_desc_for_cpu(%struct.dw_dma_chan*, %struct.dw_desc*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local %struct.device* @chan2parent(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
