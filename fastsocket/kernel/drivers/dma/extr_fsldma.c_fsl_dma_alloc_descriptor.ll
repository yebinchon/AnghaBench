; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_alloc_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_fsldma.c_fsl_dma_alloc_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_desc_sw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fsl_dma_chan = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@fsl_dma_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsl_desc_sw* (%struct.fsl_dma_chan*)* @fsl_dma_alloc_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsl_desc_sw* @fsl_dma_alloc_descriptor(%struct.fsl_dma_chan* %0) #0 {
  %2 = alloca %struct.fsl_dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_desc_sw*, align 8
  store %struct.fsl_dma_chan* %0, %struct.fsl_dma_chan** %2, align 8
  %5 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.fsl_desc_sw* @dma_pool_alloc(i32 %7, i32 %8, i32* %3)
  store %struct.fsl_desc_sw* %9, %struct.fsl_desc_sw** %4, align 8
  %10 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %11 = icmp ne %struct.fsl_desc_sw* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %14 = call i32 @memset(%struct.fsl_desc_sw* %13, i32 0, i32 12)
  %15 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %18, i32 0, i32 0
  %20 = load %struct.fsl_dma_chan*, %struct.fsl_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.fsl_dma_chan, %struct.fsl_dma_chan* %20, i32 0, i32 0
  %22 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %19, i32* %21)
  %23 = load i32, i32* @fsl_dma_tx_submit, align 4
  %24 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %25 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  %29 = getelementptr inbounds %struct.fsl_desc_sw, %struct.fsl_desc_sw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %12, %1
  %32 = load %struct.fsl_desc_sw*, %struct.fsl_desc_sw** %4, align 8
  ret %struct.fsl_desc_sw* %32
}

declare dso_local %struct.fsl_desc_sw* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.fsl_desc_sw*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
