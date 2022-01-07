; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_rssi_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_rssi_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i64 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_bt_iterator_data = type { i32, %struct.iwl_mvm* }
%struct.iwl_mvm = type { i32, i32* }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_bt_rssi_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bt_rssi_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_bt_iterator_data*, align 8
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.iwl_mvm_sta*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_mvm_vif*
  store %struct.iwl_mvm_vif* %16, %struct.iwl_mvm_vif** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.iwl_bt_iterator_data*
  store %struct.iwl_bt_iterator_data* %18, %struct.iwl_bt_iterator_data** %8, align 8
  %19 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %20 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %19, i32 0, i32 1
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %20, align 8
  store %struct.iwl_mvm* %21, %struct.iwl_mvm** %9, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %3
  br label %59

34:                                               ; preds = %27
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 0
  %45 = call i32 @lockdep_is_held(i32* %44)
  %46 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %42, i32 %45)
  store %struct.ieee80211_sta* %46, %struct.ieee80211_sta** %10, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = bitcast i8* %50 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %51, %struct.iwl_mvm_sta** %11, align 8
  %52 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %34
  %57 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %33, %56, %34
  ret void
}

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
