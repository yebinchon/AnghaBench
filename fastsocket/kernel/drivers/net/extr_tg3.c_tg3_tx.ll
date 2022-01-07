; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i64, %struct.tg3_tx_ring_info*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.tg3* }
%struct.tg3_tx_ring_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.tg3 = type { i32, i32, %struct.tg3_napi* }
%struct.netdev_queue = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }

@ENABLE_TSS = common dso_local global i32 0, align 4
@TXD_FLAG_HWTSTAMP = common dso_local global i32 0, align 4
@TG3_TX_TSTAMP_LSB = common dso_local global i32 0, align 4
@TG3_TX_TSTAMP_MSB = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3_napi*)* @tg3_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_tx(%struct.tg3_napi* %0) #0 {
  %2 = alloca %struct.tg3_napi*, align 8
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tg3_tx_ring_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skb_shared_hwtstamps, align 4
  %13 = alloca i32, align 4
  store %struct.tg3_napi* %0, %struct.tg3_napi** %2, align 8
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %15 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i32 0, i32 4
  %16 = load %struct.tg3*, %struct.tg3** %15, align 8
  store %struct.tg3* %16, %struct.tg3** %3, align 8
  %17 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %18 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %26 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %29 = load %struct.tg3*, %struct.tg3** %3, align 8
  %30 = getelementptr inbounds %struct.tg3, %struct.tg3* %29, i32 0, i32 2
  %31 = load %struct.tg3_napi*, %struct.tg3_napi** %30, align 8
  %32 = ptrtoint %struct.tg3_napi* %28 to i64
  %33 = ptrtoint %struct.tg3_napi* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 40
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load %struct.tg3*, %struct.tg3** %3, align 8
  %38 = load i32, i32* @ENABLE_TSS, align 4
  %39 = call i64 @tg3_flag(%struct.tg3* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %1
  %45 = load %struct.tg3*, %struct.tg3** %3, align 8
  %46 = getelementptr inbounds %struct.tg3, %struct.tg3* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %47, i32 %48)
  store %struct.netdev_queue* %49, %struct.netdev_queue** %6, align 8
  br label %50

50:                                               ; preds = %200, %44
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %201

54:                                               ; preds = %50
  %55 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %56 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %55, i32 0, i32 1
  %57 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %57, i64 %58
  store %struct.tg3_tx_ring_info* %59, %struct.tg3_tx_ring_info** %8, align 8
  %60 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %61 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %60, i32 0, i32 1
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %9, align 8
  store i32 0, i32* %11, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = icmp eq %struct.sk_buff* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.tg3*, %struct.tg3** %3, align 8
  %70 = call i32 @tg3_tx_recover(%struct.tg3* %69)
  br label %239

71:                                               ; preds = %54
  %72 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %73 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %72, i32 0, i32 2
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TXD_FLAG_HWTSTAMP, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %71
  %83 = load i32, i32* @TG3_TX_TSTAMP_LSB, align 4
  %84 = call i32 @tr32(i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @TG3_TX_TSTAMP_MSB, align 4
  %86 = call i32 @tr32(i32 %85)
  %87 = shl i32 %86, 32
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load %struct.tg3*, %struct.tg3** %3, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @tg3_hwclock_to_timestamp(%struct.tg3* %90, i32 %91, %struct.skb_shared_hwtstamps* %12)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = call i32 @skb_tstamp_tx(%struct.sk_buff* %93, %struct.skb_shared_hwtstamps* %12)
  br label %95

95:                                               ; preds = %82, %71
  %96 = load %struct.tg3*, %struct.tg3** %3, align 8
  %97 = getelementptr inbounds %struct.tg3, %struct.tg3* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %100 = load i32, i32* @mapping, align 4
  %101 = call i32 @dma_unmap_addr(%struct.tg3_tx_ring_info* %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = call i32 @skb_headlen(%struct.sk_buff* %102)
  %104 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %105 = call i32 @pci_unmap_single(i32 %98, i32 %101, i32 %103, i32 %104)
  %106 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %107 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %106, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %107, align 8
  br label %108

108:                                              ; preds = %113, %95
  %109 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %110 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %115 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @NEXT_TX(i64 %116)
  store i64 %117, i64* %5, align 8
  %118 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %119 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %118, i32 0, i32 1
  %120 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %119, align 8
  %121 = load i64, i64* %5, align 8
  %122 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %120, i64 %121
  store %struct.tg3_tx_ring_info* %122, %struct.tg3_tx_ring_info** %8, align 8
  br label %108

123:                                              ; preds = %108
  %124 = load i64, i64* %5, align 8
  %125 = call i64 @NEXT_TX(i64 %124)
  store i64 %125, i64* %5, align 8
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %188, %123
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %129 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %191

133:                                              ; preds = %126
  %134 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %135 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %134, i32 0, i32 1
  %136 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %136, i64 %137
  store %struct.tg3_tx_ring_info* %138, %struct.tg3_tx_ring_info** %8, align 8
  %139 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %140 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %139, i32 0, i32 1
  %141 = load %struct.sk_buff*, %struct.sk_buff** %140, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %133
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %4, align 8
  %146 = icmp eq i64 %144, %145
  br label %147

147:                                              ; preds = %143, %133
  %148 = phi i1 [ true, %133 ], [ %146, %143 ]
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 1, i32* %11, align 4
  br label %153

153:                                              ; preds = %152, %147
  %154 = load %struct.tg3*, %struct.tg3** %3, align 8
  %155 = getelementptr inbounds %struct.tg3, %struct.tg3* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %158 = load i32, i32* @mapping, align 4
  %159 = call i32 @dma_unmap_addr(%struct.tg3_tx_ring_info* %157, i32 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %161 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = call i32 @skb_frag_size(i32* %166)
  %168 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %169 = call i32 @pci_unmap_page(i32 %156, i32 %159, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %175, %153
  %171 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %172 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %8, align 8
  %177 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %176, i32 0, i32 0
  store i32 0, i32* %177, align 8
  %178 = load i64, i64* %5, align 8
  %179 = call i64 @NEXT_TX(i64 %178)
  store i64 %179, i64* %5, align 8
  %180 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %181 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %180, i32 0, i32 1
  %182 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %181, align 8
  %183 = load i64, i64* %5, align 8
  %184 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %182, i64 %183
  store %struct.tg3_tx_ring_info* %184, %struct.tg3_tx_ring_info** %8, align 8
  br label %170

185:                                              ; preds = %170
  %186 = load i64, i64* %5, align 8
  %187 = call i64 @NEXT_TX(i64 %186)
  store i64 %187, i64* %5, align 8
  br label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %126

191:                                              ; preds = %126
  %192 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %193 = call i32 @dev_kfree_skb(%struct.sk_buff* %192)
  %194 = load i32, i32* %11, align 4
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.tg3*, %struct.tg3** %3, align 8
  %199 = call i32 @tg3_tx_recover(%struct.tg3* %198)
  br label %239

200:                                              ; preds = %191
  br label %50

201:                                              ; preds = %50
  %202 = load i64, i64* %5, align 8
  %203 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %204 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  %205 = call i32 (...) @smp_mb()
  %206 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %207 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %211 = call i64 @tg3_tx_avail(%struct.tg3_napi* %210)
  %212 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %213 = call i64 @TG3_TX_WAKEUP_THRESH(%struct.tg3_napi* %212)
  %214 = icmp sgt i64 %211, %213
  br label %215

215:                                              ; preds = %209, %201
  %216 = phi i1 [ false, %201 ], [ %214, %209 ]
  %217 = zext i1 %216 to i32
  %218 = call i64 @unlikely(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %222 = call i32 (...) @smp_processor_id()
  %223 = call i32 @__netif_tx_lock(%struct.netdev_queue* %221, i32 %222)
  %224 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %225 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %220
  %228 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %229 = call i64 @tg3_tx_avail(%struct.tg3_napi* %228)
  %230 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %231 = call i64 @TG3_TX_WAKEUP_THRESH(%struct.tg3_napi* %230)
  %232 = icmp sgt i64 %229, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %227
  %234 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %235 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %234)
  br label %236

236:                                              ; preds = %233, %227, %220
  %237 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %238 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %237)
  br label %239

239:                                              ; preds = %68, %197, %236, %215
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tg3_tx_recover(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_hwclock_to_timestamp(%struct.tg3*, i32, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.tg3_tx_ring_info*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @tg3_tx_avail(%struct.tg3_napi*) #1

declare dso_local i64 @TG3_TX_WAKEUP_THRESH(%struct.tg3_napi*) #1

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
