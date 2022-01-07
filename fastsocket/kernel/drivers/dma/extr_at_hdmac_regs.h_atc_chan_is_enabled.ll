; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac_regs.h_atc_chan_is_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac_regs.h_atc_chan_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.at_dma = type { i32 }

@CHSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at_dma_chan*)* @atc_chan_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_chan_is_enabled(%struct.at_dma_chan* %0) #0 {
  %2 = alloca %struct.at_dma_chan*, align 8
  %3 = alloca %struct.at_dma*, align 8
  store %struct.at_dma_chan* %0, %struct.at_dma_chan** %2, align 8
  %4 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.at_dma* @to_at_dma(i32 %7)
  store %struct.at_dma* %8, %struct.at_dma** %3, align 8
  %9 = load %struct.at_dma*, %struct.at_dma** %3, align 8
  %10 = load i32, i32* @CHSR, align 4
  %11 = call i32 @dma_readl(%struct.at_dma* %9, i32 %10)
  %12 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local %struct.at_dma* @to_at_dma(i32) #1

declare dso_local i32 @dma_readl(%struct.at_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
