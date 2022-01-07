; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_sched_scan_ssid_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_sched_scan_ssid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32, i32, %struct.cfg80211_ssid*, %struct.cfg80211_match_set* }
%struct.cfg80211_ssid = type { i64, i32 }
%struct.cfg80211_match_set = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wl1271_cmd_sched_scan_ssid_list = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i8*, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cmd sched scan ssid list\00", align 1
@SCAN_SSID_FILTER_ANY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCAN_SSID_FILTER_DISABLED = common dso_local global i32 0, align 4
@SCAN_SSID_TYPE_HIDDEN = common dso_local global i8* null, align 8
@SCAN_SSID_TYPE_PUBLIC = common dso_local global i8* null, align 8
@SCAN_SSID_FILTER_LIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"SSID_LIST: \00", align 1
@CMD_CONNECTION_SCAN_SSID_CFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cmd sched scan ssid list failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_scan_sched_scan_ssid_list(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.cfg80211_sched_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %8 = alloca %struct.wl1271_cmd_sched_scan_ssid_list*, align 8
  %9 = alloca %struct.cfg80211_match_set*, align 8
  %10 = alloca %struct.cfg80211_ssid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %7, align 8
  store %struct.wl1271_cmd_sched_scan_ssid_list* null, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %16 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %17 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %16, i32 0, i32 3
  %18 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %17, align 8
  store %struct.cfg80211_match_set* %18, %struct.cfg80211_match_set** %9, align 8
  %19 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %20 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %19, i32 0, i32 2
  %21 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %20, align 8
  store %struct.cfg80211_ssid* %21, %struct.cfg80211_ssid** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @DEBUG_CMD, align 4
  %23 = call i32 @wl1271_debug(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %43, %3
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %27 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %31, i64 %33
  %35 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %39, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %46
  %50 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %51 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %56 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %61 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %60, i32 0, i32 2
  %62 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %61, align 8
  %63 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %62, i64 0
  %64 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59, %49
  %68 = load i32, i32* @SCAN_SSID_FILTER_ANY, align 4
  store i32 %68, i32* %12, align 4
  br label %367

69:                                               ; preds = %59, %54, %46
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.wl1271_cmd_sched_scan_ssid_list* @kzalloc(i32 24, i32 %70)
  store %struct.wl1271_cmd_sched_scan_ssid_list* %71, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %72 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %73 = icmp ne %struct.wl1271_cmd_sched_scan_ssid_list* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %367

77:                                               ; preds = %69
  %78 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %79 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %82 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %159, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @SCAN_SSID_FILTER_DISABLED, align 4
  store i32 %86, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %155, %85
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %90 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %158

93:                                               ; preds = %87
  %94 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %94, i64 %96
  %98 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i8*, i8** @SCAN_SSID_TYPE_HIDDEN, align 8
  br label %105

103:                                              ; preds = %93
  %104 = load i8*, i8** @SCAN_SSID_TYPE_PUBLIC, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i8* [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %108 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %111 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i8* %106, i8** %114, align 8
  %115 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %115, i64 %117
  %119 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %122 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %125 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i64 %120, i64* %128, align 8
  %129 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %130 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %133 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %138, i64 %140
  %142 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %144, i64 %146
  %148 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @memcpy(i32 %137, i32 %143, i64 %149)
  %151 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %152 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %105
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %87

158:                                              ; preds = %87
  br label %351

159:                                              ; preds = %77
  %160 = load i32, i32* @SCAN_SSID_FILTER_LIST, align 4
  store i32 %160, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %230, %159
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %164 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %233

167:                                              ; preds = %161
  %168 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %168, i64 %170
  %172 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %167
  br label %230

177:                                              ; preds = %167
  %178 = load i8*, i8** @SCAN_SSID_TYPE_PUBLIC, align 8
  %179 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %180 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %183 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  store i8* %178, i8** %186, align 8
  %187 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %187, i64 %189
  %191 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %195 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %194, i32 0, i32 1
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %198 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i64 %193, i64* %201, align 8
  %202 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %203 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %202, i32 0, i32 1
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %206 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %211, i64 %213
  %215 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %218, i64 %220
  %222 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @memcpy(i32 %210, i32 %217, i64 %224)
  %226 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %227 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %227, align 8
  br label %230

230:                                              ; preds = %177, %176
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %161

233:                                              ; preds = %161
  %234 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %235 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp sgt i32 %236, 1
  br i1 %237, label %251, label %238

238:                                              ; preds = %233
  %239 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %240 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %350

243:                                              ; preds = %238
  %244 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %245 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %244, i32 0, i32 2
  %246 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %245, align 8
  %247 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %246, i64 0
  %248 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp sgt i64 %249, 0
  br i1 %250, label %251, label %350

251:                                              ; preds = %243, %233
  store i32 0, i32* %13, align 4
  br label %252

252:                                              ; preds = %346, %251
  %253 = load i32, i32* %13, align 4
  %254 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %255 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %349

258:                                              ; preds = %252
  %259 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %260 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %259, i32 0, i32 2
  %261 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %261, i64 %263
  %265 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %258
  br label %346

269:                                              ; preds = %258
  store i32 0, i32* %14, align 4
  br label %270

270:                                              ; preds = %332, %269
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %274 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ult i64 %272, %275
  br i1 %276, label %277, label %335

277:                                              ; preds = %270
  %278 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %279 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %278, i32 0, i32 2
  %280 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %279, align 8
  %281 = load i32, i32* %13, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %280, i64 %282
  %284 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %287 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %286, i32 0, i32 1
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = load i32, i32* %14, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %285, %293
  br i1 %294, label %295, label %331

295:                                              ; preds = %277
  %296 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %297 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %296, i32 0, i32 2
  %298 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %297, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %298, i64 %300
  %302 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %305 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %304, i32 0, i32 1
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = load i32, i32* %14, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %313 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %312, i32 0, i32 2
  %314 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %314, i64 %316
  %318 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @memcmp(i32 %303, i32 %311, i64 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %295
  %323 = load i8*, i8** @SCAN_SSID_TYPE_HIDDEN, align 8
  %324 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %325 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %324, i32 0, i32 1
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %325, align 8
  %327 = load i32, i32* %14, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  store i8* %323, i8** %330, align 8
  br label %335

331:                                              ; preds = %295, %277
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %14, align 4
  br label %270

335:                                              ; preds = %322, %270
  %336 = load i32, i32* %14, align 4
  %337 = sext i32 %336 to i64
  %338 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %339 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp eq i64 %337, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %335
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %11, align 4
  br label %364

345:                                              ; preds = %335
  br label %346

346:                                              ; preds = %345, %268
  %347 = load i32, i32* %13, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %13, align 4
  br label %252

349:                                              ; preds = %252
  br label %350

350:                                              ; preds = %349, %243, %238
  br label %351

351:                                              ; preds = %350, %158
  %352 = load i32, i32* @DEBUG_SCAN, align 4
  %353 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %354 = call i32 @wl1271_dump(i32 %352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.wl1271_cmd_sched_scan_ssid_list* %353, i32 24)
  %355 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %356 = load i32, i32* @CMD_CONNECTION_SCAN_SSID_CFG, align 4
  %357 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %358 = call i32 @wl1271_cmd_send(%struct.wl1271* %355, i32 %356, %struct.wl1271_cmd_sched_scan_ssid_list* %357, i32 24, i32 0)
  store i32 %358, i32* %11, align 4
  %359 = load i32, i32* %11, align 4
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %351
  %362 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %364

363:                                              ; preds = %351
  br label %364

364:                                              ; preds = %363, %361, %342
  %365 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %366 = call i32 @kfree(%struct.wl1271_cmd_sched_scan_ssid_list* %365)
  br label %367

367:                                              ; preds = %364, %74, %67
  %368 = load i32, i32* %11, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %367
  %371 = load i32, i32* %11, align 4
  store i32 %371, i32* %4, align 4
  br label %374

372:                                              ; preds = %367
  %373 = load i32, i32* %12, align 4
  store i32 %373, i32* %4, align 4
  br label %374

374:                                              ; preds = %372, %370
  %375 = load i32, i32* %4, align 4
  ret i32 %375
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_cmd_sched_scan_ssid_list* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wl1271_cmd_sched_scan_ssid_list*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_sched_scan_ssid_list*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_sched_scan_ssid_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
