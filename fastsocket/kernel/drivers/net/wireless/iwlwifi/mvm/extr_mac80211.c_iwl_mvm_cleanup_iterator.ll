; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_cleanup_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_cleanup_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32*, i32, i32, i32 }

@IWL_MVM_STATION_COUNT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_cleanup_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_cleanup_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iwl_mvm*
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* @IWL_MVM_STATION_COUNT, align 4
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %26, i32 0, i32 2
  %28 = call i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm* %25, i32* %27)
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %3
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
