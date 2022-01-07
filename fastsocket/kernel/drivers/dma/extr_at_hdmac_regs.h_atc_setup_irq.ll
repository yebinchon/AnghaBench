; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac_regs.h_atc_setup_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac_regs.h_atc_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.at_dma = type { i32 }

@EBCIER = common dso_local global i32 0, align 4
@EBCIDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_dma_chan*, i32)* @atc_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_setup_irq(%struct.at_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.at_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.at_dma_chan* %0, %struct.at_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.at_dma* @to_at_dma(i32 %10)
  store %struct.at_dma* %11, %struct.at_dma** %5, align 8
  %12 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AT_DMA_CBTC(i32 %15)
  %17 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @AT_DMA_ERR(i32 %20)
  %22 = or i32 %16, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %27 = load i32, i32* @EBCIER, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dma_writel(%struct.at_dma* %26, i32 %27, i32 %28)
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.at_dma*, %struct.at_dma** %5, align 8
  %32 = load i32, i32* @EBCIDR, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dma_writel(%struct.at_dma* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  ret void
}

declare dso_local %struct.at_dma* @to_at_dma(i32) #1

declare dso_local i32 @AT_DMA_CBTC(i32) #1

declare dso_local i32 @AT_DMA_ERR(i32) #1

declare dso_local i32 @dma_writel(%struct.at_dma*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
