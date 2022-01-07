; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }
%struct.wl12xx_vif = type { i64, i32, %struct.TYPE_6__, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.ieee80211_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wl12xx_cmd_role_start = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i8*, i8*, i32, i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cmd role start sta %d\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WLCORE_BAND_5GHZ = common dso_local global i32 0, align 4
@WL12XX_SSID_TYPE_ANY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CONF_TX_ENABLED_RATES = common dso_local global i32 0, align 4
@CONF_TX_MCS_RATES = common dso_local global i32 0, align 4
@CONF_TX_CCK_RATES = common dso_local global i32 0, align 4
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"role start: roleid=%d, hlid=%d, session=%d basic_rate_set: 0x%x, remote_rates: 0x%x\00", align 1
@CMD_ROLE_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to initiate cmd role start sta\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_start_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wl12xx_cmd_role_start*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %9 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %10 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %9)
  store %struct.ieee80211_vif* %10, %struct.ieee80211_vif** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl12xx_cmd_role_start* @kzalloc(i32 80, i32 %11)
  store %struct.wl12xx_cmd_role_start* %12, %struct.wl12xx_cmd_role_start** %6, align 8
  %13 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %14 = icmp ne %struct.wl12xx_cmd_role_start* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %203

18:                                               ; preds = %2
  %19 = load i32, i32* @DEBUG_CMD, align 4
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %28 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %30 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i32, i32* @WLCORE_BAND_5GHZ, align 4
  %36 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %37 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %18
  %39 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %40 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %43 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %45 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %49 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 9
  store i8* %47, i8** %50, align 8
  %51 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %52 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %56 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 8
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @WL12XX_SSID_TYPE_ANY, align 4
  %59 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %60 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  store i32 %58, i32* %61, align 4
  %62 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %63 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %66 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  %68 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %69 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %73 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %76 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i32 %71, i32 %74, i32 %77)
  %79 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %80 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @memcpy(i32 %82, i32 %86, i32 %87)
  %89 = load i32, i32* @CONF_TX_ENABLED_RATES, align 4
  %90 = load i32, i32* @CONF_TX_MCS_RATES, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %93 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %94 = call i32 @wlcore_hw_sta_get_ap_rate_mask(%struct.wl1271* %92, %struct.wl12xx_vif* %93)
  %95 = or i32 %91, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %97 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %38
  %101 = load i32, i32* @CONF_TX_CCK_RATES, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %100, %38
  %106 = load i32, i32* %7, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %109 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store i8* %107, i8** %110, align 8
  %111 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %112 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @wlcore_get_native_channel_type(i32 %113)
  %115 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %116 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %118 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %105
  %124 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %125 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %126 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %127 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = call i32 @wl12xx_allocate_link(%struct.wl1271* %124, %struct.wl12xx_vif* %125, i64* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %200

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %105
  %135 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %136 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %140 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  %142 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %143 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %146 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %152 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %157 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store i8* %155, i8** %158, align 8
  %159 = load i32, i32* @DEBUG_CMD, align 4
  %160 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %161 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %164 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %168 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %172 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %175 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %159, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %162, i64 %166, i32 %170, i32 %173, i32 %176)
  %178 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %179 = load i32, i32* @CMD_ROLE_START, align 4
  %180 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %181 = call i32 @wl1271_cmd_send(%struct.wl1271* %178, i32 %179, %struct.wl12xx_cmd_role_start* %180, i32 80, i32 0)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %134
  %185 = call i32 @wl1271_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %193

186:                                              ; preds = %134
  %187 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %188 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %191 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 8
  br label %200

193:                                              ; preds = %184
  %194 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %195 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %196 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %197 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = call i32 @wl12xx_free_link(%struct.wl1271* %194, %struct.wl12xx_vif* %195, i64* %198)
  br label %200

200:                                              ; preds = %193, %186, %132
  %201 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %202 = call i32 @kfree(%struct.wl12xx_cmd_role_start* %201)
  br label %203

203:                                              ; preds = %200, %15
  %204 = load i32, i32* %8, align 4
  ret i32 %204
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.wl12xx_cmd_role_start* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wlcore_hw_sta_get_ap_rate_mask(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_get_native_channel_type(i32) #1

declare dso_local i32 @wl12xx_allocate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_start*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_free_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
