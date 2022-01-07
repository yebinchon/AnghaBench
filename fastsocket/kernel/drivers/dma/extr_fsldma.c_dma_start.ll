; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_dma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@FSL_DMA_CHAN_PAUSE_EXT = common dso_local global i32 0, align 4
@FSL_DMA_MR_EMP_EN = common dso_local global i32 0, align 4
@FSL_DMA_IP_MASK = common dso_local global i32 0, align 4
@FSL_DMA_IP_85XX = common dso_local global i32 0, align 4
@FSL_DMA_CHAN_START_EXT = common dso_local global i32 0, align 4
@FSL_DMA_MR_EMS_EN = common dso_local global i32 0, align 4
@FSL_DMA_MR_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_chan*)* @dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_start(%struct.fsl_dma_chan* %0) #0 {
  %2 = alloca %struct.fsl_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @FSL_DMA_CHAN_PAUSE_EXT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %12 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %11, i32* %15, i32 0, i32 32)
  %17 = load i32, i32* @FSL_DMA_MR_EMP_EN, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FSL_DMA_IP_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @FSL_DMA_IP_85XX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %30 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %35 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %36 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @DMA_IN(%struct.fsl_dma_chan* %34, i32* %38, i32 32)
  %40 = load i32, i32* @FSL_DMA_MR_EMP_EN, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %29, i32* %33, i32 %42, i32 32)
  br label %44

44:                                               ; preds = %28, %20
  br label %45

45:                                               ; preds = %44, %10
  %46 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %47 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FSL_DMA_CHAN_START_EXT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @FSL_DMA_MR_EMS_EN, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @FSL_DMA_MR_CS, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %62 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %63 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %67 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %68 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @DMA_IN(%struct.fsl_dma_chan* %66, i32* %70, i32 32)
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %61, i32* %65, i32 %73, i32 32)
  ret void
}

declare dso_local i32 @DMA_OUT(%struct.fsl_dma_chan*, i32*, i32, i32) #1

declare dso_local i32 @DMA_IN(%struct.fsl_dma_chan*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
