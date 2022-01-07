; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_dma_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_dma_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dma_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_DMA_MR_CA = common dso_local global i32 0, align 4
@FSL_DMA_MR_CS = common dso_local global i32 0, align 4
@FSL_DMA_MR_EMS_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA halt timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_dma_chan*)* @dma_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_halt(%struct.fsl_dma_chan* %0) #0 {
  %2 = alloca %struct.fsl_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %2, align 8
  %4 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %5 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %10 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @DMA_IN(%struct.fsl_dma_chan* %9, i32* %13, i32 32)
  %15 = load i32, i32* @FSL_DMA_MR_CA, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %4, i32* %8, i32 %16, i32 32)
  %18 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %19 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %24 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @DMA_IN(%struct.fsl_dma_chan* %23, i32* %27, i32 32)
  %29 = load i32, i32* @FSL_DMA_MR_CS, align 4
  %30 = load i32, i32* @FSL_DMA_MR_EMS_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FSL_DMA_MR_CA, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %28, %34
  %36 = call i32 @DMA_OUT(%struct.fsl_dma_chan* %18, i32* %22, i32 %35, i32 32)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %47, %1
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %42 = call i64 @dma_is_idle(%struct.fsl_dma_chan* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %50

45:                                               ; preds = %40
  %46 = call i32 @udelay(i32 10)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %37

50:                                               ; preds = %44, %37
  %51 = load i32, i32* %3, align 4
  %52 = icmp sge i32 %51, 100
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %55 = call i64 @dma_is_idle(%struct.fsl_dma_chan* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %59 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %57, %53, %50
  ret void
}

declare dso_local i32 @DMA_OUT(%struct.fsl_dma_chan*, i32*, i32, i32) #1

declare dso_local i32 @DMA_IN(%struct.fsl_dma_chan*, i32*, i32) #1

declare dso_local i64 @dma_is_idle(%struct.fsl_dma_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
