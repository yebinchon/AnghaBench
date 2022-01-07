; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.TYPE_2__, %struct.ath_hw*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ath_hw = type { i64, i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_bss_conf = type { i64, i64, i64, i32, i32 }
%struct.ath_common = type { i64, i32 }
%struct.ath_vif = type { i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BSSID %pM Changed ASSOC %d\0A\00", align 1
@SC_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@SC_OP_BEACONS = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath9k_bss_assoc_iter = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@UPDATE = common dso_local global i32 0, align 4
@CHECK_ANI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @ath9k_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_vif*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  store %struct.ath_softc* %16, %struct.ath_softc** %9, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 2
  %19 = load %struct.ath_hw*, %struct.ath_hw** %18, align 8
  store %struct.ath_hw* %19, %struct.ath_hw** %10, align 8
  %20 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  store %struct.ath_common* %21, %struct.ath_common** %11, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ath_vif*
  store %struct.ath_vif* %26, %struct.ath_vif** %12, align 8
  %27 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %28 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %27)
  %29 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %114

36:                                               ; preds = %4
  %37 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %38 = load i32, i32* @CONFIG, align 4
  %39 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ath_dbg(%struct.ath_common* %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %47 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %36
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %57 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %58 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %57, i32 0, i32 3
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = load %struct.ath_vif*, %struct.ath_vif** %12, align 8
  %61 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load i32, i32* @SC_OP_BEACONS, align 4
  %69 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %70 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %69, i32 0, i32 3
  %71 = call i32 @clear_bit(i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %55
  br label %73

73:                                               ; preds = %72, %50, %36
  %74 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %75 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %78 = load i32, i32* @ath9k_bss_assoc_iter, align 4
  %79 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %80 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %76, i32 %77, i32 %78, %struct.ath_softc* %79)
  %81 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %82 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %83 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %82, i32 0, i32 3
  %84 = call i32 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %113, label %86

86:                                               ; preds = %73
  %87 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %88 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %86
  %93 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %94 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memset(i32 %95, i32 0, i32 %96)
  %98 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %99 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %101 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %100, i32 0, i32 2
  %102 = load %struct.ath_hw*, %struct.ath_hw** %101, align 8
  %103 = call i32 @ath9k_hw_write_associd(%struct.ath_hw* %102)
  %104 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %105 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %104, i32 0, i32 2
  %106 = load %struct.ath_hw*, %struct.ath_hw** %105, align 8
  %107 = call i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %92
  %110 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %111 = call i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc* %110, i32 1)
  br label %112

112:                                              ; preds = %109, %92
  br label %113

113:                                              ; preds = %112, %86, %73
  br label %114

114:                                              ; preds = %113, %4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %114
  %120 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %121 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ETH_ALEN, align 4
  %127 = call i32 @memcpy(i32 %122, i32 %125, i32 %126)
  %128 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %132 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %134 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %133, i32 0, i32 2
  %135 = load %struct.ath_hw*, %struct.ath_hw** %134, align 8
  %136 = call i32 @ath9k_hw_write_associd(%struct.ath_hw* %135)
  br label %137

137:                                              ; preds = %119, %114
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %142, %137
  %148 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %149 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %155 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %160 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %161 = call i32 @ath9k_set_tsfadjust(%struct.ath_softc* %159, %struct.ieee80211_vif* %160)
  br label %162

162:                                              ; preds = %158, %153, %147
  %163 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %164 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %165 = call i64 @ath9k_allow_beacon_config(%struct.ath_softc* %163, %struct.ieee80211_vif* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %169 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @ath9k_beacon_config(%struct.ath_softc* %168, %struct.ieee80211_vif* %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %162
  br label %173

173:                                              ; preds = %172, %142
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %207

178:                                              ; preds = %173
  %179 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %180 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 9, i32* %13, align 4
  br label %185

184:                                              ; preds = %178
  store i32 20, i32* %13, align 4
  br label %185

185:                                              ; preds = %184, %183
  %186 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %187 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load i32, i32* %13, align 4
  %193 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %194 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* @UPDATE, align 4
  %197 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %198 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  store i32 %196, i32* %199, align 4
  br label %206

200:                                              ; preds = %185
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %203 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  %204 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %205 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %204)
  br label %206

206:                                              ; preds = %200, %191
  br label %207

207:                                              ; preds = %206, %173
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %210 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %208, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %218 = call i32 @ath_check_ani(%struct.ath_softc* %217)
  br label %219

219:                                              ; preds = %216, %207
  %220 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %221 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %220, i32 0, i32 0
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %224 = call i32 @ath9k_ps_restore(%struct.ath_softc* %223)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath_softc*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_write_associd(%struct.ath_hw*) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath9k_set_tsfadjust(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i64 @ath9k_allow_beacon_config(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_beacon_config(%struct.ath_softc*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath_check_ani(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
