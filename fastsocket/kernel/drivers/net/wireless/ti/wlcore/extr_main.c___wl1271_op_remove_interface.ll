; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c___wl1271_op_remove_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c___wl1271_op_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, i32, %struct.TYPE_10__, i64, i32, %struct.wl12xx_vif*, i32, %struct.ieee80211_vif*, %struct.wl12xx_vif*, %struct.TYPE_6__, %struct.wl12xx_vif* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32*, i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_8__, i32, i32*, %struct.TYPE_7__, i8*, i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8* }
%struct.ieee80211_vif = type { i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mac80211 remove interface\00", align 1
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@WL1271_SCAN_STATE_IDLE = common dso_local global i64 0, align 8
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@WL12XX_INVALID_LINK_ID = common dso_local global i8* null, align 8
@CONF_TX_MAX_AC_COUNT = common dso_local global i32 0, align 4
@WL12XX_INVALID_ROLE_ID = common dso_local global i8* null, align 8
@WL1271_FLAG_INTENDED_FW_RECOVERY = common dso_local global i32 0, align 4
@WL1271_PSM_ILLEGAL = common dso_local global i64 0, align 8
@WL1271_PSM_ELP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.ieee80211_vif*, i32)* @__wl1271_op_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wl1271_op_remove_interface(%struct.wl1271* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %12)
  store %struct.wl12xx_vif* %13, %struct.wl12xx_vif** %7, align 8
  %14 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %15 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @DEBUG_MAC80211, align 4
  %21 = call i32 @wl1271_debug(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 12
  %25 = call i32 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %330

28:                                               ; preds = %3
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %330

35:                                               ; preds = %28
  %36 = call i32 @wl1271_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %35
  %44 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 11
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %45, align 8
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %48 = icmp eq %struct.wl12xx_vif* %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %51 = call i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271* %50)
  %52 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %53 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 10
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 10
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 11
  store %struct.wl12xx_vif* null, %struct.wl12xx_vif** %62, align 8
  %63 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ieee80211_scan_completed(i32 %68, i32 1)
  br label %70

70:                                               ; preds = %49, %43, %35
  %71 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 9
  %73 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %72, align 8
  %74 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %75 = icmp eq %struct.wl12xx_vif* %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ieee80211_sched_scan_stopped(i32 %79)
  %81 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 9
  store %struct.wl12xx_vif* null, %struct.wl12xx_vif** %82, align 8
  br label %83

83:                                               ; preds = %76, %70
  %84 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 8
  %86 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %85, align 8
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %88 = icmp eq %struct.ieee80211_vif* %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %91 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %90, i32 0, i32 8
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %91, align 8
  %92 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %93 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ieee80211_remain_on_channel_expired(i32 %94)
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %98 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %99 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %98, i32 0, i32 5
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %96
  %103 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %104 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %141

108:                                              ; preds = %102
  %109 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %110 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %116 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114, %108
  %121 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %122 = call i64 @wl12xx_dev_role_started(%struct.wl12xx_vif* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %126 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %127 = call i32 @wl12xx_stop_dev(%struct.wl1271* %125, %struct.wl12xx_vif* %126)
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %114
  %130 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %131 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %132 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %131, i32 0, i32 6
  %133 = call i32 @wl12xx_cmd_role_disable(%struct.wl1271* %130, i8** %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %141

137:                                              ; preds = %129
  %138 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %139 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %138)
  br label %140

140:                                              ; preds = %137, %96
  br label %141

141:                                              ; preds = %140, %136, %107
  %142 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %143 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %144 = call i32 @wl12xx_tx_reset_wlvif(%struct.wl1271* %142, %struct.wl12xx_vif* %143)
  %145 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %146 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %147 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %146, i32 0, i32 11
  store i8* %145, i8** %147, align 8
  %148 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %149 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %159, label %153

153:                                              ; preds = %141
  %154 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %155 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %153, %141
  %160 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %161 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %162 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %161, i32 0, i32 10
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  store i8* %160, i8** %163, align 8
  %164 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %165 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %166 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %165, i32 0, i32 10
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %164, i32* %167)
  %169 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %170 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %171 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %170, i32 0, i32 10
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %169, i32* %172)
  %174 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %175 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %176 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %175, i32 0, i32 10
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %174, i32* %177)
  %179 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %180 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %181 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %180, i32 0, i32 10
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i32 @wlcore_free_klv_template(%struct.wl1271* %179, i32* %182)
  br label %224

184:                                              ; preds = %153
  %185 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %186 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %187 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  store i8* %185, i8** %188, align 8
  %189 = load i8*, i8** @WL12XX_INVALID_LINK_ID, align 8
  %190 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %191 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 4
  store i8* %189, i8** %192, align 8
  %193 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %194 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %195 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %193, i32* %196)
  %198 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %199 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %200 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %198, i32* %201)
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %217, %184
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @CONF_TX_MAX_AC_COUNT, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %203
  %208 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %209 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %210 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i32 @wl12xx_free_rate_policy(%struct.wl1271* %208, i32* %215)
  br label %217

217:                                              ; preds = %207
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %203

220:                                              ; preds = %203
  %221 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %222 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %223 = call i32 @wl1271_free_ap_keys(%struct.wl1271* %221, %struct.wl12xx_vif* %222)
  br label %224

224:                                              ; preds = %220, %159
  %225 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %226 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %225, i32 0, i32 9
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @dev_kfree_skb(i32* %227)
  %229 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %230 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %229, i32 0, i32 9
  store i32* null, i32** %230, align 8
  %231 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %232 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %231, i32 0, i32 6
  %233 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %232, align 8
  %234 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %235 = icmp eq %struct.wl12xx_vif* %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %224
  %237 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %238 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %237, i32 0, i32 6
  store %struct.wl12xx_vif* null, %struct.wl12xx_vif** %238, align 8
  br label %239

239:                                              ; preds = %236, %224
  %240 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %241 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %240, i32 0, i32 8
  %242 = call i32 @list_del(i32* %241)
  %243 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %244 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %243, i32 0, i32 7
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @memset(i32 %246, i32 0, i32 4)
  %248 = load i8*, i8** @WL12XX_INVALID_ROLE_ID, align 8
  %249 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %250 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %249, i32 0, i32 6
  store i8* %248, i8** %250, align 8
  %251 = load i8*, i8** @WL12XX_INVALID_ROLE_ID, align 8
  %252 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %253 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %252, i32 0, i32 5
  store i8* %251, i8** %253, align 8
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %239
  %257 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %258 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %259, -1
  store i64 %260, i64* %258, align 8
  br label %266

261:                                              ; preds = %239
  %262 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %263 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %262, i32 0, i32 4
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, -1
  store i64 %265, i64* %263, align 8
  br label %266

266:                                              ; preds = %261, %256
  %267 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %268 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %269 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %268, i32 0, i32 5
  %270 = call i64 @test_bit(i32 %267, i32* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = load i32, i32* @WL1271_FLAG_INTENDED_FW_RECOVERY, align 4
  %274 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %275 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %274, i32 0, i32 5
  %276 = call i64 @test_bit(i32 %273, i32* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %272
  br label %311

279:                                              ; preds = %272, %266
  %280 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %281 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %310

284:                                              ; preds = %279
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %310

287:                                              ; preds = %284
  %288 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %289 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %287
  %293 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %294 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %11, align 8
  %298 = load i64, i64* %11, align 8
  %299 = load i64, i64* @WL1271_PSM_ILLEGAL, align 8
  %300 = icmp ne i64 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %292
  %302 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %303 = load i64, i64* %11, align 8
  %304 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %302, i64 %303)
  br label %309

305:                                              ; preds = %292
  %306 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %307 = load i64, i64* @WL1271_PSM_ELP, align 8
  %308 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %306, i64 %307)
  br label %309

309:                                              ; preds = %305, %301
  br label %310

310:                                              ; preds = %309, %287, %284, %279
  br label %311

311:                                              ; preds = %310, %278
  %312 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %313 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %312, i32 0, i32 2
  %314 = call i32 @mutex_unlock(i32* %313)
  %315 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %316 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %315, i32 0, i32 4
  %317 = call i32 @del_timer_sync(i32* %316)
  %318 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %319 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %318, i32 0, i32 3
  %320 = call i32 @cancel_work_sync(i32* %319)
  %321 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %322 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %321, i32 0, i32 2
  %323 = call i32 @cancel_work_sync(i32* %322)
  %324 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %325 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %324, i32 0, i32 1
  %326 = call i32 @cancel_delayed_work_sync(i32* %325)
  %327 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %328 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %327, i32 0, i32 2
  %329 = call i32 @mutex_lock(i32* %328)
  br label %330

330:                                              ; preds = %311, %34, %27
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wl1271_info(i8*) #1

declare dso_local i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, i32) #1

declare dso_local i32 @ieee80211_sched_scan_stopped(i32) #1

declare dso_local i32 @ieee80211_remain_on_channel_expired(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i64 @wl12xx_dev_role_started(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_stop_dev(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_disable(%struct.wl1271*, i8**) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @wl12xx_tx_reset_wlvif(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_free_rate_policy(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_free_klv_template(%struct.wl1271*, i32*) #1

declare dso_local i32 @wl1271_free_ap_keys(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wl1271_acx_sleep_auth(%struct.wl1271*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
