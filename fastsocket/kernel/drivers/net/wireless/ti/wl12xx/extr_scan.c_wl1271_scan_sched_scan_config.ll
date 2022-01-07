; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_sched_scan_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_sched_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.conf_sched_scan_settings }
%struct.conf_sched_scan_settings = type { i32, i32, i32 }
%struct.wl12xx_vif = type { i32 }
%struct.cfg80211_sched_scan_request = type { %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_sched_scan_ies = type { i32*, i32* }
%struct.wl1271_cmd_sched_scan_config = type { i32, i32, i64*, i64, i32*, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.wlcore_scan_channels = type { i32, i32, i64*, i64, i32*, i32, i32, i64, i64, i32, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cmd sched_scan scan config\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_SCAN_DEFAULT_TAG = common dso_local global i32 0, align 4
@SCAN_BSS_TYPE_ANY = common dso_local global i32 0, align 4
@SCAN_MAX_CYCLE_INTERVALS = common dso_local global i32 0, align 4
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"filter_type = %d\00", align 1
@SCAN_TYPE_PERIODIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"scan channel list is empty\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"2.4GHz PROBE request template failed\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"5GHz PROBE request template failed\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"SCAN_CFG: \00", align 1
@CMD_CONNECTION_SCAN_CFG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"SCAN configuration failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_scan_sched_scan_config(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.cfg80211_sched_scan_request* %2, %struct.ieee80211_sched_scan_ies* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %9 = alloca %struct.ieee80211_sched_scan_ies*, align 8
  %10 = alloca %struct.wl1271_cmd_sched_scan_config*, align 8
  %11 = alloca %struct.wlcore_scan_channels*, align 8
  %12 = alloca %struct.conf_sched_scan_settings*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %8, align 8
  store %struct.ieee80211_sched_scan_ies* %3, %struct.ieee80211_sched_scan_ies** %9, align 8
  store %struct.wl1271_cmd_sched_scan_config* null, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  store %struct.wlcore_scan_channels* null, %struct.wlcore_scan_channels** %11, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.conf_sched_scan_settings* %20, %struct.conf_sched_scan_settings** %12, align 8
  %21 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %22 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* @DEBUG_CMD, align 4
  %28 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.wlcore_scan_channels* @kzalloc(i32 72, i32 %29)
  %31 = bitcast %struct.wlcore_scan_channels* %30 to %struct.wl1271_cmd_sched_scan_config*
  store %struct.wl1271_cmd_sched_scan_config* %31, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %32 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %33 = icmp ne %struct.wl1271_cmd_sched_scan_config* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %255

37:                                               ; preds = %4
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %42 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 4
  %43 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %12, align 8
  %44 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %47 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 8
  %48 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %12, align 8
  %49 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %52 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 4
  %53 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %12, align 8
  %54 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %57 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 8
  %58 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %59 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %61 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %63 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @WL1271_SCAN_DEFAULT_TAG, align 4
  %65 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %66 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @SCAN_BSS_TYPE_ANY, align 4
  %68 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %69 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %85, %37
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @SCAN_MAX_CYCLE_INTERVALS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %76 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %80 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %70

88:                                               ; preds = %70
  %89 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %90 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %92 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %93 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %94 = call i32 @wlcore_scan_sched_scan_ssid_list(%struct.wl1271* %91, %struct.wl12xx_vif* %92, %struct.cfg80211_sched_scan_request* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %248

98:                                               ; preds = %88
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %101 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @DEBUG_SCAN, align 4
  %103 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %104 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.wlcore_scan_channels* @kzalloc(i32 72, i32 %107)
  store %struct.wlcore_scan_channels* %108, %struct.wlcore_scan_channels** %11, align 8
  %109 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %110 = icmp ne %struct.wlcore_scan_channels* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %98
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %14, align 4
  br label %248

114:                                              ; preds = %98
  %115 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %116 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %117 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %118 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %121 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %124 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SCAN_TYPE_PERIODIC, align 4
  %127 = call i32 @wlcore_set_scan_chan_params(%struct.wl1271* %115, %struct.wlcore_scan_channels* %116, i32 %119, i32 %122, i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %114
  %130 = call i32 @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %14, align 4
  br label %248

133:                                              ; preds = %114
  %134 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %135 = bitcast %struct.wl1271_cmd_sched_scan_config* %134 to %struct.wlcore_scan_channels*
  %136 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %137 = call i32 @wl12xx_adjust_channels(%struct.wlcore_scan_channels* %135, %struct.wlcore_scan_channels* %136)
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %185, label %140

140:                                              ; preds = %133
  %141 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %142 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %141, i32 0, i32 2
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %185

147:                                              ; preds = %140
  %148 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  store i64 %148, i64* %16, align 8
  %149 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %150 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %151 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %152 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %16, align 8
  %155 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %156 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %162 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ieee80211_sched_scan_ies*, %struct.ieee80211_sched_scan_ies** %9, align 8
  %168 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %16, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ieee80211_sched_scan_ies*, %struct.ieee80211_sched_scan_ies** %9, align 8
  %174 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %16, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %149, %struct.wl12xx_vif* %150, i32 %153, i64 %154, i32 %160, i32 %166, i32 %172, i32 %178, i32 1)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %147
  %183 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %248

184:                                              ; preds = %147
  br label %185

185:                                              ; preds = %184, %140, %133
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %233, label %188

188:                                              ; preds = %185
  %189 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %190 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_config, %struct.wl1271_cmd_sched_scan_config* %189, i32 0, i32 2
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %233

195:                                              ; preds = %188
  %196 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  store i64 %196, i64* %17, align 8
  %197 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %198 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %199 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %200 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i64, i64* %17, align 8
  %203 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %204 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %8, align 8
  %210 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ieee80211_sched_scan_ies*, %struct.ieee80211_sched_scan_ies** %9, align 8
  %216 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* %17, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ieee80211_sched_scan_ies*, %struct.ieee80211_sched_scan_ies** %9, align 8
  %222 = getelementptr inbounds %struct.ieee80211_sched_scan_ies, %struct.ieee80211_sched_scan_ies* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* %17, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %197, %struct.wl12xx_vif* %198, i32 %201, i64 %202, i32 %208, i32 %214, i32 %220, i32 %226, i32 1)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %195
  %231 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %248

232:                                              ; preds = %195
  br label %233

233:                                              ; preds = %232, %188, %185
  %234 = load i32, i32* @DEBUG_SCAN, align 4
  %235 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %236 = bitcast %struct.wl1271_cmd_sched_scan_config* %235 to %struct.wlcore_scan_channels*
  %237 = call i32 @wl1271_dump(i32 %234, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct.wlcore_scan_channels* %236, i32 72)
  %238 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %239 = load i32, i32* @CMD_CONNECTION_SCAN_CFG, align 4
  %240 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %241 = bitcast %struct.wl1271_cmd_sched_scan_config* %240 to %struct.wlcore_scan_channels*
  %242 = call i32 @wl1271_cmd_send(%struct.wl1271* %238, i32 %239, %struct.wlcore_scan_channels* %241, i32 72, i32 0)
  store i32 %242, i32* %14, align 4
  %243 = load i32, i32* %14, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %233
  %246 = call i32 @wl1271_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %248

247:                                              ; preds = %233
  br label %248

248:                                              ; preds = %247, %245, %230, %182, %129, %111, %97
  %249 = load %struct.wlcore_scan_channels*, %struct.wlcore_scan_channels** %11, align 8
  %250 = call i32 @kfree(%struct.wlcore_scan_channels* %249)
  %251 = load %struct.wl1271_cmd_sched_scan_config*, %struct.wl1271_cmd_sched_scan_config** %10, align 8
  %252 = bitcast %struct.wl1271_cmd_sched_scan_config* %251 to %struct.wlcore_scan_channels*
  %253 = call i32 @kfree(%struct.wlcore_scan_channels* %252)
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %248, %34
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local %struct.wlcore_scan_channels* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wlcore_scan_sched_scan_ssid_list(%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_sched_scan_request*) #1

declare dso_local i32 @wlcore_set_scan_chan_params(%struct.wl1271*, %struct.wlcore_scan_channels*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_adjust_channels(%struct.wlcore_scan_channels*, %struct.wlcore_scan_channels*) #1

declare dso_local i32 @wl12xx_cmd_build_probe_req(%struct.wl1271*, %struct.wl12xx_vif*, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wlcore_scan_channels*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wlcore_scan_channels*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wlcore_scan_channels*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
