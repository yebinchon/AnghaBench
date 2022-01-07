; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_stop_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_stop_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm = type { i32, i64 }
%struct.iwl_mvm_vif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_stop_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_stop_ap(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %7)
  store %struct.iwl_mvm* %8, %struct.iwl_mvm** %5, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %6, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = call i32 @iwl_mvm_prepare_mac_removal(%struct.iwl_mvm* %11, %struct.ieee80211_vif* %12)
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %29, i64 %32)
  br label %34

34:                                               ; preds = %28, %23, %2
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %36 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %35, i32* null)
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %38, i32 0, i32 1
  %40 = call i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm* %37, i32* %39)
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %43 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %41, %struct.ieee80211_vif* %42)
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %46 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %44, %struct.ieee80211_vif* %45)
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_prepare_mac_removal(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, i64) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
