; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_fill_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_fill_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64*, i32, i64 }
%struct.wl12xx_vif = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i64, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.timespec = type { i32 }
%struct.wl1271_tx_hw_descr = type { i64, i8*, i32, i8*, i32 }
%struct.ieee80211_hdr = type { i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@TX_HW_MGMT_PKT_LIFETIME_TU = common dso_local global i32 0, align 4
@TX_HW_AP_MODE_PKT_LIFETIME_TU = common dso_local global i32 0, align 4
@SESSION_COUNTER_INVALID = common dso_local global i64 0, align 8
@TX_HW_ATTR_OFST_SESSION_COUNTER = common dso_local global i64 0, align 8
@TX_HW_ATTR_SESSION_COUNTER = common dso_local global i64 0, align 8
@TX_HW_ATTR_TX_DUMMY_REQ = common dso_local global i32 0, align 4
@WLCORE_QUIRK_AP_ZERO_SESSION_ID = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@TX_HW_ATTR_OFST_RATE_POLICY = common dso_local global i32 0, align 4
@TX_HW_ATTR_HOST_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i32, %struct.ieee80211_tx_info*, i64)* @wl1271_tx_fill_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_tx_fill_hdr(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, i32 %3, %struct.ieee80211_tx_info* %4, i64 %5) #0 {
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timespec, align 4
  %14 = alloca %struct.wl1271_tx_hw_descr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ieee80211_hdr*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.wl1271_tx_hw_descr*
  store %struct.wl1271_tx_hw_descr* %28, %struct.wl1271_tx_hw_descr** %14, align 8
  %29 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %30 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %29, i64 1
  %31 = bitcast %struct.wl1271_tx_hw_descr* %30 to i64*
  store i64* %31, i64** %21, align 8
  %32 = load i64*, i64** %21, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = bitcast i64* %35 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %36, %struct.ieee80211_hdr** %20, align 8
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %20, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %6
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @ieee80211_hdrlen(i32 %43)
  store i32 %44, i32* %23, align 4
  %45 = load i64*, i64** %21, align 8
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %20, align 8
  %47 = load i32, i32* %23, align 4
  %48 = call i32 @memmove(i64* %45, %struct.ieee80211_hdr* %46, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = call i32 @skb_network_offset(%struct.sk_buff* %50)
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @skb_set_network_header(%struct.sk_buff* %49, i32 %53)
  br label %55

55:                                               ; preds = %42, %6
  %56 = call i32 @getnstimeofday(%struct.timespec* %13)
  %57 = call i32 @timespec_to_ns(%struct.timespec* %13)
  %58 = ashr i32 %57, 10
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = call i32 @cpu_to_le32(i64 %64)
  %66 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %67 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %68, %struct.sk_buff* %69)
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %55
  %74 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %75 = icmp ne %struct.wl12xx_vif* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %78 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76, %73, %55
  %83 = load i32, i32* @TX_HW_MGMT_PKT_LIFETIME_TU, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %86 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  br label %92

87:                                               ; preds = %76
  %88 = load i32, i32* @TX_HW_AP_MODE_PKT_LIFETIME_TU, align 4
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %91 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %93)
  %95 = call i32 @wl1271_tx_get_queue(i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %100 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %22, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load i64, i64* @SESSION_COUNTER_INVALID, align 8
  %105 = load i64, i64* @TX_HW_ATTR_OFST_SESSION_COUNTER, align 8
  %106 = shl i64 %104, %105
  %107 = load i64, i64* @TX_HW_ATTR_SESSION_COUNTER, align 8
  %108 = and i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* @TX_HW_ATTR_TX_DUMMY_REQ, align 4
  %111 = load i32, i32* %18, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %18, align 4
  br label %142

113:                                              ; preds = %92
  %114 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %115 = icmp ne %struct.wl12xx_vif* %114, null
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %118 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %24, align 8
  %123 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %124 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @WLCORE_QUIRK_AP_ZERO_SESSION_ID, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %116
  %130 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %131 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i64 0, i64* %24, align 8
  br label %136

136:                                              ; preds = %135, %129, %116
  %137 = load i64, i64* %24, align 8
  %138 = load i64, i64* @TX_HW_ATTR_OFST_SESSION_COUNTER, align 8
  %139 = shl i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %136, %113
  br label %142

142:                                              ; preds = %141, %103
  %143 = load i64, i64* %12, align 8
  %144 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %145 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* %22, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %150 = icmp ne %struct.wl12xx_vif* %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %148, %142
  store i32 0, i32* %16, align 4
  br label %246

152:                                              ; preds = %148
  %153 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %154 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %199

158:                                              ; preds = %152
  %159 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @ETH_P_PAE, align 4
  %163 = call i64 @cpu_to_be16(i32 %162)
  %164 = icmp eq i64 %161, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %167 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %16, align 4
  br label %198

170:                                              ; preds = %158
  %171 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %172 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %179 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %16, align 4
  br label %197

182:                                              ; preds = %170
  %183 = load i32, i32* %19, align 4
  %184 = call i64 @ieee80211_is_data(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %188 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %16, align 4
  br label %196

191:                                              ; preds = %182
  %192 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %193 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %191, %186
  br label %197

197:                                              ; preds = %196, %177
  br label %198

198:                                              ; preds = %197, %165
  br label %245

199:                                              ; preds = %152
  %200 = load i64, i64* %12, align 8
  %201 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %202 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %200, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %199
  %207 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %208 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  store i32 %210, i32* %16, align 4
  br label %244

211:                                              ; preds = %199
  %212 = load i64, i64* %12, align 8
  %213 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %214 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %212, %216
  br i1 %217, label %229, label %218

218:                                              ; preds = %211
  %219 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* @ETH_P_PAE, align 4
  %223 = call i64 @cpu_to_be16(i32 %222)
  %224 = icmp eq i64 %221, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %218
  %226 = load i32, i32* %19, align 4
  %227 = call i64 @ieee80211_is_data(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %225, %218, %211
  %230 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %231 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %16, align 4
  br label %243

234:                                              ; preds = %225
  %235 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %236 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %16, align 4
  br label %243

243:                                              ; preds = %234, %229
  br label %244

244:                                              ; preds = %243, %206
  br label %245

245:                                              ; preds = %244, %198
  br label %246

246:                                              ; preds = %245, %151
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* @TX_HW_ATTR_OFST_RATE_POLICY, align 4
  %249 = shl i32 %247, %248
  %250 = load i32, i32* %18, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %18, align 4
  %252 = load i32, i32* %19, align 4
  %253 = call i64 @ieee80211_is_auth(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %246
  %256 = load i32, i32* %19, align 4
  %257 = call i64 @ieee80211_has_protected(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = load i32, i32* @TX_HW_ATTR_HOST_ENCRYPT, align 4
  %261 = load i32, i32* %18, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %18, align 4
  br label %263

263:                                              ; preds = %259, %255, %246
  %264 = load i32, i32* %18, align 4
  %265 = call i8* @cpu_to_le16(i32 %264)
  %266 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %267 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %266, i32 0, i32 1
  store i8* %265, i8** %267, align 8
  %268 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %269 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %271 = call i32 @wlcore_hw_set_tx_desc_csum(%struct.wl1271* %268, %struct.wl1271_tx_hw_descr* %269, %struct.sk_buff* %270)
  %272 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %273 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %14, align 8
  %274 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %275 = call i32 @wlcore_hw_set_tx_desc_data_len(%struct.wl1271* %272, %struct.wl1271_tx_hw_descr* %273, %struct.sk_buff* %274)
  ret void
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @memmove(i64*, %struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i32 @timespec_to_ns(%struct.timespec*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @wlcore_hw_set_tx_desc_csum(%struct.wl1271*, %struct.wl1271_tx_hw_descr*, %struct.sk_buff*) #1

declare dso_local i32 @wlcore_hw_set_tx_desc_data_len(%struct.wl1271*, %struct.wl1271_tx_hw_descr*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
