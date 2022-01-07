; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_submit_recursive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_dma-m2p.c_ep93xx_dma_m2p_submit_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_m2p_client = type { %struct.m2p_channel* }
%struct.m2p_channel = type { i32 }
%struct.ep93xx_dma_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ep93xx_dma_m2p_submit_recursive(%struct.ep93xx_dma_m2p_client* %0, %struct.ep93xx_dma_buffer* %1) #0 {
  %3 = alloca %struct.ep93xx_dma_m2p_client*, align 8
  %4 = alloca %struct.ep93xx_dma_buffer*, align 8
  %5 = alloca %struct.m2p_channel*, align 8
  store %struct.ep93xx_dma_m2p_client* %0, %struct.ep93xx_dma_m2p_client** %3, align 8
  store %struct.ep93xx_dma_buffer* %1, %struct.ep93xx_dma_buffer** %4, align 8
  %6 = load %struct.ep93xx_dma_m2p_client*, %struct.ep93xx_dma_m2p_client** %3, align 8
  %7 = getelementptr inbounds %struct.ep93xx_dma_m2p_client, %struct.ep93xx_dma_m2p_client* %6, i32 0, i32 0
  %8 = load %struct.m2p_channel*, %struct.m2p_channel** %7, align 8
  store %struct.m2p_channel* %8, %struct.m2p_channel** %5, align 8
  %9 = load %struct.ep93xx_dma_buffer*, %struct.ep93xx_dma_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.ep93xx_dma_buffer, %struct.ep93xx_dma_buffer* %9, i32 0, i32 0
  %11 = load %struct.m2p_channel*, %struct.m2p_channel** %5, align 8
  %12 = getelementptr inbounds %struct.m2p_channel, %struct.m2p_channel* %11, i32 0, i32 0
  %13 = call i32 @list_add_tail(i32* %10, i32* %12)
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
