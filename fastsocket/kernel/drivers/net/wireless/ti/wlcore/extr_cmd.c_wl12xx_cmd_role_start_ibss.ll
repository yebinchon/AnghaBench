; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_ibss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_start_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_vif = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32 }
%struct.wl12xx_cmd_role_start = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i8* }
%struct.TYPE_4__ = type { i64, i8*, i32, i32, i32, i32, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cmd role start ibss %d\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WLCORE_BAND_5GHZ = common dso_local global i32 0, align 4
@WL12XX_SSID_TYPE_ANY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [84 x i8] c"role start: roleid=%d, hlid=%d, session=%d basic_rate_set: 0x%x, remote_rates: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vif->bss_conf.bssid = %pM\00", align 1
@CMD_ROLE_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to initiate cmd role enable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_start_ibss(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wl12xx_cmd_role_start*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %9 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %10 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %9)
  store %struct.ieee80211_vif* %10, %struct.ieee80211_vif** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %12, %struct.ieee80211_bss_conf** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wl12xx_cmd_role_start* @kzalloc(i32 80, i32 %13)
  store %struct.wl12xx_cmd_role_start* %14, %struct.wl12xx_cmd_role_start** %6, align 8
  %15 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %16 = icmp ne %struct.wl12xx_cmd_role_start* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %180

20:                                               ; preds = %2
  %21 = load i32, i32* @DEBUG_CMD, align 4
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %23 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %30 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @WLCORE_BAND_5GHZ, align 4
  %38 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %39 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %20
  %41 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %42 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %45 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %47 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %51 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 8
  store i8* %49, i8** %52, align 8
  %53 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %54 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %58 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 7
  store i32 %56, i32* %59, align 4
  %60 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %64 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 6
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @WL12XX_SSID_TYPE_ANY, align 4
  %67 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %68 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 4
  %70 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %71 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %74 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  %76 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %77 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %81 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %84 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memcpy(i32 %79, i32 %82, i32 %85)
  %87 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %88 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %92 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ETH_ALEN, align 4
  %96 = call i32 @memcpy(i32 %90, i32 %94, i32 %95)
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %98 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %102 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i8* %100, i8** %103, align 8
  %104 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %105 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %40
  %111 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %112 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %113 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %114 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = call i32 @wl12xx_allocate_link(%struct.wl1271* %111, %struct.wl12xx_vif* %112, i64* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %177

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %40
  %122 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %123 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %127 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %130 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %134 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  %136 = load i32, i32* @DEBUG_CMD, align 4
  %137 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %138 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %141 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %145 = getelementptr inbounds %struct.wl12xx_cmd_role_start, %struct.wl12xx_cmd_role_start* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %149 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %152 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %136, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %143, i32 %147, i32 %150, i32 %153)
  %155 = load i32, i32* @DEBUG_CMD, align 4
  %156 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %157 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, i32, ...) @wl1271_debug(i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  %161 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %162 = load i32, i32* @CMD_ROLE_START, align 4
  %163 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %164 = call i32 @wl1271_cmd_send(%struct.wl1271* %161, i32 %162, %struct.wl12xx_cmd_role_start* %163, i32 80, i32 0)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %121
  %168 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %170

169:                                              ; preds = %121
  br label %177

170:                                              ; preds = %167
  %171 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %172 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %173 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %174 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = call i32 @wl12xx_free_link(%struct.wl1271* %171, %struct.wl12xx_vif* %172, i64* %175)
  br label %177

177:                                              ; preds = %170, %169, %119
  %178 = load %struct.wl12xx_cmd_role_start*, %struct.wl12xx_cmd_role_start** %6, align 8
  %179 = call i32 @kfree(%struct.wl12xx_cmd_role_start* %178)
  br label %180

180:                                              ; preds = %177, %17
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local %struct.wl12xx_cmd_role_start* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

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
