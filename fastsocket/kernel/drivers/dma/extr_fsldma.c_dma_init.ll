; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_DMA_IP_MASK = common dso_local global i32 0, align 4
@FSL_DMA_MR_EIE = common dso_local global i32 0, align 4
@FSL_DMA_MR_EOLNIE = common dso_local global i32 0, align 4
@FSL_DMA_MR_EOSIE = common dso_local global i32 0, align 4
@FSL_DMA_MR_EOTIE = common dso_local global i32 0, align 4
@FSL_DMA_MR_PRC_RM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_chan*)* @dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_init(%struct.fsl_dma_chan* %0) #0 {
  %2 = alloca %struct.fsl_dma_chan*, align 8
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %2, align 8
  %3 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %4 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %3, i32* %7, i32 0, i32 32)
  %9 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FSL_DMA_IP_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %36 [
    i32 128, label %14
    i32 129, label %26
  ]

14:                                               ; preds = %1
  %15 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %16 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* @FSL_DMA_MR_EIE, align 4
  %21 = load i32, i32* @FSL_DMA_MR_EOLNIE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FSL_DMA_MR_EOSIE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %15, i32* %19, i32 %24, i32 32)
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %28 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @FSL_DMA_MR_EOTIE, align 4
  %33 = load i32, i32* @FSL_DMA_MR_PRC_RM, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %27, i32* %31, i32 %34, i32 32)
  br label %36

36:                                               ; preds = %1, %26, %14
  ret void
}

declare dso_local i32 @DMA_OUT(%struct.fsl_dma_chan*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
