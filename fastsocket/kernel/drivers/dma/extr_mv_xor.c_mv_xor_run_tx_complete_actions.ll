; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_run_tx_complete_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_mv_xor.c_mv_xor_run_tx_complete_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_desc_slot = type { i32, i32, %struct.TYPE_6__, %struct.mv_xor_desc_slot* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 (i32)* }
%struct.mv_xor_chan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@DMA_COMPL_SKIP_DEST_UNMAP = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_COMPL_SKIP_SRC_UNMAP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mv_xor_desc_slot*, %struct.mv_xor_chan*, i64)* @mv_xor_run_tx_complete_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mv_xor_run_tx_complete_actions(%struct.mv_xor_desc_slot* %0, %struct.mv_xor_chan* %1, i64 %2) #0 {
  %4 = alloca %struct.mv_xor_desc_slot*, align 8
  %5 = alloca %struct.mv_xor_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mv_xor_desc_slot*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mv_xor_desc_slot* %0, %struct.mv_xor_desc_slot** %4, align 8
  store %struct.mv_xor_chan* %1, %struct.mv_xor_chan** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %16 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %23 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %125

27:                                               ; preds = %3
  %28 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %29 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %33 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = icmp ne i32 (i32)* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %39 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %43 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %41(i32 %45)
  br label %47

47:                                               ; preds = %37, %27
  %48 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %49 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %48, i32 0, i32 3
  %50 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %49, align 8
  %51 = icmp ne %struct.mv_xor_desc_slot* %50, null
  br i1 %51, label %52, label %124

52:                                               ; preds = %47
  %53 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %54 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %124

57:                                               ; preds = %52
  %58 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %59 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %58, i32 0, i32 3
  %60 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %59, align 8
  store %struct.mv_xor_desc_slot* %60, %struct.mv_xor_desc_slot** %7, align 8
  %61 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %5, align 8
  %62 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store %struct.device* %66, %struct.device** %8, align 8
  %67 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %68 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  %70 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %71 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  %74 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %75 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %78 = call i64 @mv_desc_get_dest_addr(%struct.mv_xor_desc_slot* %77)
  store i64 %78, i64* %13, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @DMA_COMPL_SKIP_DEST_UNMAP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %57
  %84 = load i32, i32* %11, align 4
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %87, i32* %14, align 4
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = load %struct.device*, %struct.device** %8, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @dma_unmap_page(%struct.device* %91, i64 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %57
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @DMA_COMPL_SKIP_SRC_UNMAP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %114, %113, %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %11, align 4
  %105 = icmp ne i32 %103, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i64 @mv_desc_get_src_addr(%struct.mv_xor_desc_slot* %107, i32 %108)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %102

114:                                              ; preds = %106
  %115 = load %struct.device*, %struct.device** %8, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @DMA_TO_DEVICE, align 4
  %119 = call i32 @dma_unmap_page(%struct.device* %115, i64 %116, i32 %117, i32 %118)
  br label %102

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120, %96
  %122 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %123 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %122, i32 0, i32 3
  store %struct.mv_xor_desc_slot* null, %struct.mv_xor_desc_slot** %123, align 8
  br label %124

124:                                              ; preds = %121, %52, %47
  br label %125

125:                                              ; preds = %124, %3
  %126 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %4, align 8
  %127 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %126, i32 0, i32 2
  %128 = call i32 @dma_run_dependencies(%struct.TYPE_6__* %127)
  %129 = load i64, i64* %6, align 8
  ret i64 %129
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @mv_desc_get_dest_addr(%struct.mv_xor_desc_slot*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i64 @mv_desc_get_src_addr(%struct.mv_xor_desc_slot*, i32) #1

declare dso_local i32 @dma_run_dependencies(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
