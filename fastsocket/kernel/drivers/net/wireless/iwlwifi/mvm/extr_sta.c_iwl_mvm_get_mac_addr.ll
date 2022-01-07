; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i64* }
%struct.iwl_mvm_vif = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @iwl_mvm_get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @iwl_mvm_get_mac_addr(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwl_mvm_vif*
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %8, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %16 = icmp ne %struct.ieee80211_sta* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %4, align 8
  br label %51

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 0
  %45 = call i32 @lockdep_is_held(i32* %44)
  %46 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %42, i32 %45)
  store %struct.ieee80211_sta* %46, %struct.ieee80211_sta** %7, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  store i64* %49, i64** %4, align 8
  br label %51

50:                                               ; preds = %27, %21
  store i64* null, i64** %4, align 8
  br label %51

51:                                               ; preds = %50, %33, %17
  %52 = load i64*, i64** %4, align 8
  ret i64* %52
}

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
