; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.wl12xx_vif = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.wl1271_cmd_scan = type { i8*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.wl1271_cmd_trigger_scan_to = type { i8*, %struct.TYPE_6__, i32, i32 }

@WL1271_NOTHING_TO_SCAN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_SCAN_OPT_SPLIT_SCAN = common dso_local global i32 0, align 4
@WL1271_SCAN_OPT_PASSIVE = common dso_local global i32 0, align 4
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CONF_TX_AC_ANY_TID = common dso_local global i32 0, align 4
@WL1271_SCAN_DEFAULT_TAG = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@WL1271_SCAN_BAND_2_4_GHZ = common dso_local global i32 0, align 4
@WL1271_SCAN_BAND_5_GHZ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PROBE request template failed\00", align 1
@CMD_TRIGGER_SCAN_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"trigger scan to failed for hw scan\00", align 1
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SCAN: \00", align 1
@CMD_SCAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SCAN failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i64)* @wl1271_scan_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_scan_send(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_vif*, align 8
  %13 = alloca %struct.wl1271_cmd_scan*, align 8
  %14 = alloca %struct.wl1271_cmd_trigger_scan_to*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %18 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %17)
  store %struct.ieee80211_vif* %18, %struct.ieee80211_vif** %12, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %5
  %22 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  store i32 %30, i32* %6, align 4
  br label %257

31:                                               ; preds = %21, %5
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.wl1271_cmd_trigger_scan_to* @kzalloc(i32 72, i32 %32)
  %34 = bitcast %struct.wl1271_cmd_trigger_scan_to* %33 to %struct.wl1271_cmd_scan*
  store %struct.wl1271_cmd_scan* %34, %struct.wl1271_cmd_scan** %13, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.wl1271_cmd_trigger_scan_to* @kzalloc(i32 72, i32 %35)
  store %struct.wl1271_cmd_trigger_scan_to* %36, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %37 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %38 = icmp ne %struct.wl1271_cmd_scan* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %41 = icmp ne %struct.wl1271_cmd_trigger_scan_to* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %15, align 4
  br label %250

45:                                               ; preds = %39
  %46 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* @WL1271_SCAN_OPT_SPLIT_SCAN, align 4
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @WL1271_SCAN_OPT_PASSIVE, align 4
  %61 = load i32, i32* %16, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %65 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %68 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %71 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %250

82:                                               ; preds = %63
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @cpu_to_le16(i32 %83)
  %85 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %86 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 9
  store i32 %84, i32* %87, align 8
  %88 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %89 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %94 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @wl1271_get_scan_channels(%struct.wl1271* %88, %struct.TYPE_10__* %92, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %100 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i64 %98, i64* %101, align 8
  %102 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %103 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %82
  %108 = load i32, i32* @WL1271_NOTHING_TO_SCAN, align 4
  store i32 %108, i32* %15, align 4
  br label %250

109:                                              ; preds = %82
  %110 = load i64, i64* %11, align 8
  %111 = call i8* @cpu_to_le32(i64 %110)
  %112 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %113 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 8
  store i8* %111, i8** %114, align 8
  %115 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %116 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %121 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 7
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @CONF_TX_AC_ANY_TID, align 4
  %124 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %125 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 6
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* @WL1271_SCAN_DEFAULT_TAG, align 4
  %128 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %129 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %109
  %135 = load i32, i32* @WL1271_SCAN_BAND_2_4_GHZ, align 4
  %136 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %137 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  store i32 %135, i32* %138, align 8
  br label %144

139:                                              ; preds = %109
  %140 = load i32, i32* @WL1271_SCAN_BAND_5_GHZ, align 4
  %141 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %142 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %146 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %144
  %151 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %152 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %150
  %157 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %158 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %162 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  store i32 %160, i32* %163, align 4
  %164 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %165 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %169 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %173 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @memcpy(i32 %167, i32 %171, i32 %175)
  br label %177

177:                                              ; preds = %156, %150, %144
  %178 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %179 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %12, align 8
  %182 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @ETH_ALEN, align 4
  %185 = call i32 @memcpy(i32 %180, i32 %183, i32 %184)
  %186 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %187 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %188 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %189 = getelementptr inbounds %struct.wl1271_cmd_scan, %struct.wl1271_cmd_scan* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %194 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %198 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %202 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %208 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @wl12xx_cmd_build_probe_req(%struct.wl1271* %186, %struct.wl12xx_vif* %187, i64 %191, i32 %192, i32 %196, i32 %200, i32 %206, i32 %212, i32 0)
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %177
  %217 = call i32 @wl1271_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %250

218:                                              ; preds = %177
  %219 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %220 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i8* @cpu_to_le32(i64 %223)
  %225 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %226 = getelementptr inbounds %struct.wl1271_cmd_trigger_scan_to, %struct.wl1271_cmd_trigger_scan_to* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  %227 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %228 = load i32, i32* @CMD_TRIGGER_SCAN_TO, align 4
  %229 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %230 = call i32 @wl1271_cmd_send(%struct.wl1271* %227, i32 %228, %struct.wl1271_cmd_trigger_scan_to* %229, i32 72, i32 0)
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %15, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %218
  %234 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %250

235:                                              ; preds = %218
  %236 = load i32, i32* @DEBUG_SCAN, align 4
  %237 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %238 = bitcast %struct.wl1271_cmd_scan* %237 to %struct.wl1271_cmd_trigger_scan_to*
  %239 = call i32 @wl1271_dump(i32 %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.wl1271_cmd_trigger_scan_to* %238, i32 72)
  %240 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %241 = load i32, i32* @CMD_SCAN, align 4
  %242 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %243 = bitcast %struct.wl1271_cmd_scan* %242 to %struct.wl1271_cmd_trigger_scan_to*
  %244 = call i32 @wl1271_cmd_send(%struct.wl1271* %240, i32 %241, %struct.wl1271_cmd_trigger_scan_to* %243, i32 72, i32 0)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %235
  %248 = call i32 @wl1271_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %250

249:                                              ; preds = %235
  br label %250

250:                                              ; preds = %249, %247, %233, %216, %107, %79, %42
  %251 = load %struct.wl1271_cmd_scan*, %struct.wl1271_cmd_scan** %13, align 8
  %252 = bitcast %struct.wl1271_cmd_scan* %251 to %struct.wl1271_cmd_trigger_scan_to*
  %253 = call i32 @kfree(%struct.wl1271_cmd_trigger_scan_to* %252)
  %254 = load %struct.wl1271_cmd_trigger_scan_to*, %struct.wl1271_cmd_trigger_scan_to** %14, align 8
  %255 = call i32 @kfree(%struct.wl1271_cmd_trigger_scan_to* %254)
  %256 = load i32, i32* %15, align 4
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %250, %29
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.wl1271_cmd_trigger_scan_to* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @wl1271_get_scan_channels(%struct.wl1271*, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wl12xx_cmd_build_probe_req(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_trigger_scan_to*, i32, i32) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wl1271_cmd_trigger_scan_to*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_trigger_scan_to*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
