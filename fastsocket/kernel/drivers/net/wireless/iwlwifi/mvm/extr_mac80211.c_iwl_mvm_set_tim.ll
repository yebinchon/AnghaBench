; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_set_tim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_set_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Station is not associated to a vif\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32)* @iwl_mvm_set_tim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_set_tim(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %8, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %16, %struct.iwl_mvm_sta** %9, align 8
  %17 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %18 = icmp ne %struct.iwl_mvm_sta* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %26 = call i32 @IWL_ERR(%struct.iwl_mvm* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %31 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm* %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
