; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_rekey_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_set_rekey_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_gtk_rekey_data = type { i32, i32, i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NL80211_KEK_LEN = common dso_local global i32 0, align 4
@NL80211_KCK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_set_rekey_data(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_gtk_rekey_data* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.cfg80211_gtk_rekey_data*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.cfg80211_gtk_rekey_data* %2, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %9)
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NL80211_KEK_LEN, align 4
  %28 = call i32 @memcpy(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NL80211_KCK_LEN, align 4
  %37 = call i32 @memcpy(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %38, i32 0, i32 0
  %40 = call i32 @be64_to_cpup(i32* %39)
  %41 = call i32 @cpu_to_le64(i32 %40)
  %42 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @be64_to_cpup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
