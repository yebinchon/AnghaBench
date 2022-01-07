; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i64 }
%struct.wl12xx_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mac80211 conf tx %d\00", align 1
@CONF_PS_SCHEME_UPSD_TRIGGER = common dso_local global i32 0, align 4
@CONF_PS_SCHEME_LEGACY = common dso_local global i32 0, align 4
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@CONF_CHANNEL_TYPE_EDCF = common dso_local global i32 0, align 4
@CONF_ACK_POLICY_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @wl1271_op_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca %struct.wl12xx_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1271*, %struct.wl1271** %14, align 8
  store %struct.wl1271* %15, %struct.wl1271** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %16)
  store %struct.wl12xx_vif* %17, %struct.wl12xx_vif** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @DEBUG_MAC80211, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @wl1271_debug(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @CONF_PS_SCHEME_UPSD_TRIGGER, align 4
  store i32 %29, i32* %11, align 4
  br label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @CONF_PS_SCHEME_LEGACY, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %35 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %34, i32 0, i32 0
  %36 = call i32 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %81

39:                                               ; preds = %32
  %40 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %41 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %81

45:                                               ; preds = %39
  %46 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @wl1271_tx_get_queue(i32 %48)
  %50 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %57 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 5
  %63 = call i32 @wl1271_acx_ac_cfg(%struct.wl1271* %46, %struct.wl12xx_vif* %47, i32 %49, i32 %52, i32 %55, i32 %58, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %78

67:                                               ; preds = %45
  %68 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %69 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @wl1271_tx_get_queue(i32 %70)
  %72 = load i32, i32* @CONF_CHANNEL_TYPE_EDCF, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @wl1271_tx_get_queue(i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @CONF_ACK_POLICY_LEGACY, align 4
  %77 = call i32 @wl1271_acx_tid_cfg(%struct.wl1271* %68, %struct.wl12xx_vif* %69, i32 %71, i32 %72, i32 %74, i32 %75, i32 %76, i32 0, i32 0)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %67, %66
  %79 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %80 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %79)
  br label %81

81:                                               ; preds = %78, %44, %38
  %82 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %12, align 4
  ret i32 %85
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @wl1271_acx_ac_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i32 @wl1271_acx_tid_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
