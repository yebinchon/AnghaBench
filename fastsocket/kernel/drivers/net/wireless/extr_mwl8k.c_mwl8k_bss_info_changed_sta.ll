; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_bss_info_changed_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_bss_info_changed_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_13__, %struct.mwl8k_priv* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.mwl8k_priv = type { i32, i32*, i64 }
%struct.ieee80211_vif = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@mwl8k_rates_24 = common dso_local global %struct.TYPE_16__* null, align 8
@mwl8k_rates_50 = common dso_local global %struct.TYPE_15__* null, align 8
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @mwl8k_bss_info_changed_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_bss_info_changed_sta(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwl8k_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_sta*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 1
  %18 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %17, align 8
  store %struct.mwl8k_priv* %18, %struct.mwl8k_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = call i64 @mwl8k_fw_lock(%struct.ieee80211_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %273

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %36 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %28, %23
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %37
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %45, i32 %49)
  store %struct.ieee80211_sta* %50, %struct.ieee80211_sta** %13, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %52 = icmp eq %struct.ieee80211_sta* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = call i32 (...) @rcu_read_unlock()
  br label %270

55:                                               ; preds = %43
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  br label %80

72:                                               ; preds = %55
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 5
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %72, %65
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %82 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memcpy(i32* %81, i32 %86, i32 16)
  %88 = call i32 (...) @rcu_read_unlock()
  br label %89

89:                                               ; preds = %80, %37
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %89
  %95 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %102 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %100
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %107 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %110 = call i32 @mwl8k_cmd_set_rate(%struct.ieee80211_hw* %106, %struct.ieee80211_vif* %107, i32 %108, i32* %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %270

114:                                              ; preds = %105
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %116 = call i32 @mwl8k_cmd_use_fixed_rate_sta(%struct.ieee80211_hw* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %270

120:                                              ; preds = %114
  br label %178

121:                                              ; preds = %100, %94, %89
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %177

126:                                              ; preds = %121
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %177

132:                                              ; preds = %126
  %133 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %134 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %177

137:                                              ; preds = %132
  %138 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %139 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ffs(i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %145, %137
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %150 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %148
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** @mwl8k_rates_24, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %15, align 4
  br label %172

165:                                              ; preds = %148
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** @mwl8k_rates_50, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %165, %158
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @mwl8k_cmd_use_fixed_rate_ap(%struct.ieee80211_hw* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %132, %126, %121
  br label %178

178:                                              ; preds = %177, %120
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %185 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %186 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @mwl8k_set_radio_preamble(%struct.ieee80211_hw* %184, i32 %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  br label %270

193:                                              ; preds = %183
  br label %194

194:                                              ; preds = %193, %178
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %194
  %200 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %201 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %199
  %205 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %206 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %207 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @mwl8k_cmd_set_slot(%struct.ieee80211_hw* %205, i32 %209)
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %12, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  br label %270

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %214, %199, %194
  %216 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %217 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %244

221:                                              ; preds = %215
  %222 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %223 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %244, label %226

226:                                              ; preds = %221
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %229 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @BSS_CHANGED_HT, align 4
  %232 = or i32 %230, %231
  %233 = and i32 %227, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %226
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %237 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @mwl8k_cmd_set_aid(%struct.ieee80211_hw* %236, %struct.ieee80211_vif* %237, i32 %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %235
  br label %270

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %243, %226, %221, %215
  %245 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %246 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %269

250:                                              ; preds = %244
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %253 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %254 = or i32 %252, %253
  %255 = and i32 %251, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %269

257:                                              ; preds = %250
  %258 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %259 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %262 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @ETH_ALEN, align 4
  %266 = call i32 @memcpy(i32* %260, i32 %264, i32 %265)
  %267 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %268 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %267, i32 0, i32 0
  store i32 1, i32* %268, align 8
  br label %269

269:                                              ; preds = %257, %250, %244
  br label %270

270:                                              ; preds = %269, %242, %213, %192, %119, %113, %53
  %271 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %272 = call i32 @mwl8k_fw_unlock(%struct.ieee80211_hw* %271)
  br label %273

273:                                              ; preds = %270, %22
  ret void
}

declare dso_local i64 @mwl8k_fw_lock(%struct.ieee80211_hw*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mwl8k_cmd_set_rate(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @mwl8k_cmd_use_fixed_rate_sta(%struct.ieee80211_hw*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @mwl8k_cmd_use_fixed_rate_ap(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @mwl8k_set_radio_preamble(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_slot(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_aid(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mwl8k_fw_unlock(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
