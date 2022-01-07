; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_unassign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_unassign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32*, i32 }

@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*)* @iwl_mvm_unassign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_unassign_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %9)
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 2
  %20 = call i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm* %16, %struct.iwl_mvm_vif* %17, i32* %19)
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %36 [
    i32 128, label %31
  ]

31:                                               ; preds = %27
  %32 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %35 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %34, i32* null)
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %40 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %38, %struct.ieee80211_vif* %39)
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, i32*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
