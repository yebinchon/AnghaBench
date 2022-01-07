; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i64, i64, i32, i32, i64, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mac80211 bss info changed\00", align 1
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@WL1251_DEFAULT_LOW_RSSI_WEIGHT = common dso_local global i32 0, align 4
@WL1251_DEFAULT_LOW_RSSI_DEPTH = common dso_local global i32 0, align 4
@WL1251_ACX_LOW_RSSI_TYPE_EDGE = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CMD_NULL_DATA = common dso_local global i32 0, align 4
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@CMD_PS_POLL = common dso_local global i32 0, align 4
@WL1251_DEFAULT_BEACON_INT = common dso_local global i32 0, align 4
@WL1251_DEFAULT_DTIM_PERIOD = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@SLOT_TIME_SHORT = common dso_local global i32 0, align 4
@SLOT_TIME_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Set slot time failed %d\00", align 1
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@ACX_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@ACX_PREAMBLE_LONG = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@CTSPROTECT_ENABLE = common dso_local global i32 0, align 4
@CTSPROTECT_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Set ctsprotect failed %d\00", align 1
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@CMD_BEACON = common dso_local global i32 0, align 4
@CMD_PROBE_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1251_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1251*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1251*, %struct.wl1251** %14, align 8
  store %struct.wl1251* %15, %struct.wl1251** %9, align 8
  %16 = load i32, i32* @DEBUG_MAC80211, align 4
  %17 = call i32 @wl1251_debug(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %19 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %22 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %313

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WL1251_DEFAULT_LOW_RSSI_WEIGHT, align 4
  %37 = load i32, i32* @WL1251_DEFAULT_LOW_RSSI_DEPTH, align 4
  %38 = load i32, i32* @WL1251_ACX_LOW_RSSI_TYPE_EDGE, align 4
  %39 = call i32 @wl1251_acx_low_rssi(%struct.wl1251* %32, i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %313

43:                                               ; preds = %31
  %44 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %48 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %26
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %120

54:                                               ; preds = %49
  %55 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %56 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %64 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %67 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.sk_buff* @ieee80211_nullfunc_get(i32 %65, i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %11, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  br label %310

73:                                               ; preds = %54
  %74 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %75 = load i32, i32* @CMD_NULL_DATA, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %74, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = call i32 @dev_kfree_skb(%struct.sk_buff* %83)
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %310

88:                                               ; preds = %73
  %89 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %90 = call i32 @wl1251_build_qos_null_data(%struct.wl1251* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %313

94:                                               ; preds = %88
  %95 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %96 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %102 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %103 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %106 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %109 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %112 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @wl1251_join(%struct.wl1251* %101, i64 %104, i32 %107, i32 %110, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %100
  br label %310

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119, %49
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %179

125:                                              ; preds = %120
  %126 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %127 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %171

130:                                              ; preds = %125
  %131 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %135 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %137 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %140 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.sk_buff* @ieee80211_pspoll_get(i32 %138, i32 %141)
  store %struct.sk_buff* %142, %struct.sk_buff** %11, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = icmp ne %struct.sk_buff* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %130
  br label %310

146:                                              ; preds = %130
  %147 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %148 = load i32, i32* @CMD_PS_POLL, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %147, i32 %148, i32 %151, i32 %154)
  store i32 %155, i32* %12, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %157 = call i32 @dev_kfree_skb(%struct.sk_buff* %156)
  %158 = load i32, i32* %12, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  br label %310

161:                                              ; preds = %146
  %162 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %163 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %164 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @wl1251_acx_aid(%struct.wl1251* %162, i32 %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %310

170:                                              ; preds = %161
  br label %178

171:                                              ; preds = %125
  %172 = load i32, i32* @WL1251_DEFAULT_BEACON_INT, align 4
  %173 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %174 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @WL1251_DEFAULT_DTIM_PERIOD, align 4
  %176 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %177 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %170
  br label %179

179:                                              ; preds = %178, %120
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %179
  %185 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %186 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %191 = load i32, i32* @SLOT_TIME_SHORT, align 4
  %192 = call i32 @wl1251_acx_slot(%struct.wl1251* %190, i32 %191)
  store i32 %192, i32* %12, align 4
  br label %197

193:                                              ; preds = %184
  %194 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %195 = load i32, i32* @SLOT_TIME_LONG, align 4
  %196 = call i32 @wl1251_acx_slot(%struct.wl1251* %194, i32 %195)
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %193, %189
  %198 = load i32, i32* %12, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @wl1251_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %201)
  br label %310

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %179
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %204
  %210 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %211 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %216 = load i32, i32* @ACX_PREAMBLE_SHORT, align 4
  %217 = call i32 @wl1251_acx_set_preamble(%struct.wl1251* %215, i32 %216)
  br label %222

218:                                              ; preds = %209
  %219 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %220 = load i32, i32* @ACX_PREAMBLE_LONG, align 4
  %221 = call i32 @wl1251_acx_set_preamble(%struct.wl1251* %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %214
  br label %223

223:                                              ; preds = %222, %204
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %248

228:                                              ; preds = %223
  %229 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %230 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %235 = load i32, i32* @CTSPROTECT_ENABLE, align 4
  %236 = call i32 @wl1251_acx_cts_protect(%struct.wl1251* %234, i32 %235)
  store i32 %236, i32* %12, align 4
  br label %241

237:                                              ; preds = %228
  %238 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %239 = load i32, i32* @CTSPROTECT_DISABLE, align 4
  %240 = call i32 @wl1251_acx_cts_protect(%struct.wl1251* %238, i32 %239)
  store i32 %240, i32* %12, align 4
  br label %241

241:                                              ; preds = %237, %233
  %242 = load i32, i32* %12, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @wl1251_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %245)
  br label %310

247:                                              ; preds = %241
  br label %248

248:                                              ; preds = %247, %223
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %309

253:                                              ; preds = %248
  %254 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %255 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %256 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %254, %struct.ieee80211_vif* %255)
  store %struct.sk_buff* %256, %struct.sk_buff** %10, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %258 = icmp ne %struct.sk_buff* %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %253
  br label %310

260:                                              ; preds = %253
  %261 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %262 = load i32, i32* @CMD_BEACON, align 4
  %263 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %261, i32 %262, i32 %265, i32 %268)
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %260
  %273 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %274 = call i32 @dev_kfree_skb(%struct.sk_buff* %273)
  br label %310

275:                                              ; preds = %260
  %276 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %277 = load i32, i32* @CMD_PROBE_RESP, align 4
  %278 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %279 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %276, i32 %277, i32 %280, i32 %283)
  store i32 %284, i32* %12, align 4
  %285 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %286 = call i32 @dev_kfree_skb(%struct.sk_buff* %285)
  %287 = load i32, i32* %12, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %275
  br label %310

290:                                              ; preds = %275
  %291 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %292 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %293 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %296 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %299 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %302 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @wl1251_join(%struct.wl1251* %291, i64 %294, i32 %297, i32 %300, i32 %303)
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %12, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %290
  br label %310

308:                                              ; preds = %290
  br label %309

309:                                              ; preds = %308, %248
  br label %310

310:                                              ; preds = %309, %307, %289, %272, %259, %244, %200, %169, %160, %145, %117, %87, %72
  %311 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %312 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %311)
  br label %313

313:                                              ; preds = %310, %93, %42, %25
  %314 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %315 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %314, i32 0, i32 1
  %316 = call i32 @mutex_unlock(i32* %315)
  ret void
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_low_rssi(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_nullfunc_get(i32, i32) #1

declare dso_local i32 @wl1251_cmd_template_set(%struct.wl1251*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wl1251_build_qos_null_data(%struct.wl1251*) #1

declare dso_local i32 @wl1251_join(%struct.wl1251*, i64, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_pspoll_get(i32, i32) #1

declare dso_local i32 @wl1251_acx_aid(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_acx_slot(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @wl1251_acx_set_preamble(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_acx_cts_protect(%struct.wl1251*, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
