; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_chan_set_request_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_chan_set_request_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_chan*, i32)* @fsl_chan_set_request_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_chan_set_request_count(%struct.fsl_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 1024
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %10 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %15 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @DMA_IN(%struct.fsl_dma_chan* %14, i32* %18, i32 32)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @__ilog2(i32 %20)
  %22 = shl i32 %21, 24
  %23 = and i32 %22, 251658240
  %24 = or i32 %19, %23
  %25 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %9, i32* %13, i32 %24, i32 32)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DMA_OUT(%struct.fsl_dma_chan*, i32*, i32, i32) #1

declare dso_local i32 @DMA_IN(%struct.fsl_dma_chan*, i32*, i32) #1

declare dso_local i32 @__ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
