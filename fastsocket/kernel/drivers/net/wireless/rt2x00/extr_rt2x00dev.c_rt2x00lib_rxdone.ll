; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i64, %struct.sk_buff*, %struct.TYPE_7__* }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.TYPE_12__*, i64, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*, %struct.rxdone_entry_desc*)* }
%struct.rxdone_entry_desc = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@ENTRY_DATA_IO_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wrong frame size %d max %d\0A\00", align 1
@RXDONE_CRYPTO_IV = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RXDONE_L2PAD = common dso_local global i32 0, align 4
@RATE_MODE_HT_MIX = common dso_local global i64 0, align 8
@RATE_MODE_HT_GREENFIELD = common dso_local global i64 0, align 8
@RX_FLAG_HT = common dso_local global i32 0, align 4
@DUMP_FRAME_RXDONE = common dso_local global i32 0, align 4
@Q_INDEX_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_rxdone(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rxdone_entry_desc, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %5, align 8
  %16 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %2
  br label %228

28:                                               ; preds = %21
  %29 = load i32, i32* @ENTRY_DATA_IO_FAILED, align 4
  %30 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %31 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %30, i32 0, i32 0
  %32 = call i64 @test_bit(i32 %29, i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %228

35:                                               ; preds = %28
  %36 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.sk_buff* @rt2x00queue_alloc_rxskb(%struct.queue_entry* %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %228

42:                                               ; preds = %35
  %43 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %44 = call i32 @rt2x00queue_unmap_skb(%struct.queue_entry* %43)
  %45 = call i32 @memset(%struct.rxdone_entry_desc* %6, i32 0, i32 64)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32 (%struct.queue_entry*, %struct.rxdone_entry_desc*)*, i32 (%struct.queue_entry*, %struct.rxdone_entry_desc*)** %51, align 8
  %53 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %54 = call i32 %52(%struct.queue_entry* %53, %struct.rxdone_entry_desc* %6)
  %55 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %62 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ugt i32 %60, %65
  br label %67

67:                                               ; preds = %58, %42
  %68 = phi i1 [ true, %42 ], [ %66, %58 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %74 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %77 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @rt2x00_err(%struct.rt2x00_dev* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %80)
  %82 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %83 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %82, i32 0, i32 1
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = call i32 @dev_kfree_skb(%struct.sk_buff* %84)
  br label %224

86:                                               ; preds = %67
  %87 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %88 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %87, i32 0, i32 1
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  %90 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %89)
  store i32 %90, i32* %9, align 4
  %91 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RXDONE_CRYPTO_IV, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %104 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %103, i32 0, i32 1
  %105 = load %struct.sk_buff*, %struct.sk_buff** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @rt2x00crypto_rx_insert_iv(%struct.sk_buff* %105, i32 %106, %struct.rxdone_entry_desc* %6)
  br label %129

108:                                              ; preds = %96, %86
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RXDONE_L2PAD, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %124 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %123, i32 0, i32 1
  %125 = load %struct.sk_buff*, %struct.sk_buff** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @rt2x00queue_remove_l2pad(%struct.sk_buff* %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %116, %111, %108
  br label %129

129:                                              ; preds = %128, %102
  %130 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %131 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %130, i32 0, i32 1
  %132 = load %struct.sk_buff*, %struct.sk_buff** %131, align 8
  %133 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @skb_trim(%struct.sk_buff* %132, i32 %134)
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %137 = call i32 @rt2x00lib_rxdone_read_signal(%struct.rt2x00_dev* %136, %struct.rxdone_entry_desc* %6)
  store i32 %137, i32* %10, align 4
  %138 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @RATE_MODE_HT_MIX, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %147, label %142

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RATE_MODE_HT_GREENFIELD, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %142, %129
  %148 = load i32, i32* @RX_FLAG_HT, align 4
  %149 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %147, %142
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %154 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %155 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %154, i32 0, i32 1
  %156 = load %struct.sk_buff*, %struct.sk_buff** %155, align 8
  %157 = call i32 @rt2x00lib_rxdone_check_ps(%struct.rt2x00_dev* %153, %struct.sk_buff* %156, %struct.rxdone_entry_desc* %6)
  %158 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %159 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %160 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %159, i32 0, i32 1
  %161 = load %struct.sk_buff*, %struct.sk_buff** %160, align 8
  %162 = call i32 @rt2x00lib_rxdone_check_ba(%struct.rt2x00_dev* %158, %struct.sk_buff* %161, %struct.rxdone_entry_desc* %6)
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %164 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %165 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %164, i32 0, i32 1
  %166 = load %struct.sk_buff*, %struct.sk_buff** %165, align 8
  %167 = call i32 @rt2x00link_update_stats(%struct.rt2x00_dev* %163, %struct.sk_buff* %166, %struct.rxdone_entry_desc* %6)
  %168 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %169 = call i32 @rt2x00debug_update_crypto(%struct.rt2x00_dev* %168, %struct.rxdone_entry_desc* %6)
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %171 = load i32, i32* @DUMP_FRAME_RXDONE, align 4
  %172 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %173 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %172, i32 0, i32 1
  %174 = load %struct.sk_buff*, %struct.sk_buff** %173, align 8
  %175 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %170, i32 %171, %struct.sk_buff* %174)
  %176 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %177 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %176, i32 0, i32 1
  %178 = load %struct.sk_buff*, %struct.sk_buff** %177, align 8
  %179 = call %struct.rxdone_entry_desc* @IEEE80211_SKB_RXCB(%struct.sk_buff* %178)
  %180 = bitcast %struct.rxdone_entry_desc* %179 to %struct.ieee80211_rx_status*
  store %struct.ieee80211_rx_status* %180, %struct.ieee80211_rx_status** %8, align 8
  %181 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %182 = bitcast %struct.ieee80211_rx_status* %181 to %struct.rxdone_entry_desc*
  %183 = call i32 @memset(%struct.rxdone_entry_desc* %182, i32 0, i32 64)
  %184 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 11
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %187 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %186, i32 0, i32 12
  store i32 %185, i32* %187, align 8
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %189 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %192 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %191, i32 0, i32 10
  store i32 %190, i32* %192, align 8
  %193 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %194 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %197 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %196, i32 0, i32 9
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %200 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 8
  %201 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %204 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %203, i32 0, i32 8
  store i32 %202, i32* %204, align 8
  %205 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %6, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %208 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 4
  %209 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %210 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %216 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  %217 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %218 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %221 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %220, i32 0, i32 1
  %222 = load %struct.sk_buff*, %struct.sk_buff** %221, align 8
  %223 = call i32 @ieee80211_rx_ni(i32 %219, %struct.sk_buff* %222)
  br label %224

224:                                              ; preds = %152, %72
  %225 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %226 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %227 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %226, i32 0, i32 1
  store %struct.sk_buff* %225, %struct.sk_buff** %227, align 8
  br label %228

228:                                              ; preds = %224, %41, %34, %27
  %229 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %230 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %229, i32 0, i32 0
  store i64 0, i64* %230, align 8
  %231 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %232 = load i32, i32* @Q_INDEX_DONE, align 4
  %233 = call i32 @rt2x00queue_index_inc(%struct.queue_entry* %231, i32 %232)
  %234 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %235 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %236 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %235, i32 0, i32 1
  %237 = call i64 @test_bit(i32 %234, i64* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %255

239:                                              ; preds = %228
  %240 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %241 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %242 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %241, i32 0, i32 1
  %243 = call i64 @test_bit(i32 %240, i64* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %239
  %246 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %247 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = load i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*)** %251, align 8
  %253 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %254 = call i32 %252(%struct.queue_entry* %253)
  br label %255

255:                                              ; preds = %245, %239, %228
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local %struct.sk_buff* @rt2x00queue_alloc_rxskb(%struct.queue_entry*, i32) #1

declare dso_local i32 @rt2x00queue_unmap_skb(%struct.queue_entry*) #1

declare dso_local i32 @memset(%struct.rxdone_entry_desc*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @rt2x00crypto_rx_insert_iv(%struct.sk_buff*, i32, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00queue_remove_l2pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @rt2x00lib_rxdone_read_signal(%struct.rt2x00_dev*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00lib_rxdone_check_ps(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00lib_rxdone_check_ba(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00link_update_stats(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00debug_update_crypto(%struct.rt2x00_dev*, %struct.rxdone_entry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.sk_buff*) #1

declare dso_local %struct.rxdone_entry_desc* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_ni(i32, %struct.sk_buff*) #1

declare dso_local i32 @rt2x00queue_index_inc(%struct.queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
