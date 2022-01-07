; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_map_txskb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_map_txskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.skb_frame_desc = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SKBDESC_DMA_MAPPED_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00queue_map_txskb(%struct.queue_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  %6 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %7 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %14 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__* %15)
  store %struct.skb_frame_desc* %16, %struct.skb_frame_desc** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %19 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %24 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @dma_map_single(%struct.device* %17, i32 %22, i32 %27, i32 %28)
  %30 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %31 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %34 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_mapping_error(%struct.device* %32, i32 %35)
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @SKBDESC_DMA_MAPPED_TX, align 4
  %44 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %45 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
