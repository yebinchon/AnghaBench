; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mac80211 bss info role %d changed 0x%x\00", align 1
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca %struct.wl12xx_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1271*, %struct.wl1271** %14, align 8
  store %struct.wl1271* %15, %struct.wl1271** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %16)
  store %struct.wl12xx_vif* %17, %struct.wl12xx_vif** %10, align 8
  %18 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %19 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @DEBUG_MAC80211, align 4
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %26 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @wl1271_debug(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 2
  %40 = call i32 @cancel_delayed_work_sync(i32* %39)
  br label %41

41:                                               ; preds = %37, %32, %4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %56 = call i32 @wl1271_tx_flush(%struct.wl1271* %55)
  br label %57

57:                                               ; preds = %54, %49, %44, %41
  %58 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WLCORE_STATE_ON, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %105

70:                                               ; preds = %57
  %71 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %72 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %73 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %72, i32 0, i32 1
  %74 = call i32 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %105

81:                                               ; preds = %70
  %82 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %83 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %105

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %92 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %93 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @wl1271_bss_info_changed_ap(%struct.wl1271* %91, %struct.ieee80211_vif* %92, %struct.ieee80211_bss_conf* %93, i32 %94)
  br label %102

96:                                               ; preds = %87
  %97 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %99 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @wl1271_bss_info_changed_sta(%struct.wl1271* %97, %struct.ieee80211_vif* %98, %struct.ieee80211_bss_conf* %99, i32 %100)
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %104 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %103)
  br label %105

105:                                              ; preds = %102, %86, %80, %69
  %106 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %107 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wl1271_tx_flush(%struct.wl1271*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_bss_info_changed_ap(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wl1271_bss_info_changed_sta(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
