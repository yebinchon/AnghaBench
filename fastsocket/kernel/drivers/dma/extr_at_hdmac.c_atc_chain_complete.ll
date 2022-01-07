; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_chain_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_chain_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.at_desc = type { i32, %struct.TYPE_4__, i32, i32, %struct.dma_async_tx_descriptor }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_dma_chan*, %struct.at_desc*)* @atc_chain_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_chain_complete(%struct.at_dma_chan* %0, %struct.at_desc* %1) #0 {
  %3 = alloca %struct.at_dma_chan*, align 8
  %4 = alloca %struct.at_desc*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.at_dma_chan* %0, %struct.at_dma_chan** %3, align 8
  store %struct.at_desc* %1, %struct.at_desc** %4, align 8
  %9 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %10 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %9, i32 0, i32 4
  store %struct.dma_async_tx_descriptor* %10, %struct.dma_async_tx_descriptor** %7, align 8
  %11 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %11, i32 0, i32 0
  %13 = call i32 @chan2dev(%struct.TYPE_5__* %12)
  %14 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %15 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_vdbg(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %19 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %23, i32 0, i32 2
  %25 = load i32 (i8*)*, i32 (i8*)** %24, align 8
  store i32 (i8*)* %25, i32 (i8*)** %5, align 8
  %26 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %30 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %29, i32 0, i32 3
  %31 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %31, i32 0, i32 1
  %33 = call i32 @list_splice_init(i32* %30, i32* %32)
  %34 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %35 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %34, i32 0, i32 2
  %36 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %37 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %36, i32 0, i32 1
  %38 = call i32 @list_move(i32* %35, i32* %37)
  %39 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %40 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %122, label %44

44:                                               ; preds = %2
  %45 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %45, i32 0, i32 0
  %47 = call %struct.device* @chan2parent(%struct.TYPE_5__* %46)
  store %struct.device* %47, %struct.device** %8, align 8
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %49 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_COMPL_SKIP_DEST_UNMAP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %44
  %55 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %56 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_COMPL_DEST_UNMAP_SINGLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %8, align 8
  %63 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %64 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %68 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %71 = call i32 @dma_unmap_single(%struct.device* %62, i32 %66, i32 %69, i32 %70)
  br label %83

72:                                               ; preds = %54
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %75 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %79 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %82 = call i32 @dma_unmap_page(%struct.device* %73, i32 %77, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %72, %61
  br label %84

84:                                               ; preds = %83, %44
  %85 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %86 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DMA_COMPL_SKIP_SRC_UNMAP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %84
  %92 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %93 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @DMA_COMPL_SRC_UNMAP_SINGLE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.device*, %struct.device** %8, align 8
  %100 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %101 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %105 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DMA_TO_DEVICE, align 4
  %108 = call i32 @dma_unmap_single(%struct.device* %99, i32 %103, i32 %106, i32 %107)
  br label %120

109:                                              ; preds = %91
  %110 = load %struct.device*, %struct.device** %8, align 8
  %111 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %112 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %116 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @DMA_TO_DEVICE, align 4
  %119 = call i32 @dma_unmap_page(%struct.device* %110, i32 %114, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %109, %98
  br label %121

121:                                              ; preds = %120, %84
  br label %122

122:                                              ; preds = %121, %2
  %123 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %124 = icmp ne i32 (i8*)* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 %126(i8* %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %131 = call i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor* %130)
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(%struct.TYPE_5__*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local %struct.device* @chan2parent(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
