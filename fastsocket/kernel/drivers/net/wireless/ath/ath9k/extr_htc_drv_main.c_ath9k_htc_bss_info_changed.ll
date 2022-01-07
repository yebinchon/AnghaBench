; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, i32, i32, i32, %struct.ath_hw*, i64 }
%struct.ath_hw = type { i64, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i64, i64, i64, i32, i64 }
%struct.ath_common = type { i32, i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BSS Changed ASSOC %d\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Beacon enabled for BSS: %pM\0A\00", align 1
@OP_ENABLE_BEACON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Beacon disabled for BSS: %pM\0A\00", align 1
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@OP_TSF_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Beacon interval changed for BSS: %pM\0A\00", align 1
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ath9k_htc_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  store %struct.ath9k_htc_priv* %14, %struct.ath9k_htc_priv** %9, align 8
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %15, i32 0, i32 5
  %17 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  store %struct.ath_hw* %17, %struct.ath_hw** %10, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %19 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %11, align 8
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %21 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %20, i32 0, i32 3
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %24 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %85

29:                                               ; preds = %4
  %30 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %31 = load i32, i32* @CONFIG, align 4
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ath_dbg(%struct.ath_common* %30, i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %42 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %50

45:                                               ; preds = %29
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %43, %40 ], [ %48, %45 ]
  %52 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %52, i32 0, i32 5
  %54 = load %struct.ath_hw*, %struct.ath_hw** %53, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %50
  %60 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %61 = call i32 @ath9k_htc_choose_set_bssid(%struct.ath9k_htc_priv* %60)
  %62 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %73 = call i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv* %72)
  br label %83

74:                                               ; preds = %66, %59
  %75 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %76 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %81 = call i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv* %80)
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %71
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %85
  %91 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %92 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %91, i32 0, i32 5
  %93 = load %struct.ath_hw*, %struct.ath_hw** %92, align 8
  %94 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %90
  %99 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %103 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %105 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = call i32 @memcpy(i32 %106, i64 %109, i32 %110)
  %112 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %113 = call i32 @ath9k_htc_set_bssid(%struct.ath9k_htc_priv* %112)
  br label %114

114:                                              ; preds = %98, %90
  br label %115

115:                                              ; preds = %114, %85
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115
  %121 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %127 = load i32, i32* @CONFIG, align 4
  %128 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ath_dbg(%struct.ath_common* %126, i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  %132 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %133 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %134 = call i32 @ath9k_htc_set_tsfadjust(%struct.ath9k_htc_priv* %132, %struct.ieee80211_vif* %133)
  %135 = load i32, i32* @OP_ENABLE_BEACON, align 4
  %136 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %137 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %136, i32 0, i32 4
  %138 = call i32 @set_bit(i32 %135, i32* %137)
  %139 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %141 = call i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv* %139, %struct.ieee80211_vif* %140)
  br label %142

142:                                              ; preds = %125, %120, %115
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %177

147:                                              ; preds = %142
  %148 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %177, label %152

152:                                              ; preds = %147
  %153 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %154 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sle i32 %155, 1
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %159 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %157, %152
  %163 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %164 = load i32, i32* @CONFIG, align 4
  %165 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %166 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @ath_dbg(%struct.ath_common* %163, i32 %164, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %167)
  %169 = load i32, i32* @OP_ENABLE_BEACON, align 4
  %170 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %171 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %170, i32 0, i32 4
  %172 = call i32 @clear_bit(i32 %169, i32* %171)
  %173 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %174 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %175 = call i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv* %173, %struct.ieee80211_vif* %174)
  br label %176

176:                                              ; preds = %162, %157
  br label %177

177:                                              ; preds = %176, %147, %142
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %221

182:                                              ; preds = %177
  %183 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %184 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %183, i32 0, i32 5
  %185 = load %struct.ath_hw*, %struct.ath_hw** %184, align 8
  %186 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %211

190:                                              ; preds = %182
  %191 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %192 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %211

195:                                              ; preds = %190
  %196 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %197 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %211

200:                                              ; preds = %195
  %201 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %202 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load i32, i32* @OP_TSF_RESET, align 4
  %208 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %209 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %208, i32 0, i32 4
  %210 = call i32 @set_bit(i32 %207, i32* %209)
  br label %211

211:                                              ; preds = %206, %200, %195, %190, %182
  %212 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %213 = load i32, i32* @CONFIG, align 4
  %214 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @ath_dbg(%struct.ath_common* %212, i32 %213, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %216)
  %218 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %219 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %220 = call i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv* %218, %struct.ieee80211_vif* %219)
  br label %221

221:                                              ; preds = %211, %177
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %221
  %227 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %228 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %233 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %232, i32 0, i32 1
  store i32 9, i32* %233, align 8
  br label %237

234:                                              ; preds = %226
  %235 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %236 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %235, i32 0, i32 1
  store i32 20, i32* %236, align 8
  br label %237

237:                                              ; preds = %234, %231
  %238 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %239 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %238)
  br label %240

240:                                              ; preds = %237, %221
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @BSS_CHANGED_HT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %247 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %248 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %249 = call i32 @ath9k_htc_update_rate(%struct.ath9k_htc_priv* %246, %struct.ieee80211_vif* %247, %struct.ieee80211_bss_conf* %248)
  br label %250

250:                                              ; preds = %245, %240
  %251 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %252 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %251)
  %253 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %254 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %253, i32 0, i32 3
  %255 = call i32 @mutex_unlock(i32* %254)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @ath9k_htc_choose_set_bssid(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @ath9k_htc_set_bssid(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_set_tsfadjust(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath9k_htc_beacon_config(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_htc_update_rate(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
