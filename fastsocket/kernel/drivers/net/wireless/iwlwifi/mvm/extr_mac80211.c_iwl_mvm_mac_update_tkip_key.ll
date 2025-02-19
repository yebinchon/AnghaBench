; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_update_tkip_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_update_tkip_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*)* @iwl_mvm_mac_update_tkip_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_update_tkip_key(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.iwl_mvm*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %15 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %14)
  store %struct.iwl_mvm* %15, %struct.iwl_mvm** %13, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %13, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %18 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %19 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @iwl_mvm_update_tkip_key(%struct.iwl_mvm* %16, %struct.ieee80211_vif* %17, %struct.ieee80211_key_conf* %18, %struct.ieee80211_sta* %19, i32 %20, i32* %21)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @iwl_mvm_update_tkip_key(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
