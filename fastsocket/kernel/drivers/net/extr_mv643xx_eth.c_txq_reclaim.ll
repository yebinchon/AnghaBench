; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i32, i64, i32, i32, i32, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i32 }
%struct.mv643xx_eth_private = type { i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.sk_buff = type { i32 }

@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@TX_LAST_DESC = common dso_local global i32 0, align 4
@ERROR_SUMMARY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tx error\0A\00", align 1
@TX_FIRST_DESC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_queue*, i32, i32)* @txq_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_reclaim(%struct.tx_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv643xx_eth_private*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tx_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.tx_queue* %0, %struct.tx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %15 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %14)
  store %struct.mv643xx_eth_private* %15, %struct.mv643xx_eth_private** %7, align 8
  %16 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %17 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %16, i32 0, i32 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %20 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_5__* %18, i32 %21)
  store %struct.netdev_queue* %22, %struct.netdev_queue** %8, align 8
  %23 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %24 = call i32 (...) @smp_processor_id()
  %25 = call i32 @__netif_tx_lock(%struct.netdev_queue* %23, i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %176, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %32 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i1 [ false, %26 ], [ %34, %30 ]
  br i1 %36, label %37, label %177

37:                                               ; preds = %35
  %38 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %39 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %41, i32 0, i32 5
  %43 = load %struct.tx_desc*, %struct.tx_desc** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %43, i64 %45
  store %struct.tx_desc* %46, %struct.tx_desc** %11, align 8
  %47 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %48 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %177

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %64 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %37
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %69 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %71 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %74 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %79 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %65
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %84 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, -1
  store i64 %86, i64* %84, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @TX_LAST_DESC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %93 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %92, i32 0, i32 4
  %94 = call %struct.sk_buff* @__skb_dequeue(i32* %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %13, align 8
  br label %95

95:                                               ; preds = %91, %80
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @ERROR_SUMMARY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load i32, i32* @KERN_INFO, align 4
  %102 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %103 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %102, i32 0, i32 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @dev_printk(i32 %101, %struct.TYPE_6__* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %108 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %107, i32 0, i32 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %100, %95
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @TX_FIRST_DESC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %121 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %120, i32 0, i32 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %127 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %130 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @dma_unmap_single(i32 %125, i32 %128, i32 %131, i32 %132)
  br label %149

134:                                              ; preds = %114
  %135 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %136 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %135, i32 0, i32 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %142 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %145 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DMA_TO_DEVICE, align 4
  %148 = call i32 @dma_unmap_page(i32 %140, i32 %143, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %134, %119
  %150 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %151 = icmp ne %struct.sk_buff* %150, null
  br i1 %151, label %152, label %176

152:                                              ; preds = %149
  %153 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %154 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %153, i32 0, i32 2
  %155 = call i64 @skb_queue_len(i32* %154)
  %156 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %157 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %152
  %161 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %162 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %163 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @skb_recycle_check(%struct.sk_buff* %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %160
  %168 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %169 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %168, i32 0, i32 2
  %170 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %171 = call i32 @__skb_queue_head(i32* %169, %struct.sk_buff* %170)
  br label %175

172:                                              ; preds = %160, %152
  %173 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %174 = call i32 @dev_kfree_skb(%struct.sk_buff* %173)
  br label %175

175:                                              ; preds = %172, %167
  br label %176

176:                                              ; preds = %175, %149
  br label %26

177:                                              ; preds = %57, %35
  %178 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %179 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %178)
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %185 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 1, %186
  %188 = xor i32 %187, -1
  %189 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %7, align 8
  %190 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %183, %177
  %194 = load i32, i32* %9, align 4
  ret i32 %194
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @dev_printk(i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @skb_recycle_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
