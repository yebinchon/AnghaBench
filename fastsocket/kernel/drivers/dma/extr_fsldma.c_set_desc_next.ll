; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_set_desc_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_set_desc_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { i32 }
%struct.fsl_dma_ld_hw = type { i32 }

@FSL_DMA_IP_MASK = common dso_local global i32 0, align 4
@FSL_DMA_IP_83XX = common dso_local global i32 0, align 4
@FSL_DMA_SNEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_chan*, %struct.fsl_dma_ld_hw*, i32)* @set_desc_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_desc_next(%struct.fsl_dma_chan* %0, %struct.fsl_dma_ld_hw* %1, i32 %2) #0 {
  %4 = alloca %struct.fsl_dma_chan*, align 8
  %5 = alloca %struct.fsl_dma_ld_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %4, align 8
  store %struct.fsl_dma_ld_hw* %1, %struct.fsl_dma_ld_hw** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %9 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FSL_DMA_IP_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @FSL_DMA_IP_83XX, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @FSL_DMA_SNEN, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @CPU_TO_DMA(%struct.fsl_dma_chan* %20, i32 %23, i32 64)
  %25 = load %struct.fsl_dma_ld_hw*, %struct.fsl_dma_ld_hw** %5, align 8
  %26 = getelementptr inbounds %struct.fsl_dma_ld_hw, %struct.fsl_dma_ld_hw* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @CPU_TO_DMA(%struct.fsl_dma_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
