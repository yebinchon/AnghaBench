; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_sta_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm = type { i32* }
%struct.iwl_mvm_sta = type { i64 }

@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*)* @iwl_mvm_mac_sta_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_sta_notify(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %9, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %17, %struct.iwl_mvm_sta** %10, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %48 [
    i32 128, label %19
    i32 129, label %34
  ]

19:                                               ; preds = %4
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = call i32 @atomic_read(i32* %26)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %32 = call i32 @ieee80211_sta_block_awake(%struct.ieee80211_hw* %30, %struct.ieee80211_sta* %31, i32 1)
  br label %33

33:                                               ; preds = %29, %19
  br label %49

34:                                               ; preds = %4
  %35 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %47 = call i32 @iwl_mvm_sta_modify_ps_wake(%struct.iwl_mvm* %45, %struct.ieee80211_sta* %46)
  br label %49

48:                                               ; preds = %4
  br label %49

49:                                               ; preds = %48, %44, %43, %33
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ieee80211_sta_block_awake(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_sta_modify_ps_wake(%struct.iwl_mvm*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
