; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_cyclic_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_cyclic_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dw_dma_chan = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_dma = type { i32 }

@CH_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_dma_cyclic_stop(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dw_dma_chan*, align 8
  %4 = alloca %struct.dw_dma*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan* %5)
  store %struct.dw_dma_chan* %6, %struct.dw_dma_chan** %3, align 8
  %7 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.dw_dma* @to_dw_dma(i32 %10)
  store %struct.dw_dma* %11, %struct.dw_dma** %4, align 8
  %12 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %16 = load i32, i32* @CH_EN, align 4
  %17 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @channel_clear_bit(%struct.dw_dma* %15, i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %30, %1
  %22 = load %struct.dw_dma*, %struct.dw_dma** %4, align 8
  %23 = load i32, i32* @CH_EN, align 4
  %24 = call i32 @dma_readl(%struct.dw_dma* %22, i32 %23)
  %25 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 (...) @cpu_relax()
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.dw_dma_chan*, %struct.dw_dma_chan** %3, align 8
  %34 = getelementptr inbounds %struct.dw_dma_chan, %struct.dw_dma_chan* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  ret void
}

declare dso_local %struct.dw_dma_chan* @to_dw_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.dw_dma* @to_dw_dma(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @channel_clear_bit(%struct.dw_dma*, i32, i32) #1

declare dso_local i32 @dma_readl(%struct.dw_dma*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
