; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_unmap_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_unmap_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.skb_frame_desc = type { i32, i32 }

@SKBDESC_DMA_MAPPED_RX = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SKBDESC_DMA_MAPPED_TX = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00queue_unmap_skb(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.skb_frame_desc*, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %5 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %6 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %13 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__* %14)
  store %struct.skb_frame_desc* %15, %struct.skb_frame_desc** %4, align 8
  %16 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %17 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SKBDESC_DMA_MAPPED_RX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %25 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %28 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_unmap_single(%struct.device* %23, i32 %26, i32 %31, i32 %32)
  %34 = load i32, i32* @SKBDESC_DMA_MAPPED_RX, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %37 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %66

40:                                               ; preds = %1
  %41 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %42 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SKBDESC_DMA_MAPPED_TX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %50 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %53 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @dma_unmap_single(%struct.device* %48, i32 %51, i32 %56, i32 %57)
  %59 = load i32, i32* @SKBDESC_DMA_MAPPED_TX, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %62 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %47, %40
  br label %66

66:                                               ; preds = %65, %22
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
