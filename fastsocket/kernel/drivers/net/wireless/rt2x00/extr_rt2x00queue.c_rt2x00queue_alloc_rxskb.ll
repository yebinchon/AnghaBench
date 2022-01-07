; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_rxskb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_alloc_rxskb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.queue_entry = type { %struct.data_queue* }
%struct.data_queue = type { i32, i32, i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32 }
%struct.skb_frame_desc = type { i32, i32, %struct.queue_entry* }

@CAPABILITY_HW_CRYPTO = common dso_local global i32 0, align 4
@REQUIRE_DMA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SKBDESC_DMA_MAPPED_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @rt2x00queue_alloc_rxskb(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.data_queue*, align 8
  %7 = alloca %struct.rt2x00_dev*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.skb_frame_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 0
  %16 = load %struct.data_queue*, %struct.data_queue** %15, align 8
  store %struct.data_queue* %16, %struct.data_queue** %6, align 8
  %17 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %18 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %17, i32 0, i32 3
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %18, align 8
  store %struct.rt2x00_dev* %19, %struct.rt2x00_dev** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %21 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %24 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %22, %25
  %27 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %28 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %26, %29
  store i32 %30, i32* %10, align 4
  store i32 4, i32* %11, align 4
  %31 = load i32, i32* @CAPABILITY_HW_CRYPTO, align 4
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 8
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add i32 %39, 8
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %36, %2
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.sk_buff* @__dev_alloc_skb(i32 %46, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %8, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %104

52:                                               ; preds = %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @skb_reserve(%struct.sk_buff* %53, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @skb_put(%struct.sk_buff* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff* %59)
  store %struct.skb_frame_desc* %60, %struct.skb_frame_desc** %9, align 8
  %61 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %62 = call i32 @memset(%struct.skb_frame_desc* %61, i32 0, i32 16)
  %63 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %64 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %65 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %64, i32 0, i32 2
  store %struct.queue_entry* %63, %struct.queue_entry** %65, align 8
  %66 = load i32, i32* @REQUIRE_DMA, align 4
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %67, i32 0, i32 1
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %52
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %73 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %82 = call i32 @dma_map_single(i32 %74, i32 %77, i32 %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %7, align 8
  %84 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @dma_mapping_error(i32 %85, i32 %86)
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %71
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %91)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %104

93:                                               ; preds = %71
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %96 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @SKBDESC_DMA_MAPPED_RX, align 4
  %98 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %9, align 8
  %99 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %93, %52
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %3, align 8
  br label %104

104:                                              ; preds = %102, %90, %51
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %105
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_frame_desc*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
