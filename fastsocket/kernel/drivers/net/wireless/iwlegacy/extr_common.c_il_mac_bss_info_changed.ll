; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_mac_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i8*, i64, i32, %struct.TYPE_8__*, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32)*, i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_bss_conf = type { %struct.TYPE_9__*, i32, i64, i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"enter: changes 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"leave - not alive\0A\00", align 1
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"BSSID %pM\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"leave - scan abort failed\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"ERP_PREAMBLE %d\0A\00", align 1
@RXON_FLG_SHORT_PREAMBLE_MSK = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ERP_CTS %d\0A\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RXON_FLG_TGG_PROTECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SELF_CTS_EN = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"ASSOC %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Changes (%#x) while associated\0A\00", align 1
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to %s IBSS station %pM\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_mac_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.il_priv*, %struct.il_priv** %13, align 8
  store %struct.il_priv* %14, %struct.il_priv** %9, align 8
  %15 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %21 = call i32 @il_is_alive(%struct.il_priv* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 3
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %376

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %45 = call i32 @il_update_qos(%struct.il_priv* %44)
  %46 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %33, %28
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %63 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %67

64:                                               ; preds = %55
  %65 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %68
  %74 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %76)
  %78 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %79 = call i64 @il_scan_cancel_timeout(%struct.il_priv* %78, i32 100)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 3
  %85 = call i32 @mutex_unlock(i32* %84)
  br label %376

86:                                               ; preds = %73
  %87 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %88 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = call i32 @memcpy(i8* %90, %struct.TYPE_9__* %93, i32 %94)
  %96 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* @ETH_ALEN, align 4
  %103 = call i32 @memcpy(i8* %98, %struct.TYPE_9__* %101, i32 %102)
  br label %104

104:                                              ; preds = %86, %68
  %105 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %117 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %118 = call i32 @il_beacon_update(%struct.ieee80211_hw* %116, %struct.ieee80211_vif* %117)
  br label %119

119:                                              ; preds = %115, %110, %104
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %119
  %125 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %126 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %127)
  %129 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %130 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %124
  %134 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %135 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %136 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %134
  store i32 %139, i32* %137, align 8
  br label %148

140:                                              ; preds = %124
  %141 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %144 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %140, %133
  br label %149

149:                                              ; preds = %148, %119
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %205

154:                                              ; preds = %149
  %155 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %156 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %157)
  %159 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %160 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %154
  %164 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %165 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %171 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %172 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 8
  br label %184

176:                                              ; preds = %163, %154
  %177 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %180 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %178
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %176, %169
  %185 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %186 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i32, i32* @RXON_FLG_SELF_CTS_EN, align 4
  %191 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %192 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 8
  br label %204

196:                                              ; preds = %184
  %197 = load i32, i32* @RXON_FLG_SELF_CTS_EN, align 4
  %198 = xor i32 %197, -1
  %199 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %200 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, %198
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %196, %189
  br label %205

205:                                              ; preds = %204, %149
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %210, %205
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @BSS_CHANGED_HT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %235

216:                                              ; preds = %211
  %217 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %218 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %219 = call i32 @il_ht_conf(%struct.il_priv* %217, %struct.ieee80211_vif* %218)
  %220 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %221 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %220, i32 0, i32 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  %224 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %223, align 8
  %225 = icmp ne i32 (%struct.il_priv*)* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %216
  %227 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %228 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %227, i32 0, i32 4
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %230, align 8
  %232 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %233 = call i32 %231(%struct.il_priv* %232)
  br label %234

234:                                              ; preds = %226, %216
  br label %235

235:                                              ; preds = %234, %211
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %272

240:                                              ; preds = %235
  %241 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %242 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %243)
  %245 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %246 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %267

249:                                              ; preds = %240
  %250 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %251 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %254 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %253, i32 0, i32 7
  store i32 %252, i32* %254, align 4
  %255 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %256 = call i32 @il_is_rfkill(%struct.il_priv* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %249
  %259 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %260 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %259, i32 0, i32 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %262, align 8
  %264 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %265 = call i32 %263(%struct.il_priv* %264)
  br label %266

266:                                              ; preds = %258, %249
  br label %271

267:                                              ; preds = %240
  %268 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %269 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %270 = call i32 @il_set_no_assoc(%struct.il_priv* %268, %struct.ieee80211_vif* %269)
  br label %271

271:                                              ; preds = %267, %266
  br label %272

272:                                              ; preds = %271, %235
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %299

275:                                              ; preds = %272
  %276 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %277 = call i64 @il_is_associated(%struct.il_priv* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %299

279:                                              ; preds = %275
  %280 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %281 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %299

284:                                              ; preds = %279
  %285 = load i32, i32* %8, align 4
  %286 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %285)
  %287 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %288 = call i32 @il_send_rxon_assoc(%struct.il_priv* %287)
  store i32 %288, i32* %10, align 4
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %284
  %292 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %293 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %292, i32 0, i32 6
  %294 = bitcast i32* %293 to i8*
  %295 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %296 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %295, i32 0, i32 5
  %297 = call i32 @memcpy(i8* %294, %struct.TYPE_9__* %296, i32 4)
  br label %298

298:                                              ; preds = %291, %284
  br label %299

299:                                              ; preds = %298, %279, %275, %272
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %340

304:                                              ; preds = %299
  %305 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %306 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %312 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %316 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %315, i32 0, i32 0
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = load i32, i32* @ETH_ALEN, align 4
  %319 = call i32 @memcpy(i8* %314, %struct.TYPE_9__* %317, i32 %318)
  %320 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %321 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %324 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %323, i32 0, i32 0
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = load i32, i32* @ETH_ALEN, align 4
  %327 = call i32 @memcpy(i8* %322, %struct.TYPE_9__* %325, i32 %326)
  %328 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %329 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %328, i32 0, i32 4
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  %332 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %331, align 8
  %333 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %334 = call i32 %332(%struct.il_priv* %333)
  br label %339

335:                                              ; preds = %304
  %336 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %337 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %338 = call i32 @il_set_no_assoc(%struct.il_priv* %336, %struct.ieee80211_vif* %337)
  br label %339

339:                                              ; preds = %335, %310
  br label %340

340:                                              ; preds = %339, %299
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %371

345:                                              ; preds = %340
  %346 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %347 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %346, i32 0, i32 4
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32)*, i32 (%struct.il_priv*, %struct.ieee80211_vif*, i32)** %349, align 8
  %351 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %352 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %353 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %354 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = call i32 %350(%struct.il_priv* %351, %struct.ieee80211_vif* %352, i32 %355)
  store i32 %356, i32* %10, align 4
  %357 = load i32, i32* %10, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %370

359:                                              ; preds = %345
  %360 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %361 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  %364 = zext i1 %363 to i64
  %365 = select i1 %363, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %366 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %367 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %366, i32 0, i32 0
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %367, align 8
  %369 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %365, %struct.TYPE_9__* %368)
  br label %370

370:                                              ; preds = %359, %345
  br label %371

371:                                              ; preds = %370, %340
  %372 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %373 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %374 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %373, i32 0, i32 3
  %375 = call i32 @mutex_unlock(i32* %374)
  br label %376

376:                                              ; preds = %371, %81, %23
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, ...) #1

declare dso_local i32 @il_is_alive(%struct.il_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_update_qos(%struct.il_priv*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @il_scan_cancel_timeout(%struct.il_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @il_beacon_update(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @il_ht_conf(%struct.il_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @il_is_rfkill(%struct.il_priv*) #1

declare dso_local i32 @il_set_no_assoc(%struct.il_priv*, %struct.ieee80211_vif*) #1

declare dso_local i64 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @il_send_rxon_assoc(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, i8*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
