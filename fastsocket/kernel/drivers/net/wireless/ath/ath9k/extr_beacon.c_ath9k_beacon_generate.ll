; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_generate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_buf = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.ath_txq* }
%struct.ath_txq = type { i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { i32, %struct.ath_buf* }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dma_mapping_error on beaconing\0A\00", align 1
@BEACON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Flushing previous cabq traffic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath_buf* (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_beacon_generate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath_buf* @ath9k_beacon_generate(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath_buf*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath_buf*, align 8
  %9 = alloca %struct.ath_vif*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ath_txq*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca %struct.ieee80211_mgmt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.ath_softc*, %struct.ath_softc** %17, align 8
  store %struct.ath_softc* %18, %struct.ath_softc** %6, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ath_common* @ath9k_hw_common(i32 %21)
  store %struct.ath_common* %22, %struct.ath_common** %7, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.ath_vif*
  store %struct.ath_vif* %27, %struct.ath_vif** %9, align 8
  %28 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.ath_txq*, %struct.ath_txq** %30, align 8
  store %struct.ath_txq* %31, %struct.ath_txq** %11, align 8
  %32 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %33 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %32, i32 0, i32 1
  %34 = load %struct.ath_buf*, %struct.ath_buf** %33, align 8
  %35 = icmp eq %struct.ath_buf* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store %struct.ath_buf* null, %struct.ath_buf** %3, align 8
  br label %206

37:                                               ; preds = %2
  %38 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %39 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %38, i32 0, i32 1
  %40 = load %struct.ath_buf*, %struct.ath_buf** %39, align 8
  store %struct.ath_buf* %40, %struct.ath_buf** %8, align 8
  %41 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %42 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %41, i32 0, i32 1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %37
  %47 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %48 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %51 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_unmap_single(i32 %49, i64 %52, i32 %55, i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %58)
  %60 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %61 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %63 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %62, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %63, align 8
  br label %64

64:                                               ; preds = %46, %37
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %66 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %67 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %65, %struct.ieee80211_vif* %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %10, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = icmp eq %struct.sk_buff* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store %struct.ath_buf* null, %struct.ath_buf** %3, align 8
  br label %206

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %74 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %73, i32 0, i32 1
  store %struct.sk_buff* %72, %struct.sk_buff** %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %78, %struct.ieee80211_mgmt** %13, align 8
  %79 = load %struct.ath_vif*, %struct.ath_vif** %9, align 8
  %80 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %83 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %86)
  store %struct.ieee80211_tx_info* %87, %struct.ieee80211_tx_info** %12, align 8
  %88 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %71
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %98, %struct.ieee80211_hdr** %15, align 8
  %99 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 16
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %105 = call i32 @cpu_to_le16(i32 %104)
  %106 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %111 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @cpu_to_le16(i32 %113)
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %94, %71
  %120 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %121 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DMA_TO_DEVICE, align 4
  %130 = call i64 @dma_map_single(i32 %122, i64 %125, i32 %128, i32 %129)
  %131 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %132 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %134 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %137 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @dma_mapping_error(i32 %135, i64 %138)
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %119
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %143)
  %145 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %146 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %145, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %146, align 8
  %147 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %148 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %150 = call i32 @ath_err(%struct.ath_common* %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.ath_buf* null, %struct.ath_buf** %3, align 8
  br label %206

151:                                              ; preds = %119
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %153 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %154 = call %struct.sk_buff* @ieee80211_get_buffered_bc(%struct.ieee80211_hw* %152, %struct.ieee80211_vif* %153)
  store %struct.sk_buff* %154, %struct.sk_buff** %10, align 8
  %155 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %156 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %155, i32 0, i32 1
  %157 = call i32 @spin_lock_bh(i32* %156)
  %158 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %159 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %14, align 4
  %161 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %162 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %161, i32 0, i32 1
  %163 = call i32 @spin_unlock_bh(i32* %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %165 = icmp ne %struct.sk_buff* %164, null
  br i1 %165, label %166, label %182

166:                                              ; preds = %151
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %166
  %170 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %171 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %172, 1
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %176 = load i32, i32* @BEACON, align 4
  %177 = call i32 @ath_dbg(%struct.ath_common* %175, i32 %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %178 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %179 = load %struct.ath_txq*, %struct.ath_txq** %11, align 8
  %180 = call i32 @ath_draintxq(%struct.ath_softc* %178, %struct.ath_txq* %179)
  br label %181

181:                                              ; preds = %174, %169
  br label %182

182:                                              ; preds = %181, %166, %151
  %183 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %184 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %185 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  %186 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %187 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ath9k_beacon_setup(%struct.ath_softc* %183, %struct.ieee80211_vif* %184, %struct.ath_buf* %185, i32 %192)
  br label %194

194:                                              ; preds = %197, %182
  %195 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %196 = icmp ne %struct.sk_buff* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %200 = call i32 @ath9k_tx_cabq(%struct.ieee80211_hw* %198, %struct.sk_buff* %199)
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %202 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %203 = call %struct.sk_buff* @ieee80211_get_buffered_bc(%struct.ieee80211_hw* %201, %struct.ieee80211_vif* %202)
  store %struct.sk_buff* %203, %struct.sk_buff** %10, align 8
  br label %194

204:                                              ; preds = %194
  %205 = load %struct.ath_buf*, %struct.ath_buf** %8, align 8
  store %struct.ath_buf* %205, %struct.ath_buf** %3, align 8
  br label %206

206:                                              ; preds = %204, %142, %70, %36
  %207 = load %struct.ath_buf*, %struct.ath_buf** %3, align 8
  ret %struct.ath_buf* %207
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local %struct.sk_buff* @ieee80211_get_buffered_bc(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath_draintxq(%struct.ath_softc*, %struct.ath_txq*) #1

declare dso_local i32 @ath9k_beacon_setup(%struct.ath_softc*, %struct.ieee80211_vif*, %struct.ath_buf*, i32) #1

declare dso_local i32 @ath9k_tx_cabq(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
