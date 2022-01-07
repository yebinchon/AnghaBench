; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_alloc_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_alloc_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_desc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dma_chan = type { i32 }
%struct.at_dma = type { i32 }

@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@atc_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.at_desc* (%struct.dma_chan*, i32)* @atc_alloc_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.at_desc* @atc_alloc_descriptor(%struct.dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at_desc*, align 8
  %6 = alloca %struct.at_dma*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.at_desc* null, %struct.at_desc** %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.at_dma* @to_at_dma(i32 %10)
  store %struct.at_dma* %11, %struct.at_dma** %6, align 8
  %12 = load %struct.at_dma*, %struct.at_dma** %6, align 8
  %13 = getelementptr inbounds %struct.at_dma, %struct.at_dma* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.at_desc* @dma_pool_alloc(i32 %14, i32 %15, i32* %7)
  store %struct.at_desc* %16, %struct.at_desc** %5, align 8
  %17 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  %18 = icmp ne %struct.at_desc* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  %21 = call i32 @memset(%struct.at_desc* %20, i32 0, i32 16)
  %22 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  %23 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  %26 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %25, i32 0, i32 0
  %27 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %28 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %26, %struct.dma_chan* %27)
  %29 = load i32, i32* @DMA_CTRL_ACK, align 4
  %30 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  %31 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @atc_tx_submit, align 4
  %34 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  %35 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  %39 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %41

41:                                               ; preds = %19, %2
  %42 = load %struct.at_desc*, %struct.at_desc** %5, align 8
  ret %struct.at_desc* %42
}

declare dso_local %struct.at_dma* @to_at_dma(i32) #1

declare dso_local %struct.at_desc* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.at_desc*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, %struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
