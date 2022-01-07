; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_set_bitrate_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_set_bitrate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32, i32* }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mac80211 set_bitrate_mask 0x%x 0x%x\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WLCORE_NUM_BANDS = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_bitrate_mask*)* @wl12xx_set_bitrate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_set_bitrate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_bitrate_mask* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca %struct.wl1271*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %6, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %11)
  store %struct.wl12xx_vif* %12, %struct.wl12xx_vif** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1271*, %struct.wl1271** %14, align 8
  store %struct.wl1271* %15, %struct.wl1271** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @DEBUG_MAC80211, align 4
  %17 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %6, align 8
  %18 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wl1271_debug(i32 %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %30)
  %32 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %57, %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @WLCORE_NUM_BANDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %41 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %6, align 8
  %42 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @wl1271_tx_enabled_rates_get(%struct.wl1271* %40, i32 %48, i32 %49)
  %51 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %52 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %35

60:                                               ; preds = %35
  %61 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WLCORE_STATE_ON, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %105

70:                                               ; preds = %60
  %71 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %72 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %70
  %77 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %78 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %79 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %78, i32 0, i32 3
  %80 = call i32 @test_bit(i32 %77, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %76
  %83 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %84 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %105

88:                                               ; preds = %82
  %89 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %90 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %91 = call i32 @wl1271_set_band_rate(%struct.wl1271* %89, %struct.wl12xx_vif* %90)
  %92 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %93 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %94 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %92, i32 %95)
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %98 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %100 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %101 = call i32 @wl1271_acx_sta_rate_policies(%struct.wl1271* %99, %struct.wl12xx_vif* %100)
  store i32 %101, i32* %10, align 4
  %102 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %103 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %102)
  br label %104

104:                                              ; preds = %88, %76, %70
  br label %105

105:                                              ; preds = %104, %87, %69
  %106 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %107 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_tx_enabled_rates_get(%struct.wl1271*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_set_band_rate(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_acx_sta_rate_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
