; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_append_ld_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_append_ld_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.fsl_desc_sw = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FSL_DMA_EOSIE = common dso_local global i32 0, align 4
@FSL_DMA_IP_MASK = common dso_local global i32 0, align 4
@FSL_DMA_IP_83XX = common dso_local global i32 0, align 4
@FSL_DMA_SNEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_chan*, %struct.fsl_desc_sw*)* @append_ld_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_ld_queue(%struct.fsl_dma_chan* %0, %struct.fsl_desc_sw* %1) #0 {
  %3 = alloca %struct.fsl_dma_chan*, align 8
  %4 = alloca %struct.fsl_desc_sw*, align 8
  %5 = alloca %struct.fsl_desc_sw*, align 8
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %3, align 8
  store %struct.fsl_desc_sw* %1, %struct.fsl_desc_sw** %4, align 8
  %6 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fsl_desc_sw* @to_fsl_desc(i32 %9)
  store %struct.fsl_desc_sw* %10, %struct.fsl_desc_sw** %5, align 8
  %11 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %11, i32 0, i32 1
  %13 = call i64 @list_empty(%struct.TYPE_6__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %18 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FSL_DMA_EOSIE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FSL_DMA_IP_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @FSL_DMA_IP_83XX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i32, i32* @FSL_DMA_SNEN, align 4
  br label %34

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = or i32 %23, %35
  %37 = call i32 @CPU_TO_DMA(%struct.fsl_dma_chan* %17, i32 %36, i32 64)
  %38 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %5, align 8
  %39 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %15
  ret void
}

declare dso_local %struct.fsl_desc_sw* @to_fsl_desc(i32) #1

declare dso_local i64 @list_empty(%struct.TYPE_6__*) #1

declare dso_local i32 @CPU_TO_DMA(%struct.fsl_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
