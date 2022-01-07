; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_ht.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.txentry_desc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32, i32 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rt2x00_rate = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.rt2x00_sta = type { i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i64 0, align 8
@ENTRY_TXD_HT_MIMO_PS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@CONFIG_HT_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@TXOP_SIFS = common dso_local global i8* null, align 8
@TXOP_BACKOFF = common dso_local global i8* null, align 8
@IEEE80211_TX_CTL_STBC = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_SHORT_GI = common dso_local global i32 0, align 4
@TXOP_HTTXOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*, %struct.ieee80211_sta*, %struct.rt2x00_rate*)* @rt2x00queue_create_tx_descriptor_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_create_tx_descriptor_ht(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2, %struct.ieee80211_sta* %3, %struct.rt2x00_rate* %4) #0 {
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.txentry_desc*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.rt2x00_rate*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_tx_rate*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca %struct.rt2x00_sta*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store %struct.rt2x00_rate* %4, %struct.rt2x00_rate** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %15)
  store %struct.ieee80211_tx_info* %16, %struct.ieee80211_tx_info** %11, align 8
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %19, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %20, i64 0
  store %struct.ieee80211_tx_rate* %21, %struct.ieee80211_tx_rate** %12, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %25, %struct.ieee80211_hdr** %13, align 8
  store %struct.rt2x00_sta* null, %struct.rt2x00_sta** %14, align 8
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %27 = icmp ne %struct.ieee80211_sta* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %5
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %34 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  store i32 %32, i32* %36, align 4
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %38 = call %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta* %37)
  store %struct.rt2x00_sta* %38, %struct.rt2x00_sta** %14, align 8
  %39 = load %struct.rt2x00_sta*, %struct.rt2x00_sta** %14, align 8
  %40 = getelementptr inbounds %struct.rt2x00_sta, %struct.rt2x00_sta* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %43 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %28, %5
  %47 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %48 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %46
  %54 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %58 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %62 = icmp ne %struct.ieee80211_sta* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %53
  %64 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %65 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 7
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @ENTRY_TXD_HT_MIMO_PS, align 4
  %78 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %79 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %78, i32 0, i32 1
  %80 = call i32 @__set_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %70, %63, %53
  br label %105

82:                                               ; preds = %46
  %83 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %10, align 8
  %84 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rt2x00_get_rate_mcs(i32 %85)
  %87 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %88 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %92 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %82
  %98 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %99 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, 8
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %82
  br label %105

105:                                              ; preds = %104, %81
  %106 = load i32, i32* @CONFIG_HT_DISABLED, align 4
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %108 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %107, i32 0, i32 0
  %109 = call i64 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %105
  %112 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %113 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load i8*, i8** @TXOP_SIFS, align 8
  %120 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %121 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 3
  store i8* %119, i8** %123, align 8
  br label %130

124:                                              ; preds = %111
  %125 = load i8*, i8** @TXOP_BACKOFF, align 8
  %126 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %127 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i8* %125, i8** %129, align 8
  br label %130

130:                                              ; preds = %124, %118
  br label %235

131:                                              ; preds = %105
  %132 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %133 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 7, i32* %135, align 4
  %136 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IEEE80211_TX_CTL_STBC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %131
  %143 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %144 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  br label %147

147:                                              ; preds = %142, %131
  %148 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %149 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %147
  %155 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %156 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* @ENTRY_TXD_HT_AMPDU, align 4
  %163 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %164 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %163, i32 0, i32 1
  %165 = call i32 @__set_bit(i32 %162, i32* %164)
  br label %166

166:                                              ; preds = %161, %154, %147
  %167 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %168 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %166
  %174 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %175 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IEEE80211_TX_RC_DUP_DATA, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %173, %166
  %181 = load i32, i32* @ENTRY_TXD_HT_BW_40, align 4
  %182 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %183 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %182, i32 0, i32 1
  %184 = call i32 @__set_bit(i32 %181, i32* %183)
  br label %185

185:                                              ; preds = %180, %173
  %186 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %187 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i32, i32* @ENTRY_TXD_HT_SHORT_GI, align 4
  %194 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %195 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %194, i32 0, i32 1
  %196 = call i32 @__set_bit(i32 %193, i32* %195)
  br label %197

197:                                              ; preds = %192, %185
  %198 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %199 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @ieee80211_is_mgmt(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %197
  %204 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %205 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ieee80211_is_beacon(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load i8*, i8** @TXOP_BACKOFF, align 8
  %211 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %212 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  store i8* %210, i8** %214, align 8
  br label %235

215:                                              ; preds = %203, %197
  %216 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %217 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %215
  %223 = load i8*, i8** @TXOP_SIFS, align 8
  %224 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %225 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  store i8* %223, i8** %227, align 8
  br label %234

228:                                              ; preds = %215
  %229 = load i8*, i8** @TXOP_HTTXOP, align 8
  %230 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %231 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 3
  store i8* %229, i8** %233, align 8
  br label %234

234:                                              ; preds = %228, %222
  br label %235

235:                                              ; preds = %130, %234, %209
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_get_rate_mcs(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
