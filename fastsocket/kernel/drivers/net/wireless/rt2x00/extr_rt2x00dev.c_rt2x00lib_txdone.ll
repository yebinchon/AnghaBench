; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_txdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_16__*, i64, i32* }
%struct.TYPE_16__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_15__*, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 (%struct.queue_entry*)* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.txdone_entry_desc = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32, i32 }

@SKBDESC_DESC_IN_SKB = common dso_local global i32 0, align 4
@REQUIRE_L2PAD = common dso_local global i32 0, align 4
@CAPABILITY_HW_CRYPTO = common dso_local global i32 0, align 4
@DUMP_FRAME_TXDONE = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_UNKNOWN = common dso_local global i32 0, align 4
@TXDONE_FALLBACK = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@TXDONE_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU_NO_BACK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@SKBDESC_NOT_MAC80211 = common dso_local global i32 0, align 4
@REQUIRE_TASKLET_CONTEXT = common dso_local global i32 0, align 4
@Q_INDEX_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_txdone(%struct.queue_entry* %0, %struct.txdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txdone_entry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.skb_frame_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txdone_entry_desc* %1, %struct.txdone_entry_desc** %4, align 8
  %15 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %16 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %18, align 8
  store %struct.rt2x00_dev* %19, %struct.rt2x00_dev** %5, align 8
  %20 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %21 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %6, align 8
  %24 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %25 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call %struct.skb_frame_desc* @get_skb_frame_desc(i32* %26)
  store %struct.skb_frame_desc* %27, %struct.skb_frame_desc** %7, align 8
  %28 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %29 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %32 = call i32 @rt2x00queue_unmap_skb(%struct.queue_entry* %31)
  %33 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %34 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @skb_pull(i32* %35, i32 %40)
  %42 = load i32, i32* @SKBDESC_DESC_IN_SKB, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %45 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %49 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @ieee80211_get_hdrlen_from_skb(i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @REQUIRE_L2PAD, align 4
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %54 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %53, i32 0, i32 2
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %2
  %58 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %59 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @rt2x00queue_remove_l2pad(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %2
  %64 = load i32, i32* @CAPABILITY_HW_CRYPTO, align 4
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %66 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %65, i32 0, i32 2
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %71 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @rt2x00crypto_tx_insert_iv(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %77 = load i32, i32* @DUMP_FRAME_TXDONE, align 4
  %78 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %79 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %76, i32 %77, i32* %80)
  %82 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %83 = call i64 @rt2x00lib_txdone_bar_status(%struct.queue_entry* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @TXDONE_SUCCESS, align 4
  %87 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %88 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %87, i32 0, i32 1
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @TXDONE_UNKNOWN, align 4
  %93 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %94 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %93, i32 0, i32 1
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %91, %85, %75
  %98 = phi i1 [ true, %85 ], [ true, %75 ], [ %96, %91 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %102 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %112 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %110
  store i32 %116, i32* %114, align 4
  %117 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %118 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %10, align 4
  %120 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %7, align 8
  %121 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* @TXDONE_FALLBACK, align 4
  %124 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %125 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %124, i32 0, i32 1
  %126 = call i64 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %97
  %129 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %130 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  br label %134

133:                                              ; preds = %97
  br label %134

134:                                              ; preds = %133, %128
  %135 = phi i32 [ %132, %128 ], [ 1, %133 ]
  store i32 %135, i32* %12, align 4
  %136 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %136, i32 0, i32 1
  %138 = call i32 @memset(%struct.TYPE_17__* %137, i32 0, i32 24)
  %139 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %140 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  store i64 0, i64* %141, align 8
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %200, %134
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %149 = icmp ult i32 %147, %148
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi i1 [ false, %142 ], [ %149, %146 ]
  br i1 %151, label %152, label %203

152:                                              ; preds = %150
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sub i32 %153, %154
  %156 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32 %155, i32* %163, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %166 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  store i32 %164, i32* %172, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %152
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %9, align 4
  %180 = sub i32 %178, %179
  %181 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %182 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 2
  store i32 %180, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %203

191:                                              ; preds = %152
  %192 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %193 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %9, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %142

203:                                              ; preds = %177, %150
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %206 = sub i32 %205, 1
  %207 = icmp ult i32 %204, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %203
  %209 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %210 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  store i32 -1, i32* %216, align 4
  br label %217

217:                                              ; preds = %208, %203
  %218 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %219 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %240, label %224

224:                                              ; preds = %217
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %229 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %230 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %239

233:                                              ; preds = %224
  %234 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %235 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %233, %227
  br label %240

240:                                              ; preds = %239, %217
  %241 = load i32, i32* @TXDONE_AMPDU, align 4
  %242 = load %struct.txdone_entry_desc*, %struct.txdone_entry_desc** %4, align 8
  %243 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %242, i32 0, i32 1
  %244 = call i64 @test_bit(i32 %241, i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %240
  %247 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %248 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %278

253:                                              ; preds = %246, %240
  %254 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %255 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %256 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %260 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  store i32 1, i32* %261, align 8
  %262 = load i32, i32* %14, align 4
  %263 = icmp ne i32 %262, 0
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i32 1, i32 0
  %266 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %267 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 1
  store i32 %265, i32* %268, align 4
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %253
  %272 = load i32, i32* @IEEE80211_TX_STAT_AMPDU_NO_BACK, align 4
  %273 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %274 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %271, %253
  br label %278

278:                                              ; preds = %277, %246
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %278
  %284 = load i32, i32* %14, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %288 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 4
  br label %298

292:                                              ; preds = %283
  %293 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %294 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %292, %286
  br label %299

299:                                              ; preds = %298, %278
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* @SKBDESC_NOT_MAC80211, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %327, label %304

304:                                              ; preds = %299
  %305 = load i32, i32* @REQUIRE_TASKLET_CONTEXT, align 4
  %306 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %307 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %306, i32 0, i32 2
  %308 = call i64 @test_bit(i32 %305, i32* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %304
  %311 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %312 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %315 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = call i32 @ieee80211_tx_status(i32 %313, i32* %316)
  br label %326

318:                                              ; preds = %304
  %319 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %320 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %323 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %322, i32 0, i32 2
  %324 = load i32*, i32** %323, align 8
  %325 = call i32 @ieee80211_tx_status_ni(i32 %321, i32* %324)
  br label %326

326:                                              ; preds = %318, %310
  br label %332

327:                                              ; preds = %299
  %328 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %329 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @dev_kfree_skb_any(i32* %330)
  br label %332

332:                                              ; preds = %327, %326
  %333 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %334 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %333, i32 0, i32 2
  store i32* null, i32** %334, align 8
  %335 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %336 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %335, i32 0, i32 1
  store i64 0, i64* %336, align 8
  %337 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %338 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %337, i32 0, i32 0
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = load i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*)** %342, align 8
  %344 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %345 = call i32 %343(%struct.queue_entry* %344)
  %346 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %347 = load i32, i32* @Q_INDEX_DONE, align 4
  %348 = call i32 @rt2x00queue_index_inc(%struct.queue_entry* %346, i32 %347)
  %349 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %350 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %349, i32 0, i32 0
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 0
  %353 = call i32 @spin_lock_bh(i32* %352)
  %354 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %355 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %354, i32 0, i32 0
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %355, align 8
  %357 = call i32 @rt2x00queue_threshold(%struct.TYPE_16__* %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %364, label %359

359:                                              ; preds = %332
  %360 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %361 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %360, i32 0, i32 0
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %361, align 8
  %363 = call i32 @rt2x00queue_unpause_queue(%struct.TYPE_16__* %362)
  br label %364

364:                                              ; preds = %359, %332
  %365 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %366 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %365, i32 0, i32 0
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 0
  %369 = call i32 @spin_unlock_bh(i32* %368)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32*) #1

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(i32*) #1

declare dso_local i32 @rt2x00queue_unmap_skb(%struct.queue_entry*) #1

declare dso_local i32 @skb_pull(i32*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00queue_remove_l2pad(i32*, i32) #1

declare dso_local i32 @rt2x00crypto_tx_insert_iv(i32*, i32) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i64 @rt2x00lib_txdone_bar_status(%struct.queue_entry*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @ieee80211_tx_status(i32, i32*) #1

declare dso_local i32 @ieee80211_tx_status_ni(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @rt2x00queue_index_inc(%struct.queue_entry*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rt2x00queue_threshold(%struct.TYPE_16__*) #1

declare dso_local i32 @rt2x00queue_unpause_queue(%struct.TYPE_16__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
