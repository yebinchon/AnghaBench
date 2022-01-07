; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_client_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_client_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_m2p_client = type { %struct.m2p_channel* }
%struct.m2p_channel = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep93xx_dma_m2p_client_unregister(%struct.ep93xx_dma_m2p_client* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %3 = alloca %struct.m2p_channel*, align 8
  store %struct.ep93xx_dma_m2p_client* %0, %struct.ep93xx_dma_m2p_client** %2, align 8
  %4 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %2, align 8
  %5 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %4, i32 0, i32 0
  %6 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  store %struct.m2p_channel* %6, %struct.m2p_channel** %3, align 8
  %7 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %8 = call i32 @channel_disable(%struct.m2p_channel* %7)
  %9 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %10 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.m2p_channel* %12)
  %14 = load %struct.m2p_channel*, %struct.m2p_channel** %3, align 8
  %15 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  ret void
}

declare dso_local i32 @channel_disable(%struct.m2p_channel*) #1

declare dso_local i32 @free_irq(i32, %struct.m2p_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
