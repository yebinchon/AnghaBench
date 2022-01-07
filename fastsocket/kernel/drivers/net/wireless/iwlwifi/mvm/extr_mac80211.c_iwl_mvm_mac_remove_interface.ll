; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_remove_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm = type { i32, i32, i32, i32* }
%struct.iwl_mvm_vif = type { i32*, i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Currently %d interfaces active\0A\00", align 1
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_power_update_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_mac_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
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
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %19 = call i32 @iwl_mvm_vif_dbgfs_clean(%struct.iwl_mvm* %17, %struct.ieee80211_vif* %18)
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %27 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %27, i32 0, i32 1
  %29 = call i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm* %26, i32* %28)
  br label %91

30:                                               ; preds = %2
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %40 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %40, i32 0, i32 1
  %42 = call i32 @iwl_mvm_rm_bcast_sta(%struct.iwl_mvm* %39, i32* %41)
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %45 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %43, %struct.ieee80211_vif* %44)
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %47 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @iwl_mvm_phy_ctxt_remove(%struct.iwl_mvm* %46, i32* %49)
  %51 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %36, %30
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %58, %53
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %84 = load i32, i32* @iwl_mvm_power_update_iterator, align 4
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %86 = call i32 @ieee80211_iterate_active_interfaces(i32 %82, i32 %83, i32 %84, %struct.iwl_mvm* %85)
  br label %87

87:                                               ; preds = %79, %69
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %90 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %88, %struct.ieee80211_vif* %89)
  br label %91

91:                                               ; preds = %87, %25
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %93 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %94 = call i32 @iwl_mvm_mac_ctxt_release(%struct.iwl_mvm* %92, %struct.ieee80211_vif* %93)
  %95 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_prepare_mac_removal(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_vif_dbgfs_clean(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_rm_bcast_sta(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_remove(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces(i32, i32, i32, %struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_release(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
