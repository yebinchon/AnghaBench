; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_start_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_start_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm = type { i32, i64 }
%struct.iwl_mvm_vif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_start_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_start_ap(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %9)
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %6, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %7, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %18 = call i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm* %16, %struct.ieee80211_vif* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %87

22:                                               ; preds = %2
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %25 = call i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm* %23, %struct.ieee80211_vif* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %87

29:                                               ; preds = %22
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %30, %struct.ieee80211_vif* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %83

36:                                               ; preds = %29
  %37 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %41 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %41, i32 0, i32 1
  %43 = call i32 @iwl_mvm_send_bcast_sta(%struct.iwl_mvm* %39, %struct.ieee80211_vif* %40, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %79

47:                                               ; preds = %36
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %50 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %48, %struct.ieee80211_vif* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %74

54:                                               ; preds = %47
  %55 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %65, i64 %68)
  br label %70

70:                                               ; preds = %64, %59, %54
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %3, align 4
  br label %92

74:                                               ; preds = %53
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %76 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %76, i32 0, i32 1
  %78 = call i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm* %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %46
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %81 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %82 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %80, %struct.ieee80211_vif* %81)
  br label %83

83:                                               ; preds = %79, %35
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %85 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %86 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %84, %struct.ieee80211_vif* %85)
  br label %87

87:                                               ; preds = %83, %28, %21
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %89 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %70
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_send_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
