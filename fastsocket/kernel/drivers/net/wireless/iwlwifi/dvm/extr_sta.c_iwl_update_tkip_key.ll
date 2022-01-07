; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_update_tkip_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_update_tkip_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_update_tkip_key(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %17 = call i64 @iwlagn_key_sta_id(%struct.iwl_priv* %14, %struct.ieee80211_vif* %15, %struct.ieee80211_sta* %16)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @IWL_INVALID_STATION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %35

22:                                               ; preds = %6
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %24 = call i64 @iwl_scan_cancel(%struct.iwl_priv* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %35

27:                                               ; preds = %22
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* @CMD_ASYNC, align 4
  %34 = call i32 @iwlagn_send_sta_key(%struct.iwl_priv* %28, %struct.ieee80211_key_conf* %29, i64 %30, i32 %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %26, %21
  ret void
}

declare dso_local i64 @iwlagn_key_sta_id(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i64 @iwl_scan_cancel(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_send_sta_key(%struct.iwl_priv*, %struct.ieee80211_key_conf*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
