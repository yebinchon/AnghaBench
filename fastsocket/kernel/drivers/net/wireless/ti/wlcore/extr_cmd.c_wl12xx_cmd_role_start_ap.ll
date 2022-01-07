; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wl12xx_vif = type { i32, i32, i32, %struct.TYPE_10__, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.wl12xx_cmd_role_start = type { i32, i8*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i8*, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct.ieee80211_vif = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i64, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cmd role start ap %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"got a null SSID from beacon/bss\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_AP_BSS_INDEX = common dso_local global i32 0, align 4
@WL1271_AP_DEF_BEACON_EXP = common dso_local global i32 0, align 4
@WL12XX_SSID_TYPE_PUBLIC = common dso_local global i32 0, align 4
@WL12XX_SSID_TYPE_HIDDEN = common dso_local global i32 0, align 4
@CONF_TX_ENABLED_RATES = common dso_local global i32 0, align 4
@CONF_TX_MCS_RATES = common dso_local global i32 0, align 4
@CONF_TX_CCK_RATES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cmd role start ap with supported_rates 0x%08x\00", align 1
@WLCORE_BAND_2_4GHZ = common dso_local global i8* null, align 8
@WLCORE_BAND_5GHZ = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"ap start - unknown band: %d\00", align 1
@CMD_ROLE_START = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to initiate cmd role start ap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_start_ap(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.wl12xx_cmd_role_start*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %11 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %10)
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %6, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %13, %struct.ieee80211_bss_conf** %7, align 8
  %14 = load i32, i32* @DEBUG_CMD, align 4
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wl1271_debug(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %20 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %293

32:                                               ; preds = %23, %2
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.wl12xx_cmd_role_start* @kzalloc(i32 128, i32 %33)
  store %struct.wl12xx_cmd_role_start* %34, %struct.wl12xx_cmd_role_start** %5, align 8
  %35 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %36 = icmp ne %struct.wl12xx_cmd_role_start* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %293

40:                                               ; preds = %32
  %41 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %42 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %43 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %44 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = call i32 @wl12xx_allocate_link(%struct.wl1271* %41, %struct.wl12xx_vif* %42, i64* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %290

50:                                               ; preds = %40
  %51 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %52 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %53 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %54 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = call i32 @wl12xx_allocate_link(%struct.wl1271* %51, %struct.wl12xx_vif* %52, i64* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %283

60:                                               ; preds = %50
  %61 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %62 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %68 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32 %63, i32* %72, align 4
  %73 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %74 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %77 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %79 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %85 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 15
  store i8* %83, i8** %86, align 8
  %87 = load i32, i32* @WL1271_AP_BSS_INDEX, align 4
  %88 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %89 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 14
  store i32 %87, i32* %90, align 8
  %91 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %92 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %96 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %99 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %103 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  %105 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %106 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %109 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %115 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 13
  store i32 %113, i32* %116, align 4
  %117 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %118 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %121 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %127 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 12
  store i32 %125, i32* %128, align 8
  %129 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %130 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %134 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 11
  store i8* %132, i8** %135, align 8
  %136 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %137 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 8
  %139 = call i8* @cpu_to_le16(i32 %138)
  %140 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %141 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 10
  store i8* %139, i8** %142, align 8
  %143 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %144 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %147 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 9
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @WL1271_AP_DEF_BEACON_EXP, align 4
  %150 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %151 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 8
  store i32 %149, i32* %152, align 8
  %153 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %154 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  %156 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %157 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %160 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 7
  store i32 %158, i32* %161, align 4
  %162 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %163 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %166 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %168 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @wlcore_get_native_channel_type(i32 %169)
  %171 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %172 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %174 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %199, label %177

177:                                              ; preds = %60
  %178 = load i32, i32* @WL12XX_SSID_TYPE_PUBLIC, align 4
  %179 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %180 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 6
  store i32 %178, i32* %181, align 8
  %182 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %183 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %186 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 5
  store i64 %184, i64* %187, align 8
  %188 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %189 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %193 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %196 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %195, i32 0, i32 5
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @memcpy(i32 %191, i32 %194, i64 %197)
  br label %221

199:                                              ; preds = %60
  %200 = load i32, i32* @WL12XX_SSID_TYPE_HIDDEN, align 4
  %201 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %202 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 6
  store i32 %200, i32* %203, align 8
  %204 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %205 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %208 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 5
  store i64 %206, i64* %209, align 8
  %210 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %211 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %218 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @memcpy(i32 %213, i32 %216, i64 %219)
  br label %221

221:                                              ; preds = %199, %177
  %222 = load i32, i32* @CONF_TX_ENABLED_RATES, align 4
  %223 = load i32, i32* @CONF_TX_MCS_RATES, align 4
  %224 = or i32 %222, %223
  %225 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %226 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %227 = call i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271* %225, %struct.wl12xx_vif* %226)
  %228 = or i32 %224, %227
  store i32 %228, i32* %8, align 4
  %229 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %230 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %221
  %234 = load i32, i32* @CONF_TX_CCK_RATES, align 4
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %8, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %233, %221
  %239 = load i32, i32* @DEBUG_CMD, align 4
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @wl1271_debug(i32 %239, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* %8, align 4
  %243 = call i8* @cpu_to_le32(i32 %242)
  %244 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %245 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 3
  store i8* %243, i8** %246, align 8
  %247 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %248 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  switch i32 %249, label %258 [
    i32 129, label %250
    i32 128, label %254
  ]

250:                                              ; preds = %238
  %251 = load i8*, i8** @WLCORE_BAND_2_4GHZ, align 8
  %252 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %253 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %252, i32 0, i32 1
  store i8* %251, i8** %253, align 8
  br label %266

254:                                              ; preds = %238
  %255 = load i8*, i8** @WLCORE_BAND_5GHZ, align 8
  %256 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %257 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  br label %266

258:                                              ; preds = %238
  %259 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %260 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @wl1271_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %261)
  %263 = load i8*, i8** @WLCORE_BAND_2_4GHZ, align 8
  %264 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %265 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  br label %266

266:                                              ; preds = %258, %254, %250
  %267 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %268 = load i32, i32* @CMD_ROLE_START, align 4
  %269 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %270 = call i32 @wl1271_cmd_send(%struct.wl1271* %267, i32 %268, %struct.wl12xx_cmd_role_start* %269, i32 128, i32 0)
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %266
  %274 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %276

275:                                              ; preds = %266
  br label %290

276:                                              ; preds = %273
  %277 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %278 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %279 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %280 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = call i32 @wl12xx_free_link(%struct.wl1271* %277, %struct.wl12xx_vif* %278, i64* %281)
  br label %283

283:                                              ; preds = %276, %59
  %284 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %285 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %286 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %287 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = call i32 @wl12xx_free_link(%struct.wl1271* %284, %struct.wl12xx_vif* %285, i64* %288)
  br label %290

290:                                              ; preds = %283, %275, %49
  %291 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %5, align 8
  %292 = call i32 @kfree(%struct.wl12xx_cmd_role_start* %291)
  br label %293

293:                                              ; preds = %290, %37, %28
  %294 = load i32, i32* %9, align 4
  ret i32 %294
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local %struct.wl12xx_cmd_role_start* @kzalloc(i32, i32) #1

declare dso_local i32 @wl12xx_allocate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wlcore_get_native_channel_type(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_start*, i32, i32) #1

declare dso_local i32 @wl12xx_free_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
