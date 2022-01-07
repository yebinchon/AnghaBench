; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_tx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, %struct.TYPE_3__*, i32, %struct.bnx2_napi* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_tx_ring_info }
%struct.bnx2_tx_ring_info = type { i64, i64, %struct.bnx2_sw_tx_bd* }
%struct.bnx2_sw_tx_bd = type { i64, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_4__ = type { i32* }

@BNX2_MAX_TX_DESC_CNT = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_napi*, i32)* @bnx2_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_tx_int(%struct.bnx2* %0, %struct.bnx2_napi* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca %struct.bnx2_napi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2_tx_ring_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.netdev_queue*, align 8
  %14 = alloca %struct.bnx2_sw_tx_bd*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.bnx2_sw_tx_bd*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store %struct.bnx2_napi* %1, %struct.bnx2_napi** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %21, i32 0, i32 0
  store %struct.bnx2_tx_ring_info* %22, %struct.bnx2_tx_ring_info** %7, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %24 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 3
  %26 = load %struct.bnx2_napi*, %struct.bnx2_napi** %25, align 8
  %27 = ptrtoint %struct.bnx2_napi* %23 to i64
  %28 = ptrtoint %struct.bnx2_napi* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 24
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %34, i32 %35)
  store %struct.netdev_queue* %36, %struct.netdev_queue** %13, align 8
  %37 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %38 = call i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi* %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %40 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %162, %3
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %163

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @BNX2_TX_RING_IDX(i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %50 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %49, i32 0, i32 2
  %51 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %51, i64 %52
  store %struct.bnx2_sw_tx_bd* %53, %struct.bnx2_sw_tx_bd** %14, align 8
  %54 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %14, align 8
  %55 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %54, i32 0, i32 1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %15, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = call i32 @prefetch(i32* %58)
  %60 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %14, align 8
  %61 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %46
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %14, align 8
  %67 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %18, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %14, align 8
  %73 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %19, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* @BNX2_MAX_TX_DESC_CNT, align 8
  %79 = icmp sge i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %64
  %84 = load i64, i64* %18, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %18, align 8
  br label %86

86:                                               ; preds = %83, %64
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %87, %88
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %163

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %46
  %94 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %95 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %14, align 8
  %99 = load i32, i32* @mapping, align 4
  %100 = call i32 @pci_unmap_addr(%struct.bnx2_sw_tx_bd* %98, i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %102 = call i32 @skb_headlen(%struct.sk_buff* %101)
  %103 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %104 = call i32 @dma_unmap_single(i32* %97, i32 %100, i32 %102, i32 %103)
  %105 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %14, align 8
  %106 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %105, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %106, align 8
  %107 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %14, align 8
  %108 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %141, %93
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %111
  %116 = load i64, i64* %9, align 8
  %117 = call i64 @BNX2_NEXT_TX_BD(i64 %116)
  store i64 %117, i64* %9, align 8
  %118 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %119 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %118, i32 0, i32 2
  %120 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @BNX2_TX_RING_IDX(i64 %121)
  %123 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %120, i64 %122
  store %struct.bnx2_sw_tx_bd* %123, %struct.bnx2_sw_tx_bd** %20, align 8
  %124 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %125 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %20, align 8
  %129 = load i32, i32* @mapping, align 4
  %130 = call i32 @pci_unmap_addr(%struct.bnx2_sw_tx_bd* %128, i32 %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %132 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @skb_frag_size(i32* %137)
  %139 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %140 = call i32 @dma_unmap_page(i32* %127, i32 %130, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %115
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %111

144:                                              ; preds = %111
  %145 = load i64, i64* %9, align 8
  %146 = call i64 @BNX2_NEXT_TX_BD(i64 %145)
  store i64 %146, i64* %9, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %148 = call i32 @dev_kfree_skb(%struct.sk_buff* %147)
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %163

155:                                              ; preds = %144
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %161 = call i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi* %160)
  store i64 %161, i64* %8, align 8
  br label %162

162:                                              ; preds = %159, %155
  br label %42

163:                                              ; preds = %154, %91, %42
  %164 = load i64, i64* %8, align 8
  %165 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %166 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %9, align 8
  %168 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %169 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = call i32 (...) @smp_mb()
  %171 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %172 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %171)
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %204

175:                                              ; preds = %163
  %176 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %177 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %178 = call i64 @bnx2_tx_avail(%struct.bnx2* %176, %struct.bnx2_tx_ring_info* %177)
  %179 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %180 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %178, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %175
  %184 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %185 = call i32 (...) @smp_processor_id()
  %186 = call i32 @__netif_tx_lock(%struct.netdev_queue* %184, i32 %185)
  %187 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %188 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %183
  %191 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %192 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %7, align 8
  %193 = call i64 @bnx2_tx_avail(%struct.bnx2* %191, %struct.bnx2_tx_ring_info* %192)
  %194 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %195 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %193, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %200 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %199)
  br label %201

201:                                              ; preds = %198, %190, %183
  %202 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %203 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %202)
  br label %204

204:                                              ; preds = %201, %175, %163
  %205 = load i32, i32* %11, align 4
  ret i32 %205
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi*) #1

declare dso_local i64 @BNX2_TX_RING_IDX(i64) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.bnx2_sw_tx_bd*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @BNX2_NEXT_TX_BD(i64) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @bnx2_tx_avail(%struct.bnx2*, %struct.bnx2_tx_ring_info*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
