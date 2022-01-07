; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.iwl_priv = type { i32 }
%struct.iwl_station_priv = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"proceeding to remove station %pM\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Error removing station %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @iwlagn_mac_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.iwl_station_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_priv* %11, %struct.iwl_priv** %7, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %16, %struct.iwl_station_priv** %8, align 8
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %29 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @iwl_deactivate_station(%struct.iwl_priv* %28, i32 %31, i32 %34)
  br label %54

36:                                               ; preds = %3
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %38 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %8, align 8
  %39 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @iwl_remove_station(%struct.iwl_priv* %37, i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @IWL_DEBUG_QUIET_RFKILL(%struct.iwl_priv* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %36
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_deactivate_station(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @iwl_remove_station(%struct.iwl_priv*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_QUIET_RFKILL(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
