; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i64, i32, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mac80211 conf tx %d\00", align 1
@WL1251_ACX_PS_SCHEME_UPSD_TRIGGER = common dso_local global i32 0, align 4
@WL1251_ACX_PS_SCHEME_LEGACY = common dso_local global i32 0, align 4
@CHANNEL_TYPE_EDCF = common dso_local global i32 0, align 4
@WL1251_ACX_ACK_POLICY_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @wl1251_op_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wl1251*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.wl1251*, %struct.wl1251** %13, align 8
  store %struct.wl1251* %14, %struct.wl1251** %10, align 8
  %15 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %16 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @DEBUG_MAC80211, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @wl1251_debug(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %22 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %73

26:                                               ; preds = %4
  %27 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @wl1251_tx_get_queue(i32 %28)
  %30 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 32
  %43 = call i32 @wl1251_acx_ac_cfg(%struct.wl1251* %27, i32 %29, i32 %32, i32 %35, i32 %38, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %70

47:                                               ; preds = %26
  %48 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @WL1251_ACX_PS_SCHEME_UPSD_TRIGGER, align 4
  store i32 %53, i32* %9, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @WL1251_ACX_PS_SCHEME_LEGACY, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @wl1251_tx_get_queue(i32 %58)
  %60 = load i32, i32* @CHANNEL_TYPE_EDCF, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @wl1251_tx_get_queue(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @WL1251_ACX_ACK_POLICY_LEGACY, align 4
  %65 = call i32 @wl1251_acx_tid_cfg(%struct.wl1251* %57, i32 %59, i32 %60, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %68, %46
  %71 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %72 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %71)
  br label %73

73:                                               ; preds = %70, %25
  %74 = load %struct.wl1251*, %struct.wl1251** %10, align 8
  %75 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_ac_cfg(%struct.wl1251*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_tx_get_queue(i32) #1

declare dso_local i32 @wl1251_acx_tid_cfg(%struct.wl1251*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
