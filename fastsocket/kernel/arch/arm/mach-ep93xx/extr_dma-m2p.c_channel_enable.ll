; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_channel_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_channel_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m2p_channel = type { i64, i32, %struct.ep93xx_dma_m2p_client* }
%struct.ep93xx_dma_m2p_client = type { i32 }

@EP93XX_DMA_M2P_PORT_MASK = common dso_local global i32 0, align 4
@M2P_PPALLOC = common dso_local global i64 0, align 8
@EP93XX_DMA_M2P_ERROR_MASK = common dso_local global i32 0, align 4
@M2P_CONTROL_ENABLE = common dso_local global i32 0, align 4
@M2P_CONTROL_ERROR_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m2p_channel*)* @channel_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_enable(%struct.m2p_channel* %0) #0 {
  %2 = alloca %struct.m2p_channel*, align 8
  %3 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %4 = alloca i32, align 4
  store %struct.m2p_channel* %0, %struct.m2p_channel** %2, align 8
  %5 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %6 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %5, i32 0, i32 2
  %7 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %6, align 8
  store %struct.ep93xx_dma_m2p_client* %7, %struct.ep93xx_dma_m2p_client** %3, align 8
  %8 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %9 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_enable(i32 %10)
  %12 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %13 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EP93XX_DMA_M2P_PORT_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %19 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @M2P_PPALLOC, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %25 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EP93XX_DMA_M2P_ERROR_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @M2P_CONTROL_ENABLE, align 4
  %30 = load i32, i32* @M2P_CONTROL_ERROR_IRQ_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.m2p_channel*, %struct.m2p_channel** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @m2p_set_control(%struct.m2p_channel* %34, i32 %35)
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @m2p_set_control(%struct.m2p_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
