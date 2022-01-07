; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_get_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_sched_scan_settings, %struct.conf_scan_settings }
%struct.conf_sched_scan_settings = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.conf_scan_settings = type { i64, i64, i64, i64, i64, i64 }
%struct.ieee80211_channel = type { i64, i64, i32, i64, i32 }
%struct.conn_scan_ch_params = type { i32, i32, i64, i8*, i8*, i8* }

@SCAN_TYPE_SEARCH = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i64 0, align 8
@IEEE80211_CHAN_RADAR = common dso_local global i64 0, align 8
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"band %d, center_freq %d \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"hw_value %d, flags %X\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"max_power %d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"min_dwell_time %d max dwell time %d\00", align 1
@SCAN_CHANNEL_FLAGS_DFS = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"n_pactive_ch = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.ieee80211_channel**, i64, i64, %struct.conn_scan_ch_params*, i64, i32, i32, i32, i32, i64*, i32)* @wlcore_scan_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_scan_get_channels(%struct.wl1271* %0, %struct.ieee80211_channel** %1, i64 %2, i64 %3, %struct.conn_scan_ch_params* %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9, i64* %10, i32 %11) #0 {
  %13 = alloca %struct.wl1271*, align 8
  %14 = alloca %struct.ieee80211_channel**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.conn_scan_ch_params*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.conf_scan_settings*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.conf_sched_scan_settings*, align 8
  %36 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %13, align 8
  store %struct.ieee80211_channel** %1, %struct.ieee80211_channel*** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store %struct.conn_scan_ch_params* %4, %struct.conn_scan_ch_params** %17, align 8
  store i64 %5, i64* %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i64* %10, i64** %23, align 8
  store i32 %11, i32* %24, align 4
  %37 = load i64, i64* %16, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %28, align 4
  %41 = load i32, i32* %24, align 4
  %42 = load i32, i32* @SCAN_TYPE_SEARCH, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %12
  %45 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.conf_scan_settings* %47, %struct.conf_scan_settings** %33, align 8
  %48 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  %49 = call i32 @wlcore_count_started_vifs(%struct.wl1271* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %34, align 4
  %54 = load i32, i32* %34, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %58 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  br label %64

60:                                               ; preds = %44
  %61 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %62 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i64 [ %59, %56 ], [ %63, %60 ]
  store i64 %65, i64* %29, align 8
  %66 = load i32, i32* %34, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %70 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  br label %76

72:                                               ; preds = %64
  %73 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %74 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  store i64 %77, i64* %30, align 8
  %78 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %79 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %31, align 8
  %81 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %33, align 8
  %82 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %32, align 8
  br label %122

84:                                               ; preds = %12
  %85 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.conf_sched_scan_settings* %87, %struct.conf_sched_scan_settings** %35, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %93 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %36, align 8
  br label %99

95:                                               ; preds = %84
  %96 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %97 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %36, align 8
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %101 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %105 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = mul nsw i64 %103, %106
  %108 = load i64, i64* %36, align 8
  %109 = mul nsw i64 %107, %108
  %110 = add nsw i64 %102, %109
  store i64 %110, i64* %29, align 8
  %111 = load i64, i64* %29, align 8
  %112 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %113 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  store i64 %115, i64* %30, align 8
  %116 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %117 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %31, align 8
  %119 = load %struct.conf_sched_scan_settings*, %struct.conf_sched_scan_settings** %35, align 8
  %120 = getelementptr inbounds %struct.conf_sched_scan_settings, %struct.conf_sched_scan_settings* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %32, align 8
  br label %122

122:                                              ; preds = %99, %76
  %123 = load i64, i64* %29, align 8
  %124 = call i64 @DIV_ROUND_UP(i64 %123, i32 1000)
  store i64 %124, i64* %29, align 8
  %125 = load i64, i64* %30, align 8
  %126 = call i64 @DIV_ROUND_UP(i64 %125, i32 1000)
  store i64 %126, i64* %30, align 8
  %127 = load i64, i64* %31, align 8
  %128 = call i64 @DIV_ROUND_UP(i64 %127, i32 1000)
  store i64 %128, i64* %31, align 8
  %129 = load i64, i64* %32, align 8
  %130 = call i64 @DIV_ROUND_UP(i64 %129, i32 1000)
  store i64 %130, i64* %32, align 8
  store i32 0, i32* %25, align 4
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %26, align 4
  br label %132

132:                                              ; preds = %357, %122
  %133 = load i32, i32* %25, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %15, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp slt i32 %138, %139
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi i1 [ false, %132 ], [ %140, %137 ]
  br i1 %142, label %143, label %360

143:                                              ; preds = %141
  %144 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %144, i64 %146
  %148 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %147, align 8
  %149 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %27, align 8
  %151 = load i32, i32* %28, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = load i64, i64* @IEEE80211_CHAN_PASSIVE_SCAN, align 8
  %155 = load i64, i64* %27, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %27, align 8
  br label %157

157:                                              ; preds = %153, %143
  %158 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %159 = load i32, i32* %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %158, i64 %160
  %162 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %161, align 8
  %163 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %18, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %356

167:                                              ; preds = %157
  %168 = load i64, i64* %27, align 8
  %169 = load i64, i64* @IEEE80211_CHAN_DISABLED, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %356, label %172

172:                                              ; preds = %167
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* @IEEE80211_CHAN_RADAR, align 8
  %175 = and i64 %173, %174
  %176 = icmp ne i64 %175, 0
  %177 = xor i1 %176, true
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = load i32, i32* %19, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %356

182:                                              ; preds = %172
  %183 = load i32, i32* %19, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %182
  %186 = load i64, i64* %27, align 8
  %187 = load i64, i64* @IEEE80211_CHAN_PASSIVE_SCAN, align 8
  %188 = and i64 %186, %187
  %189 = icmp ne i64 %188, 0
  %190 = xor i1 %189, true
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %20, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %356

195:                                              ; preds = %185, %182
  %196 = load i32, i32* @DEBUG_SCAN, align 4
  %197 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %198 = load i32, i32* %25, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %197, i64 %199
  %201 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %200, align 8
  %202 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %205 = load i32, i32* %25, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %204, i64 %206
  %208 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %207, align 8
  %209 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %196, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %203, i32 %210)
  %212 = load i32, i32* @DEBUG_SCAN, align 4
  %213 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %214 = load i32, i32* %25, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %213, i64 %215
  %217 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %216, align 8
  %218 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %222 = load i32, i32* %25, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %221, i64 %223
  %225 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %224, align 8
  %226 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %212, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %220, i64 %227)
  %229 = load i32, i32* @DEBUG_SCAN, align 4
  %230 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %231 = load i32, i32* %25, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %230, i64 %232
  %234 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %233, align 8
  %235 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %229, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %236)
  %238 = load i32, i32* @DEBUG_SCAN, align 4
  %239 = load i64, i64* %29, align 8
  %240 = load i64, i64* %30, align 8
  %241 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %239, i64 %240)
  %242 = load i64, i64* %27, align 8
  %243 = load i64, i64* @IEEE80211_CHAN_RADAR, align 8
  %244 = and i64 %242, %243
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %262

246:                                              ; preds = %195
  %247 = load i32, i32* @SCAN_CHANNEL_FLAGS_DFS, align 4
  %248 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %249 = load i32, i32* %26, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %248, i64 %250
  %252 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %247
  store i32 %254, i32* %252, align 4
  %255 = load i64, i64* %32, align 8
  %256 = call i8* @cpu_to_le16(i64 %255)
  %257 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %258 = load i32, i32* %26, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %257, i64 %259
  %261 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %260, i32 0, i32 5
  store i8* %256, i8** %261, align 8
  br label %270

262:                                              ; preds = %195
  %263 = load i64, i64* %31, align 8
  %264 = call i8* @cpu_to_le16(i64 %263)
  %265 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %266 = load i32, i32* %26, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %265, i64 %267
  %269 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %268, i32 0, i32 5
  store i8* %264, i8** %269, align 8
  br label %270

270:                                              ; preds = %262, %246
  %271 = load i64, i64* %29, align 8
  %272 = call i8* @cpu_to_le16(i64 %271)
  %273 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %274 = load i32, i32* %26, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %273, i64 %275
  %277 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %276, i32 0, i32 4
  store i8* %272, i8** %277, align 8
  %278 = load i64, i64* %30, align 8
  %279 = call i8* @cpu_to_le16(i64 %278)
  %280 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %281 = load i32, i32* %26, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %280, i64 %282
  %284 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %283, i32 0, i32 3
  store i8* %279, i8** %284, align 8
  %285 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %286 = load i32, i32* %25, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %285, i64 %287
  %289 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %288, align 8
  %290 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %293 = load i32, i32* %26, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %292, i64 %294
  %296 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %295, i32 0, i32 2
  store i64 %291, i64* %296, align 8
  %297 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %14, align 8
  %298 = load i32, i32* %25, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %297, i64 %299
  %301 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %300, align 8
  %302 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %305 = load i32, i32* %26, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %304, i64 %306
  %308 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %307, i32 0, i32 0
  store i32 %303, i32* %308, align 8
  %309 = load i64*, i64** %23, align 8
  %310 = icmp ne i64* %309, null
  br i1 %310, label %311, label %353

311:                                              ; preds = %270
  %312 = load i64, i64* %18, align 8
  %313 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %353

315:                                              ; preds = %311
  %316 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %317 = load i32, i32* %26, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %316, i64 %318
  %320 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp sge i32 %321, 12
  br i1 %322, label %323, label %353

323:                                              ; preds = %315
  %324 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %325 = load i32, i32* %26, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %324, i64 %326
  %328 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = icmp sle i32 %329, 14
  br i1 %330, label %331, label %353

331:                                              ; preds = %323
  %332 = load i64, i64* %27, align 8
  %333 = load i64, i64* @IEEE80211_CHAN_PASSIVE_SCAN, align 8
  %334 = and i64 %332, %333
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %353

336:                                              ; preds = %331
  %337 = load i32, i32* %28, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %353, label %339

339:                                              ; preds = %336
  %340 = load i32, i32* @SCAN_CHANNEL_FLAGS_DFS, align 4
  %341 = load %struct.conn_scan_ch_params*, %struct.conn_scan_ch_params** %17, align 8
  %342 = load i32, i32* %26, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %341, i64 %343
  %345 = getelementptr inbounds %struct.conn_scan_ch_params, %struct.conn_scan_ch_params* %344, i32 0, i32 1
  store i32 %340, i32* %345, align 4
  %346 = load i64*, i64** %23, align 8
  %347 = load i64, i64* %346, align 8
  %348 = add nsw i64 %347, 1
  store i64 %348, i64* %346, align 8
  %349 = load i32, i32* @DEBUG_SCAN, align 4
  %350 = load i64*, i64** %23, align 8
  %351 = load i64, i64* %350, align 8
  %352 = call i32 (i32, i8*, i64, ...) @wl1271_debug(i32 %349, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %351)
  br label %353

353:                                              ; preds = %339, %336, %331, %323, %315, %311, %270
  %354 = load i32, i32* %26, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %26, align 4
  br label %356

356:                                              ; preds = %353, %185, %172, %167, %157
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %25, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %25, align 4
  br label %132

360:                                              ; preds = %141
  %361 = load i32, i32* %26, align 4
  %362 = load i32, i32* %21, align 4
  %363 = sub nsw i32 %361, %362
  ret i32 %363
}

declare dso_local i32 @wlcore_count_started_vifs(%struct.wl1271*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, ...) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
