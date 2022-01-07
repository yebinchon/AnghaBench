; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.bnad = type { %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.bna_tcb** }
%struct.bna_tcb = type { i64, i64, i64*, i64, i32, i64, i32, %struct.bnad_tx_unmap* }
%struct.bnad_tx_unmap = type { i64, i32*, %struct.sk_buff* }
%struct.bna_txq_entry = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.skb_frag_struct* }

@ETH_HLEN = common dso_local global i64 0, align 8
@tx_skb_too_short = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@BFI_TX_MAX_DATA_PER_VECTOR = common dso_local global i64 0, align 8
@tx_skb_headlen_zero = common dso_local global i32 0, align 4
@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@tx_skb_stopping = common dso_local global i32 0, align 4
@BFI_TX_MAX_VECTORS_PER_PKT = common dso_local global i64 0, align 8
@tx_skb_max_vectors = common dso_local global i32 0, align 4
@BNAD_TXQ_FREE_SENT = common dso_local global i32 0, align 4
@netif_queue_stop = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@netif_queue_wakeup = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@tx_skb_frag_zero = common dso_local global i32 0, align 4
@BFI_TX_MAX_VECTORS_PER_WI = common dso_local global i64 0, align 8
@BNA_TXQ_WI_EXTENSION = common dso_local global i32 0, align 4
@tx_skb_len_mismatch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bnad_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bna_tcb*, align 8
  %9 = alloca %struct.bnad_tx_unmap*, align 8
  %10 = alloca %struct.bnad_tx_unmap*, align 8
  %11 = alloca %struct.bnad_tx_unmap*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bna_txq_entry*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.skb_frag_struct*, align 8
  %23 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.bnad* @netdev_priv(%struct.net_device* %24)
  store %struct.bnad* %25, %struct.bnad** %6, align 8
  store i64 0, i64* %7, align 8
  store %struct.bna_tcb* null, %struct.bna_tcb** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @skb_headlen(%struct.sk_buff* %26)
  store i64 %27, i64* %17, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ETH_HLEN, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @dev_kfree_skb(%struct.sk_buff* %37)
  %39 = load %struct.bnad*, %struct.bnad** %6, align 8
  %40 = load i32, i32* @tx_skb_too_short, align 4
  %41 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %39, i32 %40)
  %42 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %421

43:                                               ; preds = %2
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* @BFI_TX_MAX_DATA_PER_VECTOR, align 8
  %46 = icmp sgt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @dev_kfree_skb(%struct.sk_buff* %51)
  %53 = load %struct.bnad*, %struct.bnad** %6, align 8
  %54 = load i32, i32* @tx_skb_headlen_zero, align 4
  %55 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %53, i32 %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %421

57:                                               ; preds = %43
  %58 = load i64, i64* %17, align 8
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @dev_kfree_skb(%struct.sk_buff* %64)
  %66 = load %struct.bnad*, %struct.bnad** %6, align 8
  %67 = load i32, i32* @tx_skb_headlen_zero, align 4
  %68 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %66, i32 %67)
  %69 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %421

70:                                               ; preds = %57
  %71 = load %struct.bnad*, %struct.bnad** %6, align 8
  %72 = getelementptr inbounds %struct.bnad, %struct.bnad* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.bna_tcb**, %struct.bna_tcb*** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %76, i64 %77
  %79 = load %struct.bna_tcb*, %struct.bna_tcb** %78, align 8
  store %struct.bna_tcb* %79, %struct.bna_tcb** %8, align 8
  %80 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %81 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %13, align 8
  %83 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %84 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %12, align 8
  %86 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %87 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %86, i32 0, i32 7
  %88 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %87, align 8
  store %struct.bnad_tx_unmap* %88, %struct.bnad_tx_unmap** %9, align 8
  %89 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %90 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %91 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %90, i32 0, i32 4
  %92 = call i32 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %70
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @dev_kfree_skb(%struct.sk_buff* %99)
  %101 = load %struct.bnad*, %struct.bnad** %6, align 8
  %102 = load i32, i32* @tx_skb_stopping, align 4
  %103 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %101, i32 %102)
  %104 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %104, i32* %3, align 4
  br label %421

105:                                              ; preds = %70
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 1, %109
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %16, align 8
  %112 = call i64 @BNA_TXQ_WI_NEEDED(i64 %111)
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* @BFI_TX_MAX_VECTORS_PER_PKT, align 8
  %115 = icmp sgt i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %105
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @dev_kfree_skb(%struct.sk_buff* %120)
  %122 = load %struct.bnad*, %struct.bnad** %6, align 8
  %123 = load i32, i32* @tx_skb_max_vectors, align 4
  %124 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %122, i32 %123)
  %125 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %125, i32* %3, align 4
  br label %421

126:                                              ; preds = %105
  %127 = load i64, i64* %15, align 8
  %128 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %129 = load i64, i64* %13, align 8
  %130 = call i64 @BNA_QE_FREE_CNT(%struct.bna_tcb* %128, i64 %129)
  %131 = icmp sgt i64 %127, %130
  %132 = zext i1 %131 to i32
  %133 = call i64 @unlikely(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %200

135:                                              ; preds = %126
  %136 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %137 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %141 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %172

144:                                              ; preds = %135
  %145 = load i32, i32* @BNAD_TXQ_FREE_SENT, align 4
  %146 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %147 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %146, i32 0, i32 4
  %148 = call i32 @test_and_set_bit(i32 %145, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %172, label %150

150:                                              ; preds = %144
  %151 = load %struct.bnad*, %struct.bnad** %6, align 8
  %152 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %153 = call i64 @bnad_txcmpl_process(%struct.bnad* %151, %struct.bna_tcb* %152)
  store i64 %153, i64* %21, align 8
  %154 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %155 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %156 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %155, i32 0, i32 4
  %157 = call i32 @test_bit(i32 %154, i32* %156)
  %158 = call i64 @likely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %150
  %161 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %162 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* %21, align 8
  %165 = call i32 @bna_ib_ack(i32 %163, i64 %164)
  br label %166

166:                                              ; preds = %160, %150
  %167 = call i32 (...) @smp_mb__before_clear_bit()
  %168 = load i32, i32* @BNAD_TXQ_FREE_SENT, align 4
  %169 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %170 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %169, i32 0, i32 4
  %171 = call i32 @clear_bit(i32 %168, i32* %170)
  br label %178

172:                                              ; preds = %144, %135
  %173 = load %struct.net_device*, %struct.net_device** %5, align 8
  %174 = call i32 @netif_stop_queue(%struct.net_device* %173)
  %175 = load %struct.bnad*, %struct.bnad** %6, align 8
  %176 = load i32, i32* @netif_queue_stop, align 4
  %177 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %175, i32 %176)
  br label %178

178:                                              ; preds = %172, %166
  %179 = call i32 (...) @smp_mb()
  %180 = load i64, i64* %15, align 8
  %181 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %182 = load i64, i64* %13, align 8
  %183 = call i64 @BNA_QE_FREE_CNT(%struct.bna_tcb* %181, i64 %182)
  %184 = icmp sgt i64 %180, %183
  %185 = zext i1 %184 to i32
  %186 = call i64 @likely(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %178
  %189 = load %struct.bnad*, %struct.bnad** %6, align 8
  %190 = load i32, i32* @netif_queue_stop, align 4
  %191 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %189, i32 %190)
  %192 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %192, i32* %3, align 4
  br label %421

193:                                              ; preds = %178
  %194 = load %struct.net_device*, %struct.net_device** %5, align 8
  %195 = call i32 @netif_wake_queue(%struct.net_device* %194)
  %196 = load %struct.bnad*, %struct.bnad** %6, align 8
  %197 = load i32, i32* @netif_queue_wakeup, align 4
  %198 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %196, i32 %197)
  br label %199

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199, %126
  %201 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %202 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to %struct.bna_txq_entry*
  %205 = load i64, i64* %12, align 8
  %206 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %204, i64 %205
  store %struct.bna_txq_entry* %206, %struct.bna_txq_entry** %20, align 8
  %207 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %207, i64 %208
  store %struct.bnad_tx_unmap* %209, %struct.bnad_tx_unmap** %11, align 8
  %210 = load %struct.bnad*, %struct.bnad** %6, align 8
  %211 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %214 = call i64 @bnad_txq_wi_prepare(%struct.bnad* %210, %struct.bna_tcb* %211, %struct.sk_buff* %212, %struct.bna_txq_entry* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %200
  %217 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %218 = call i32 @dev_kfree_skb(%struct.sk_buff* %217)
  %219 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %219, i32* %3, align 4
  br label %421

220:                                              ; preds = %200
  %221 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %222 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  store i64 0, i64* %224, align 8
  %225 = load i64, i64* %16, align 8
  %226 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %227 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  store i64 %225, i64* %229, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %231 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %232 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %231, i32 0, i32 2
  store %struct.sk_buff* %230, %struct.sk_buff** %232, align 8
  %233 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %234 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  store %struct.bnad_tx_unmap* %235, %struct.bnad_tx_unmap** %10, align 8
  %236 = load %struct.bnad*, %struct.bnad** %6, align 8
  %237 = getelementptr inbounds %struct.bnad, %struct.bnad* %236, i32 0, i32 0
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i64, i64* %17, align 8
  %244 = load i32, i32* @DMA_TO_DEVICE, align 4
  %245 = call i32 @dma_map_single(i32* %239, i32 %242, i64 %243, i32 %244)
  store i32 %245, i32* %19, align 4
  %246 = load i32, i32* %19, align 4
  %247 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %248 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %247, i32 0, i32 0
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = call i32 @BNA_SET_DMA_ADDR(i32 %246, i32* %251)
  %253 = load i64, i64* %17, align 8
  %254 = call i8* @htons(i64 %253)
  %255 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %256 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %255, i32 0, i32 0
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  store i8* %254, i8** %259, align 8
  %260 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %10, align 8
  %261 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* %19, align 4
  %266 = call i32 @dma_unmap_addr_set(i32* %263, i32 %264, i32 %265)
  %267 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %268 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* %268, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %14, align 8
  br label %271

271:                                              ; preds = %371, %220
  %272 = load i32, i32* %18, align 4
  %273 = sext i32 %272 to i64
  %274 = load i64, i64* %16, align 8
  %275 = sub nsw i64 %274, 1
  %276 = icmp slt i64 %273, %275
  br i1 %276, label %277, label %374

277:                                              ; preds = %271
  %278 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %279 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %278)
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %280, align 8
  %282 = load i32, i32* %18, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %281, i64 %283
  store %struct.skb_frag_struct* %284, %struct.skb_frag_struct** %22, align 8
  %285 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %22, align 8
  %286 = call i64 @skb_frag_size(%struct.skb_frag_struct* %285)
  store i64 %286, i64* %23, align 8
  %287 = load i64, i64* %23, align 8
  %288 = icmp eq i64 %287, 0
  %289 = zext i1 %288 to i32
  %290 = call i64 @unlikely(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %277
  %293 = load %struct.bnad*, %struct.bnad** %6, align 8
  %294 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %295 = load i64, i64* %13, align 8
  %296 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %297 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @bnad_tx_buff_unmap(%struct.bnad* %293, %struct.bnad_tx_unmap* %294, i64 %295, i64 %298)
  %300 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %301 = call i32 @dev_kfree_skb(%struct.sk_buff* %300)
  %302 = load %struct.bnad*, %struct.bnad** %6, align 8
  %303 = load i32, i32* @tx_skb_frag_zero, align 4
  %304 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %302, i32 %303)
  %305 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %305, i32* %3, align 4
  br label %421

306:                                              ; preds = %277
  %307 = load i64, i64* %23, align 8
  %308 = load i64, i64* %17, align 8
  %309 = add nsw i64 %308, %307
  store i64 %309, i64* %17, align 8
  %310 = load i64, i64* %14, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %14, align 8
  %312 = load i64, i64* %14, align 8
  %313 = load i64, i64* @BFI_TX_MAX_VECTORS_PER_WI, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %334

315:                                              ; preds = %306
  store i64 0, i64* %14, align 8
  %316 = load i64, i64* %12, align 8
  %317 = load i64, i64* %13, align 8
  %318 = call i32 @BNA_QE_INDX_INC(i64 %316, i64 %317)
  %319 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %320 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = inttoptr i64 %321 to %struct.bna_txq_entry*
  %323 = load i64, i64* %12, align 8
  %324 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %322, i64 %323
  store %struct.bna_txq_entry* %324, %struct.bna_txq_entry** %20, align 8
  %325 = load i32, i32* @BNA_TXQ_WI_EXTENSION, align 4
  %326 = call i32 @__constant_htons(i32 %325)
  %327 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %328 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  store i32 %326, i32* %330, align 8
  %331 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %332 = load i64, i64* %12, align 8
  %333 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %331, i64 %332
  store %struct.bnad_tx_unmap* %333, %struct.bnad_tx_unmap** %10, align 8
  br label %334

334:                                              ; preds = %315, %306
  %335 = load %struct.bnad*, %struct.bnad** %6, align 8
  %336 = getelementptr inbounds %struct.bnad, %struct.bnad* %335, i32 0, i32 0
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  %339 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %22, align 8
  %340 = load i64, i64* %23, align 8
  %341 = load i32, i32* @DMA_TO_DEVICE, align 4
  %342 = call i32 @skb_frag_dma_map(i32* %338, %struct.skb_frag_struct* %339, i32 0, i64 %340, i32 %341)
  store i32 %342, i32* %19, align 4
  %343 = load i32, i32* %19, align 4
  %344 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %345 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %344, i32 0, i32 0
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %345, align 8
  %347 = load i64, i64* %14, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 1
  %350 = call i32 @BNA_SET_DMA_ADDR(i32 %343, i32* %349)
  %351 = load i64, i64* %23, align 8
  %352 = call i8* @htons(i64 %351)
  %353 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %20, align 8
  %354 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %353, i32 0, i32 0
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %354, align 8
  %356 = load i64, i64* %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 0
  store i8* %352, i8** %358, align 8
  %359 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %10, align 8
  %360 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = load i64, i64* %14, align 8
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  %364 = load i32, i32* %19, align 4
  %365 = load i32, i32* %19, align 4
  %366 = call i32 @dma_unmap_addr_set(i32* %363, i32 %364, i32 %365)
  %367 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %11, align 8
  %368 = getelementptr inbounds %struct.bnad_tx_unmap, %struct.bnad_tx_unmap* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = add nsw i64 %369, 1
  store i64 %370, i64* %368, align 8
  br label %371

371:                                              ; preds = %334
  %372 = load i32, i32* %18, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %18, align 4
  br label %271

374:                                              ; preds = %271
  %375 = load i64, i64* %17, align 8
  %376 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %377 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %375, %378
  %380 = zext i1 %379 to i32
  %381 = call i64 @unlikely(i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %374
  %384 = load %struct.bnad*, %struct.bnad** %6, align 8
  %385 = load %struct.bnad_tx_unmap*, %struct.bnad_tx_unmap** %9, align 8
  %386 = load i64, i64* %13, align 8
  %387 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %388 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @bnad_tx_buff_unmap(%struct.bnad* %384, %struct.bnad_tx_unmap* %385, i64 %386, i64 %389)
  %391 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %392 = call i32 @dev_kfree_skb(%struct.sk_buff* %391)
  %393 = load %struct.bnad*, %struct.bnad** %6, align 8
  %394 = load i32, i32* @tx_skb_len_mismatch, align 4
  %395 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %393, i32 %394)
  %396 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %396, i32* %3, align 4
  br label %421

397:                                              ; preds = %374
  %398 = load i64, i64* %12, align 8
  %399 = load i64, i64* %13, align 8
  %400 = call i32 @BNA_QE_INDX_INC(i64 %398, i64 %399)
  %401 = load i64, i64* %12, align 8
  %402 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %403 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %402, i32 0, i32 1
  store i64 %401, i64* %403, align 8
  %404 = call i32 (...) @smp_mb()
  %405 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %406 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %407 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %406, i32 0, i32 4
  %408 = call i32 @test_bit(i32 %405, i32* %407)
  %409 = icmp ne i32 %408, 0
  %410 = xor i1 %409, true
  %411 = zext i1 %410 to i32
  %412 = call i64 @unlikely(i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %397
  %415 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %415, i32* %3, align 4
  br label %421

416:                                              ; preds = %397
  %417 = load %struct.bna_tcb*, %struct.bna_tcb** %8, align 8
  %418 = call i32 @bna_txq_prod_indx_doorbell(%struct.bna_tcb* %417)
  %419 = call i32 (...) @smp_mb()
  %420 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %420, i32* %3, align 4
  br label %421

421:                                              ; preds = %416, %414, %383, %292, %216, %188, %119, %98, %63, %50, %36
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @BNA_TXQ_WI_NEEDED(i64) #1

declare dso_local i64 @BNA_QE_FREE_CNT(%struct.bna_tcb*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @bnad_txcmpl_process(%struct.bnad*, %struct.bna_tcb*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @bna_ib_ack(i32, i64) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @bnad_txq_wi_prepare(%struct.bnad*, %struct.bna_tcb*, %struct.sk_buff*, %struct.bna_txq_entry*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i64, i32) #1

declare dso_local i32 @BNA_SET_DMA_ADDR(i32, i32*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @dma_unmap_addr_set(i32*, i32, i32) #1

declare dso_local i64 @skb_frag_size(%struct.skb_frag_struct*) #1

declare dso_local i32 @bnad_tx_buff_unmap(%struct.bnad*, %struct.bnad_tx_unmap*, i64, i64) #1

declare dso_local i32 @BNA_QE_INDX_INC(i64, i64) #1

declare dso_local i32 @__constant_htons(i32) #1

declare dso_local i32 @skb_frag_dma_map(i32*, %struct.skb_frag_struct*, i32, i64, i32) #1

declare dso_local i32 @bna_txq_prod_indx_doorbell(%struct.bna_tcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
