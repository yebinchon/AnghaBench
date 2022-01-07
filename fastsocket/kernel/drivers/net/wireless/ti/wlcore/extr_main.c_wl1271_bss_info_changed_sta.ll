; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i64, i32, i32*, i32, %struct.TYPE_6__, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.wl12xx_vif = type { i64, i64, i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32*, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@WLVIF_FLAG_IBSS_JOINED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@DEBUG_ADHOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ad-hoc beaconing: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@HW_HT_RATES_OFFSET = common dso_local global i32 0, align 4
@HW_MIMO_RATES_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"ibss_joined: %d\00", align 1
@CONF_TX_IBSS_DEFAULT_RATES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cmd join failed %d\00", align 1
@WLVIF_FLAG_STA_AUTHORIZED = common dso_local global i32 0, align 4
@BSS_CHANGED_PS = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@WLVIF_FLAG_IN_PS = common dso_local global i32 0, align 4
@STATION_POWER_SAVE_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@STATION_AUTO_PS_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@DEBUG_PSM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"%s ps enabled\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"enter %s ps failed %d\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"auto ps disabled\00", align 1
@STATION_ACTIVE_MODE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"exit auto ps failed %d\00", align 1
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"Set ht cap failed %d\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Set ht information failed %d\00", align 1
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"build arp rsp failed: %d\00", align 1
@ACX_ARP_FILTER_ARP_FILTERING = common dso_local global i32 0, align 4
@ACX_ARP_FILTER_AUTO_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_bss_info_changed_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_bss_info_changed_sta(%struct.wl1271* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_sta*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_sta_ht_cap, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %25)
  store %struct.wl12xx_vif* %26, %struct.wl12xx_vif** %9, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @wl1271_bss_beacon_info_changed(%struct.wl1271* %36, %struct.ieee80211_vif* %37, %struct.ieee80211_bss_conf* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %520

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* @WLVIF_FLAG_IBSS_JOINED, align 4
  %57 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %58 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %57, i32 0, i32 5
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  store i32 1, i32* %12, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %62 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %63 = call i32 @wlcore_unset_assoc(%struct.wl1271* %61, %struct.wl12xx_vif* %62)
  %64 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %65 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %66 = call i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271* %64, %struct.wl12xx_vif* %65)
  br label %67

67:                                               ; preds = %60, %55
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %73, %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %82, %77
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* @DEBUG_ADHOC, align 4
  %96 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %96, i32 0, i32 12
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %102 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %101)
  store i32 1, i32* %10, align 4
  br label %103

103:                                              ; preds = %94, %91, %86
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %103
  store i32 0, i32* %18, align 4
  %109 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %108
  %115 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %116 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @wl1271_acx_rssi_snr_trigger(%struct.wl1271* %115, %struct.wl12xx_vif* %116, i32 %117, i32 %120, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %520

128:                                              ; preds = %114
  %129 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %130 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %133 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %128, %103
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %137 = load i32, i32* @BSS_CHANGED_HT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %140 = or i32 %138, %139
  %141 = and i32 %135, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %192

143:                                              ; preds = %134
  %144 = call i32 (...) @rcu_read_lock()
  %145 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %146 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %145, i32 %148)
  store %struct.ieee80211_sta* %149, %struct.ieee80211_sta** %15, align 8
  %150 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %151 = icmp ne %struct.ieee80211_sta* %150, null
  br i1 %151, label %152, label %190

152:                                              ; preds = %143
  %153 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %154 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %19, align 8
  %158 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %159 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %162 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %13, align 4
  %166 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %167 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %152
  %172 = load i32*, i32** %19, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @HW_HT_RATES_OFFSET, align 4
  %176 = shl i32 %174, %175
  %177 = load i32*, i32** %19, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @HW_MIMO_RATES_OFFSET, align 4
  %181 = shl i32 %179, %180
  %182 = or i32 %176, %181
  %183 = load i32, i32* %13, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %171, %152
  %186 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %187 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %186, i32 0, i32 1
  %188 = bitcast %struct.ieee80211_sta_ht_cap* %17 to i8*
  %189 = bitcast %struct.ieee80211_sta_ht_cap* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 %189, i64 16, i1 false)
  store i32 1, i32* %16, align 4
  br label %190

190:                                              ; preds = %185, %143
  %191 = call i32 (...) @rcu_read_unlock()
  br label %192

192:                                              ; preds = %190, %134
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %222

197:                                              ; preds = %192
  %198 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %199 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @is_zero_ether_addr(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %197
  %204 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %205 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %206 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @wlcore_set_bssid(%struct.wl1271* %204, %struct.wl12xx_vif* %205, %struct.ieee80211_bss_conf* %206, i32 %207)
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %520

212:                                              ; preds = %203
  store i32 1, i32* %10, align 4
  br label %221

213:                                              ; preds = %197
  %214 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %215 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %216 = call i32 @wlcore_clear_bssid(%struct.wl1271* %214, %struct.wl12xx_vif* %215)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %520

220:                                              ; preds = %213
  br label %221

221:                                              ; preds = %220, %212
  br label %222

222:                                              ; preds = %221, %192
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %267

227:                                              ; preds = %222
  %228 = load i32, i32* @DEBUG_ADHOC, align 4
  %229 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %230 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %228, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %231)
  %233 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %234 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %227
  %238 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %239 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  store i32 %240, i32* %20, align 4
  %241 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %242 = load i32, i32* %20, align 4
  %243 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %244 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @wl1271_tx_enabled_rates_get(%struct.wl1271* %241, i32 %242, i64 %245)
  %247 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %248 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %247, i32 0, i32 6
  store i32 %246, i32* %248, align 4
  %249 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %250 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %251 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %249, i32 %252)
  %254 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %255 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %254, i32 0, i32 7
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* @CONF_TX_IBSS_DEFAULT_RATES, align 4
  %257 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %258 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %257, i32 0, i32 4
  store i32 %256, i32* %258, align 4
  %259 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %260 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %261 = call i32 @wl1271_acx_sta_rate_policies(%struct.wl1271* %259, %struct.wl12xx_vif* %260)
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %237
  br label %520

265:                                              ; preds = %237
  br label %266

266:                                              ; preds = %265, %227
  br label %267

267:                                              ; preds = %266, %222
  %268 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %269 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %270 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @wl1271_bss_erp_info_changed(%struct.wl1271* %268, %struct.ieee80211_vif* %269, %struct.ieee80211_bss_conf* %270, i32 %271)
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %520

276:                                              ; preds = %267
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %276
  %280 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %281 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %282 = call i32 @wlcore_join(%struct.wl1271* %280, %struct.wl12xx_vif* %281)
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %14, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i32, i32* %14, align 4
  %287 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %286)
  br label %520

288:                                              ; preds = %279
  br label %289

289:                                              ; preds = %288, %276
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %324

294:                                              ; preds = %289
  %295 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %296 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %319

299:                                              ; preds = %294
  %300 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %301 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %302 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @wlcore_set_assoc(%struct.wl1271* %300, %struct.wl12xx_vif* %301, %struct.ieee80211_bss_conf* %302, i32 %303)
  store i32 %304, i32* %14, align 4
  %305 = load i32, i32* %14, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %520

308:                                              ; preds = %299
  %309 = load i32, i32* @WLVIF_FLAG_STA_AUTHORIZED, align 4
  %310 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %311 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %310, i32 0, i32 5
  %312 = call i64 @test_bit(i32 %309, i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %308
  %315 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %316 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %317 = call i32 @wl12xx_set_authorized(%struct.wl1271* %315, %struct.wl12xx_vif* %316)
  br label %318

318:                                              ; preds = %314, %308
  br label %323

319:                                              ; preds = %294
  %320 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %321 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %322 = call i32 @wlcore_unset_assoc(%struct.wl1271* %320, %struct.wl12xx_vif* %321)
  br label %323

323:                                              ; preds = %319, %318
  br label %324

324:                                              ; preds = %323, %289
  %325 = load i32, i32* %8, align 4
  %326 = load i32, i32* @BSS_CHANGED_PS, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %398

329:                                              ; preds = %324
  %330 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %331 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %330, i32 0, i32 7
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %372

334:                                              ; preds = %329
  %335 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %336 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %337 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %336, i32 0, i32 5
  %338 = call i64 @test_bit(i32 %335, i32* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %372

340:                                              ; preds = %334
  %341 = load i32, i32* @WLVIF_FLAG_IN_PS, align 4
  %342 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %343 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %342, i32 0, i32 5
  %344 = call i64 @test_bit(i32 %341, i32* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %372, label %346

346:                                              ; preds = %340
  %347 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %348 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %346
  %354 = load i32, i32* @STATION_POWER_SAVE_MODE, align 4
  store i32 %354, i32* %21, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %22, align 8
  br label %357

355:                                              ; preds = %346
  %356 = load i32, i32* @STATION_AUTO_PS_MODE, align 4
  store i32 %356, i32* %21, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %22, align 8
  br label %357

357:                                              ; preds = %355, %353
  %358 = load i32, i32* @DEBUG_PSM, align 4
  %359 = load i8*, i8** %22, align 8
  %360 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %358, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %359)
  %361 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %362 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %363 = load i32, i32* %21, align 4
  %364 = call i32 @wl1271_ps_set_mode(%struct.wl1271* %361, %struct.wl12xx_vif* %362, i32 %363)
  store i32 %364, i32* %14, align 4
  %365 = load i32, i32* %14, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %357
  %368 = load i8*, i8** %22, align 8
  %369 = load i32, i32* %14, align 4
  %370 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %368, i32 %369)
  br label %371

371:                                              ; preds = %367, %357
  br label %397

372:                                              ; preds = %340, %334, %329
  %373 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %374 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %373, i32 0, i32 7
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %396, label %377

377:                                              ; preds = %372
  %378 = load i32, i32* @WLVIF_FLAG_IN_PS, align 4
  %379 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %380 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %379, i32 0, i32 5
  %381 = call i64 @test_bit(i32 %378, i32* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %377
  %384 = load i32, i32* @DEBUG_PSM, align 4
  %385 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %384, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %386 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %387 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %388 = load i32, i32* @STATION_ACTIVE_MODE, align 4
  %389 = call i32 @wl1271_ps_set_mode(%struct.wl1271* %386, %struct.wl12xx_vif* %387, i32 %388)
  store i32 %389, i32* %14, align 4
  %390 = load i32, i32* %14, align 4
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %383
  %393 = load i32, i32* %14, align 4
  %394 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %393)
  br label %395

395:                                              ; preds = %392, %383
  br label %396

396:                                              ; preds = %395, %377, %372
  br label %397

397:                                              ; preds = %396, %371
  br label %398

398:                                              ; preds = %397, %324
  %399 = load i32, i32* %16, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %446

401:                                              ; preds = %398
  %402 = load i32, i32* %8, align 4
  %403 = load i32, i32* @BSS_CHANGED_HT, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %446

406:                                              ; preds = %401
  %407 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %408 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %407, i32 0, i32 6
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %412 = icmp ne i64 %410, %411
  %413 = zext i1 %412 to i32
  store i32 %413, i32* %23, align 4
  %414 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %415 = load i32, i32* %23, align 4
  %416 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %417 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %420 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @wlcore_hw_set_peer_cap(%struct.wl1271* %414, %struct.ieee80211_sta_ht_cap* %17, i32 %415, i32 %418, i32 %422)
  store i32 %423, i32* %14, align 4
  %424 = load i32, i32* %14, align 4
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %406
  %427 = load i32, i32* %14, align 4
  %428 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %427)
  br label %520

429:                                              ; preds = %406
  %430 = load i32, i32* %23, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %445

432:                                              ; preds = %429
  %433 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %434 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %435 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %436 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @wl1271_acx_set_ht_information(%struct.wl1271* %433, %struct.wl12xx_vif* %434, i32 %437)
  store i32 %438, i32* %14, align 4
  %439 = load i32, i32* %14, align 4
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %432
  %442 = load i32, i32* %14, align 4
  %443 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %442)
  br label %520

444:                                              ; preds = %432
  br label %445

445:                                              ; preds = %444, %429
  br label %446

446:                                              ; preds = %445, %401, %398
  %447 = load i32, i32* %8, align 4
  %448 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %459, label %451

451:                                              ; preds = %446
  %452 = load i32, i32* %11, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %519, label %454

454:                                              ; preds = %451
  %455 = load i32, i32* %8, align 4
  %456 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %519

459:                                              ; preds = %454, %446
  %460 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %461 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %460, i32 0, i32 4
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 0
  %464 = load i32, i32* %463, align 4
  store i32 %464, i32* %24, align 4
  %465 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %466 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 8
  %468 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %469 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %468, i32 0, i32 3
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 0
  store i32 %467, i32* %470, align 4
  %471 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %472 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %475 = icmp ne i64 %473, %474
  %476 = zext i1 %475 to i32
  %477 = call i32 @WARN_ON(i32 %476)
  %478 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %479 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = icmp eq i32 %480, 1
  br i1 %481, label %482, label %507

482:                                              ; preds = %459
  %483 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %484 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %483, i32 0, i32 2
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %507

487:                                              ; preds = %482
  %488 = load i32, i32* %24, align 4
  %489 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %490 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %489, i32 0, i32 2
  store i32 %488, i32* %490, align 8
  %491 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %492 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %493 = call i32 @wl1271_cmd_build_arp_rsp(%struct.wl1271* %491, %struct.wl12xx_vif* %492)
  store i32 %493, i32* %14, align 4
  %494 = load i32, i32* %14, align 4
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %496, label %499

496:                                              ; preds = %487
  %497 = load i32, i32* %14, align 4
  %498 = call i32 (i8*, ...) @wl1271_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %497)
  br label %520

499:                                              ; preds = %487
  %500 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %501 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %502 = load i32, i32* @ACX_ARP_FILTER_ARP_FILTERING, align 4
  %503 = load i32, i32* @ACX_ARP_FILTER_AUTO_ARP, align 4
  %504 = or i32 %502, %503
  %505 = load i32, i32* %24, align 4
  %506 = call i32 @wl1271_acx_arp_ip_filter(%struct.wl1271* %500, %struct.wl12xx_vif* %501, i32 %504, i32 %505)
  store i32 %506, i32* %14, align 4
  br label %514

507:                                              ; preds = %482, %459
  %508 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %509 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %508, i32 0, i32 2
  store i32 0, i32* %509, align 8
  %510 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %511 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %512 = load i32, i32* %24, align 4
  %513 = call i32 @wl1271_acx_arp_ip_filter(%struct.wl1271* %510, %struct.wl12xx_vif* %511, i32 0, i32 %512)
  store i32 %513, i32* %14, align 4
  br label %514

514:                                              ; preds = %507, %499
  %515 = load i32, i32* %14, align 4
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %514
  br label %520

518:                                              ; preds = %514
  br label %519

519:                                              ; preds = %518, %454, %451
  br label %520

520:                                              ; preds = %519, %517, %496, %441, %426, %307, %285, %275, %264, %219, %211, %127, %43
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_bss_beacon_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wlcore_unset_assoc(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1271_acx_rssi_snr_trigger(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wlcore_set_bssid(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wlcore_clear_bssid(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_tx_enabled_rates_get(%struct.wl1271*, i32, i64) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_acx_sta_rate_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_bss_erp_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wlcore_join(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_warning(i8*, ...) #1

declare dso_local i32 @wlcore_set_assoc(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_set_authorized(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ps_set_mode(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wlcore_hw_set_peer_cap(%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32) #1

declare dso_local i32 @wl1271_acx_set_ht_information(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wl1271_cmd_build_arp_rsp(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_acx_arp_ip_filter(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
