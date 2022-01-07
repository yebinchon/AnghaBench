; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32 }
%struct.ieee80211_vif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rm_sta_id(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i64 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm* %8, i64 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 1
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rcu_assign_pointer(i32 %19, i32* null)
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm*, i64) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
