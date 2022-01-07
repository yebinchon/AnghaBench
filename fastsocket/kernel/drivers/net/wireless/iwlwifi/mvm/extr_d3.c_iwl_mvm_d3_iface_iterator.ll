; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_iface_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_iface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i64 }
%struct.iwl_d3_iter_data = type { i32, %struct.ieee80211_vif*, i32 }
%struct.iwl_mvm_vif = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"More than one managed interface active!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_d3_iface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_d3_iface_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_d3_iter_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iwl_d3_iter_data*
  store %struct.iwl_d3_iter_data* %10, %struct.iwl_d3_iter_data** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %3
  br label %47

24:                                               ; preds = %18
  %25 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.iwl_d3_iter_data*, %struct.iwl_d3_iter_data** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %32, i32 0, i32 1
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %33, align 8
  %35 = icmp ne %struct.ieee80211_vif* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.iwl_d3_iter_data*, %struct.iwl_d3_iter_data** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @IWL_ERR(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.iwl_d3_iter_data*, %struct.iwl_d3_iter_data** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %47

43:                                               ; preds = %31
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %45 = load %struct.iwl_d3_iter_data*, %struct.iwl_d3_iter_data** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %45, i32 0, i32 1
  store %struct.ieee80211_vif* %44, %struct.ieee80211_vif** %46, align 8
  br label %47

47:                                               ; preds = %43, %36, %30, %23
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_ERR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
