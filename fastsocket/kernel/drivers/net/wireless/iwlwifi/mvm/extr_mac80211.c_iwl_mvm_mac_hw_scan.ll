; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_hw_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_scan_request = type { i64 }
%struct.iwl_mvm = type { i64, i32 }

@MAX_NUM_SCAN_CHANNELS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_NONE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*)* @iwl_mvm_mac_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %8, align 8
  %12 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %13 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %18 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAX_NUM_SCAN_CHANNELS, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %16
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IWL_MVM_SCAN_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %38 = call i32 @iwl_mvm_scan_request(%struct.iwl_mvm* %35, %struct.ieee80211_vif* %36, %struct.cfg80211_scan_request* %37)
  store i32 %38, i32* %9, align 4
  br label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %22
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_scan_request(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
