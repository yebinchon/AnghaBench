; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_dma.c_frv_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frv_dma_channel = type { i32, i32 }

@frv_dma_channels = common dso_local global %struct.frv_dma_channel* null, align 8
@frv_dma_channels_lock = common dso_local global i32 0, align 4
@FRV_DMA_FLAGS_INUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frv_dma_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frv_dma_channel*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** @frv_dma_channels, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.frv_dma_channel, %struct.frv_dma_channel* %5, i64 %7
  store %struct.frv_dma_channel* %8, %struct.frv_dma_channel** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @write_lock_irqsave(i32* @frv_dma_channels_lock, i64 %9)
  %11 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** %3, align 8
  %12 = getelementptr inbounds %struct.frv_dma_channel, %struct.frv_dma_channel* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.frv_dma_channel* %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @frv_dma_stop(i32 %16)
  %18 = load i32, i32* @FRV_DMA_FLAGS_INUSE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.frv_dma_channel*, %struct.frv_dma_channel** %3, align 8
  %21 = getelementptr inbounds %struct.frv_dma_channel, %struct.frv_dma_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @write_unlock_irqrestore(i32* @frv_dma_channels_lock, i64 %24)
  ret void
}

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.frv_dma_channel*) #1

declare dso_local i32 @frv_dma_stop(i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
