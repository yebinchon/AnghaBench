; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_txx9dmac.c_txx9dmac_descriptor_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_txx9dmac.c_txx9dmac_descriptor_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_chan = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.txx9dmac_slave* }
%struct.txx9dmac_slave = type { i32 }
%struct.txx9dmac_desc = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.dma_async_tx_descriptor }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i8*, i32 (i8*)*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"descriptor %u %p complete\0A\00", align 1
@DMA_COMPL_SKIP_DEST_UNMAP = common dso_local global i32 0, align 4
@DMA_COMPL_DEST_UNMAP_SINGLE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_COMPL_SKIP_SRC_UNMAP = common dso_local global i32 0, align 4
@DMA_COMPL_SRC_UNMAP_SINGLE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_chan*, %struct.txx9dmac_desc*)* @txx9dmac_descriptor_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_descriptor_complete(%struct.txx9dmac_chan* %0, %struct.txx9dmac_desc* %1) #0 {
  %3 = alloca %struct.txx9dmac_chan*, align 8
  %4 = alloca %struct.txx9dmac_desc*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.txx9dmac_slave*, align 8
  %9 = alloca i32, align 4
  store %struct.txx9dmac_chan* %0, %struct.txx9dmac_chan** %3, align 8
  store %struct.txx9dmac_desc* %1, %struct.txx9dmac_desc** %4, align 8
  %10 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %11 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %10, i32 0, i32 5
  store %struct.dma_async_tx_descriptor* %11, %struct.dma_async_tx_descriptor** %7, align 8
  %12 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %13 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %14, align 8
  store %struct.txx9dmac_slave* %15, %struct.txx9dmac_slave** %8, align 8
  %16 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %17 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %16, i32 0, i32 0
  %18 = call i32 @chan2dev(%struct.TYPE_7__* %17)
  %19 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %23 = call i32 @dev_vdbg(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.txx9dmac_desc* %22)
  %24 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %25 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %28 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %30 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %29, i32 0, i32 2
  %31 = load i32 (i8*)*, i32 (i8*)** %30, align 8
  store i32 (i8*)* %31, i32 (i8*)** %5, align 8
  %32 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %33 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %36 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %37 = call i32 @txx9dmac_sync_desc_for_cpu(%struct.txx9dmac_chan* %35, %struct.txx9dmac_desc* %36)
  %38 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %39 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %38, i32 0, i32 4
  %40 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %41 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %40, i32 0, i32 1
  %42 = call i32 @list_splice_init(i32* %39, i32* %41)
  %43 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %44 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %43, i32 0, i32 3
  %45 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %46 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %45, i32 0, i32 1
  %47 = call i32 @list_move(i32* %44, i32* %46)
  %48 = load %struct.txx9dmac_slave*, %struct.txx9dmac_slave** %8, align 8
  %49 = icmp ne %struct.txx9dmac_slave* %48, null
  br i1 %49, label %151, label %50

50:                                               ; preds = %2
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %52 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DMA_COMPL_SKIP_DEST_UNMAP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %100, label %57

57:                                               ; preds = %50
  %58 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %59 = call i64 @is_dmac64(%struct.txx9dmac_chan* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %63 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  br label %71

66:                                               ; preds = %57
  %67 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %68 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i32 [ %65, %61 ], [ %70, %66 ]
  store i32 %72, i32* %9, align 4
  %73 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %74 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DMA_COMPL_DEST_UNMAP_SINGLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %81 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %80, i32 0, i32 0
  %82 = call i32 @chan2parent(%struct.TYPE_7__* %81)
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %85 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %88 = call i32 @dma_unmap_single(i32 %82, i32 %83, i32 %86, i32 %87)
  br label %99

89:                                               ; preds = %71
  %90 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %91 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %90, i32 0, i32 0
  %92 = call i32 @chan2parent(%struct.TYPE_7__* %91)
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %95 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %98 = call i32 @dma_unmap_page(i32 %92, i32 %93, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %79
  br label %100

100:                                              ; preds = %99, %50
  %101 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DMA_COMPL_SKIP_SRC_UNMAP, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %150, label %107

107:                                              ; preds = %100
  %108 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %109 = call i64 @is_dmac64(%struct.txx9dmac_chan* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %113 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  br label %121

116:                                              ; preds = %107
  %117 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %118 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i32 [ %115, %111 ], [ %120, %116 ]
  store i32 %122, i32* %9, align 4
  %123 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %124 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DMA_COMPL_SRC_UNMAP_SINGLE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %121
  %130 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %131 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %130, i32 0, i32 0
  %132 = call i32 @chan2parent(%struct.TYPE_7__* %131)
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %135 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @DMA_TO_DEVICE, align 4
  %138 = call i32 @dma_unmap_single(i32 %132, i32 %133, i32 %136, i32 %137)
  br label %149

139:                                              ; preds = %121
  %140 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %141 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %140, i32 0, i32 0
  %142 = call i32 @chan2parent(%struct.TYPE_7__* %141)
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %145 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @DMA_TO_DEVICE, align 4
  %148 = call i32 @dma_unmap_page(i32 %142, i32 %143, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %139, %129
  br label %150

150:                                              ; preds = %149, %100
  br label %151

151:                                              ; preds = %150, %2
  %152 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %153 = icmp ne i32 (i8*)* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 %155(i8* %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %160 = call i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor* %159)
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.txx9dmac_desc*) #1

declare dso_local i32 @chan2dev(%struct.TYPE_7__*) #1

declare dso_local i32 @txx9dmac_sync_desc_for_cpu(%struct.txx9dmac_chan*, %struct.txx9dmac_desc*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i64 @is_dmac64(%struct.txx9dmac_chan*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @chan2parent(%struct.TYPE_7__*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
