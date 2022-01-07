; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_get_scan_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_get_scan_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.conf_scan_settings }
%struct.conf_scan_settings = type { i32, i32, i32 }
%struct.cfg80211_scan_request = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.basic_scan_channel_params = type { i32, i32, i64, i32, i64, i8*, i8* }

@WL1271_SCAN_MAX_CHANNELS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"band %d, center_freq %d \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"hw_value %d, flags %X\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"max_antenna_gain %d, max_power %d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"beacon_found %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.cfg80211_scan_request*, %struct.basic_scan_channel_params*, i32, i32)* @wl1271_get_scan_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_get_scan_channels(%struct.wl1271* %0, %struct.cfg80211_scan_request* %1, %struct.basic_scan_channel_params* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.basic_scan_channel_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.conf_scan_settings*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %7, align 8
  store %struct.basic_scan_channel_params* %2, %struct.basic_scan_channel_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.conf_scan_settings* %17, %struct.conf_scan_settings** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %240, %5
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %21 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @WL1271_SCAN_MAX_CHANNELS, align 4
  %27 = icmp slt i32 %25, %26
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i1 [ false, %18 ], [ %27, %24 ]
  br i1 %29, label %30, label %243

30:                                               ; preds = %28
  %31 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %32 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @test_bit(i32 %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %239, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %239, label %52

52:                                               ; preds = %47
  %53 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %54 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %239

64:                                               ; preds = %52
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %239, label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* @DEBUG_SCAN, align 4
  %74 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %75 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %76, i64 %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %84 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %85, i64 %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %91)
  %93 = load i32, i32* @DEBUG_SCAN, align 4
  %94 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %95 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %96, i64 %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %105 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %106, i64 %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %112)
  %114 = load i32, i32* @DEBUG_SCAN, align 4
  %115 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %116 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %117, i64 %119
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %125 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %126, i64 %128
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %132)
  %134 = load i32, i32* @DEBUG_SCAN, align 4
  %135 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %136 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %137, i64 %139
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %72
  %148 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %11, align 8
  %149 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %152, i64 %154
  %156 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %155, i32 0, i32 6
  store i8* %151, i8** %156, align 8
  %157 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %11, align 8
  %158 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %161, i64 %163
  %165 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %164, i32 0, i32 5
  store i8* %160, i8** %165, align 8
  br label %185

166:                                              ; preds = %72
  %167 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %11, align 8
  %168 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @cpu_to_le32(i32 %169)
  %171 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %171, i64 %173
  %175 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %174, i32 0, i32 6
  store i8* %170, i8** %175, align 8
  %176 = load %struct.conf_scan_settings*, %struct.conf_scan_settings** %11, align 8
  %177 = getelementptr inbounds %struct.conf_scan_settings, %struct.conf_scan_settings* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %180, i64 %182
  %184 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %183, i32 0, i32 5
  store i8* %179, i8** %184, align 8
  br label %185

185:                                              ; preds = %166, %147
  %186 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %186, i64 %188
  %190 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %189, i32 0, i32 4
  store i64 0, i64* %190, align 8
  %191 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %192 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %191, i32 0, i32 1
  %193 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %193, i64 %195
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %200, i64 %202
  %204 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %203, i32 0, i32 3
  store i32 %199, i32* %204, align 8
  %205 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %206 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %205, i32 0, i32 1
  %207 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %207, i64 %209
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %214, i64 %216
  %218 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %217, i32 0, i32 2
  store i64 %213, i64* %218, align 8
  %219 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %219, i64 %221
  %223 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %222, i32 0, i32 1
  %224 = call i32 @memset(i32* %223, i32 255, i32 4)
  %225 = load %struct.basic_scan_channel_params*, %struct.basic_scan_channel_params** %8, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %225, i64 %227
  %229 = getelementptr inbounds %struct.basic_scan_channel_params, %struct.basic_scan_channel_params* %228, i32 0, i32 0
  %230 = call i32 @memset(i32* %229, i32 255, i32 2)
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %233 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @set_bit(i32 %231, i32 %235)
  %237 = load i32, i32* %13, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %13, align 4
  br label %239

239:                                              ; preds = %185, %67, %52, %47, %30
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %18

243:                                              ; preds = %28
  %244 = load i32, i32* %13, align 4
  ret i32 %244
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
