; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_beacon_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_beacon_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@DEBUG_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"beacon interval updated: %d\00", align 1
@BSS_CHANGED_AP_PROBE_RESP = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"beacon info change failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_bss_beacon_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_bss_beacon_info_changed(%struct.wl1271* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %9, align 8
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %4
  %26 = load i32, i32* @DEBUG_MASTER, align 4
  %27 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wl1271_debug(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %35 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @BSS_CHANGED_AP_PROBE_RESP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %47 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = call i32 @wl1271_ap_set_probe_resp_tmpl(%struct.wl1271* %50, i32 %51, %struct.ieee80211_vif* %52)
  br label %54

54:                                               ; preds = %44, %41, %36
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @wlcore_set_beacon_template(%struct.wl1271* %60, %struct.ieee80211_vif* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @wl1271_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_ap_set_probe_resp_tmpl(%struct.wl1271*, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @wlcore_set_beacon_template(%struct.wl1271*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
