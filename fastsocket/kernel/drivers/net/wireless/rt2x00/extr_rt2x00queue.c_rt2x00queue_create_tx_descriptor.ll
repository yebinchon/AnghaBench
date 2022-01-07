; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.txentry_desc = type { i64, i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i64, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rate = type { i32 }
%struct.rt2x00_rate = type { i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@ENTRY_TXD_ACK = common dso_local global i32 0, align 4
@ENTRY_TXD_BURST = common dso_local global i32 0, align 4
@ENTRY_TXD_RTS_FRAME = common dso_local global i32 0, align 4
@ENTRY_TXD_CTS_FRAME = common dso_local global i32 0, align 4
@ENTRY_TXD_RETRY_MODE = common dso_local global i32 0, align 4
@ENTRY_TXD_MORE_FRAG = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_MORE_FRAMES = common dso_local global i32 0, align 4
@ENTRY_TXD_REQ_TIMESTAMP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@ENTRY_TXD_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@RATE_MODE_HT_GREENFIELD = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_MODE_HT_MIX = common dso_local global i32 0, align 4
@DEV_RATE_OFDM = common dso_local global i32 0, align 4
@RATE_MODE_OFDM = common dso_local global i32 0, align 4
@RATE_MODE_CCK = common dso_local global i32 0, align 4
@REQUIRE_HT_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*, %struct.ieee80211_sta*)* @rt2x00queue_create_tx_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_create_tx_descriptor(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.txentry_desc*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_tx_rate*, align 8
  %12 = alloca %struct.ieee80211_rate*, align 8
  %13 = alloca %struct.rt2x00_rate*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %7, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %10, align 8
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %22, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %23, i64 0
  store %struct.ieee80211_tx_rate* %24, %struct.ieee80211_tx_rate** %11, align 8
  store %struct.rt2x00_rate* null, %struct.rt2x00_rate** %13, align 8
  %25 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %26 = call i32 @memset(%struct.txentry_desc* %25, i32 0, i32 24)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %31 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %32)
  %34 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %35 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @ENTRY_TXD_ACK, align 4
  %44 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %45 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %44, i32 0, i32 2
  %46 = call i32 @__set_bit(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %4
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ieee80211_is_rts(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ieee80211_is_cts(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %53, %47
  %60 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %61 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %62 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %61, i32 0, i32 2
  %63 = call i32 @__set_bit(i32 %60, i32* %62)
  %64 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ieee80211_is_rts(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i32, i32* @ENTRY_TXD_RTS_FRAME, align 4
  %71 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %72 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %71, i32 0, i32 2
  %73 = call i32 @__set_bit(i32 %70, i32* %72)
  br label %79

74:                                               ; preds = %59
  %75 = load i32, i32* @ENTRY_TXD_CTS_FRAME, align 4
  %76 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %77 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %76, i32 0, i32 2
  %78 = call i32 @__set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %87 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %90 = call %struct.ieee80211_rate* @ieee80211_get_rts_cts_rate(i32 %88, %struct.ieee80211_tx_info* %89)
  store %struct.ieee80211_rate* %90, %struct.ieee80211_rate** %12, align 8
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %94 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %95, align 8
  %97 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %96, i64 0
  %98 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %102 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %104 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %107 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %105, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %92
  %111 = load i32, i32* @ENTRY_TXD_RETRY_MODE, align 4
  %112 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %113 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %112, i32 0, i32 2
  %114 = call i32 @__set_bit(i32 %111, i32* %113)
  br label %115

115:                                              ; preds = %110, %92
  %116 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %117 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @ieee80211_has_morefrags(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %123 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %124 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %123, i32 0, i32 2
  %125 = call i32 @__set_bit(i32 %122, i32* %124)
  %126 = load i32, i32* @ENTRY_TXD_MORE_FRAG, align 4
  %127 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %128 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %127, i32 0, i32 2
  %129 = call i32 @__set_bit(i32 %126, i32* %128)
  br label %130

130:                                              ; preds = %121, %115
  %131 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %132 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @IEEE80211_TX_CTL_MORE_FRAMES, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32, i32* @ENTRY_TXD_BURST, align 4
  %139 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %140 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %139, i32 0, i32 2
  %141 = call i32 @__set_bit(i32 %138, i32* %140)
  br label %142

142:                                              ; preds = %137, %130
  %143 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @ieee80211_is_beacon(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %150 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ieee80211_is_probe_resp(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %148, %142
  %155 = load i32, i32* @ENTRY_TXD_REQ_TIMESTAMP, align 4
  %156 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %157 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %156, i32 0, i32 2
  %158 = call i32 @__set_bit(i32 %155, i32* %157)
  br label %159

159:                                              ; preds = %154, %148
  %160 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %161 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %159
  %167 = load i32, i32* @ENTRY_TXD_RTS_FRAME, align 4
  %168 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %169 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %168, i32 0, i32 2
  %170 = call i64 @test_bit(i32 %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* @ENTRY_TXD_FIRST_FRAGMENT, align 4
  %174 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %175 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %174, i32 0, i32 2
  %176 = call i32 @__set_bit(i32 %173, i32* %175)
  br label %177

177:                                              ; preds = %172, %166, %159
  %178 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %179 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* @RATE_MODE_HT_GREENFIELD, align 4
  %186 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %187 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  br label %225

188:                                              ; preds = %177
  %189 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %11, align 8
  %190 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @RATE_MODE_HT_MIX, align 4
  %197 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %198 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 8
  br label %224

199:                                              ; preds = %188
  %200 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %201 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %204 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32 %202, %struct.ieee80211_tx_info* %203)
  store %struct.ieee80211_rate* %204, %struct.ieee80211_rate** %12, align 8
  %205 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %206 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.rt2x00_rate* @rt2x00_get_rate(i32 %207)
  store %struct.rt2x00_rate* %208, %struct.rt2x00_rate** %13, align 8
  %209 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %13, align 8
  %210 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @DEV_RATE_OFDM, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %199
  %216 = load i32, i32* @RATE_MODE_OFDM, align 4
  %217 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %218 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  br label %223

219:                                              ; preds = %199
  %220 = load i32, i32* @RATE_MODE_CCK, align 4
  %221 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %222 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %195
  br label %225

225:                                              ; preds = %224, %184
  %226 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %229 = call i32 @rt2x00crypto_create_tx_descriptor(%struct.rt2x00_dev* %226, %struct.sk_buff* %227, %struct.txentry_desc* %228)
  %230 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %232 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %233 = call i32 @rt2x00queue_create_tx_descriptor_seq(%struct.rt2x00_dev* %230, %struct.sk_buff* %231, %struct.txentry_desc* %232)
  %234 = load i32, i32* @REQUIRE_HT_TX_DESC, align 4
  %235 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %236 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %235, i32 0, i32 1
  %237 = call i64 @test_bit(i32 %234, i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %225
  %240 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %242 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %243 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %244 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %13, align 8
  %245 = call i32 @rt2x00queue_create_tx_descriptor_ht(%struct.rt2x00_dev* %240, %struct.sk_buff* %241, %struct.txentry_desc* %242, %struct.ieee80211_sta* %243, %struct.rt2x00_rate* %244)
  br label %252

246:                                              ; preds = %225
  %247 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %249 = load %struct.txentry_desc*, %struct.txentry_desc** %7, align 8
  %250 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %13, align 8
  %251 = call i32 @rt2x00queue_create_tx_descriptor_plcp(%struct.rt2x00_dev* %247, %struct.sk_buff* %248, %struct.txentry_desc* %249, %struct.rt2x00_rate* %250)
  br label %252

252:                                              ; preds = %246, %239
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.txentry_desc*, i32, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_is_rts(i32) #1

declare dso_local i64 @ieee80211_is_cts(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_rts_cts_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(i32, %struct.ieee80211_tx_info*) #1

declare dso_local %struct.rt2x00_rate* @rt2x00_get_rate(i32) #1

declare dso_local i32 @rt2x00crypto_create_tx_descriptor(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00queue_create_tx_descriptor_seq(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00queue_create_tx_descriptor_ht(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*, %struct.ieee80211_sta*, %struct.rt2x00_rate*) #1

declare dso_local i32 @rt2x00queue_create_tx_descriptor_plcp(%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*, %struct.rt2x00_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
