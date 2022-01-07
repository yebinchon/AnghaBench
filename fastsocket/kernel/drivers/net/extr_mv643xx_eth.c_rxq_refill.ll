; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_refill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_rxq_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_queue = type { i64, i64, i64, i32, %struct.sk_buff**, %struct.rx_desc* }
%struct.sk_buff = type { i32 }
%struct.rx_desc = type { i32, i32, i32 }
%struct.mv643xx_eth_private = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SKB_DMA_REALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@RX_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_queue*, i32)* @rxq_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_refill(%struct.rx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.rx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv643xx_eth_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_desc*, align 8
  store %struct.rx_queue* %0, %struct.rx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %11 = call %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue* %10)
  store %struct.mv643xx_eth_private* %11, %struct.mv643xx_eth_private** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %72, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %18 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %21 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br label %24

24:                                               ; preds = %16, %12
  %25 = phi i1 [ false, %12 ], [ %23, %16 ]
  br i1 %25, label %26, label %116

26:                                               ; preds = %24
  %27 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %28 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %27, i32 0, i32 4
  %29 = call %struct.sk_buff* @__skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = icmp eq %struct.sk_buff* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %34 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.sk_buff* @dev_alloc_skb(i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = icmp eq %struct.sk_buff* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %42 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %131

43:                                               ; preds = %37
  %44 = load i32, i32* @SKB_DMA_REALIGN, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i32, i32* @SKB_DMA_REALIGN, align 4
  %49 = call i32 @skb_reserve(%struct.sk_buff* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %54 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %58 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = trunc i64 %59 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %63 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %66 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %71 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %50
  %73 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %74 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %73, i32 0, i32 5
  %75 = load %struct.rx_desc*, %struct.rx_desc** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %75, i64 %77
  store %struct.rx_desc* %78, %struct.rx_desc** %9, align 8
  %79 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %80 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %89 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %92 = call i32 @dma_map_single(i32 %84, i32 %87, i32 %90, i32 %91)
  %93 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %94 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %96 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %99 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %102 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %101, i32 0, i32 4
  %103 = load %struct.sk_buff**, %struct.sk_buff*** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %103, i64 %105
  store %struct.sk_buff* %100, %struct.sk_buff** %106, align 8
  %107 = call i32 (...) @wmb()
  %108 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %109 = load i32, i32* @RX_ENABLE_INTERRUPT, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %112 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = call i32 (...) @wmb()
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = call i32 @skb_reserve(%struct.sk_buff* %114, i32 2)
  br label %12

116:                                              ; preds = %24
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %122 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = shl i32 1, %123
  %125 = xor i32 %124, -1
  %126 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %127 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %120, %116
  br label %131

131:                                              ; preds = %130, %40
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
