; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.iwl_priv = type { i32 }
%struct.iwl_station_priv = type { i32, i32, i32 }
%struct.iwl_vif_priv = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"proceeding to add station %pM\0A\00", align 1
@IWL_INVALID_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to add station %pM (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @iwlagn_mac_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca %struct.iwl_station_priv*, align 8
  %10 = alloca %struct.iwl_vif_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %14)
  store %struct.iwl_priv* %15, %struct.iwl_priv** %8, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %20, %struct.iwl_station_priv** %9, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.iwl_vif_priv*
  store %struct.iwl_vif_priv* %25, %struct.iwl_vif_priv** %10, align 8
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @IWL_INVALID_STATION, align 4
  %38 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %9, align 8
  %39 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %9, align 8
  %41 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %40, i32 0, i32 2
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %3
  %49 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %3
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %53 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %10, align 8
  %54 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %61 = call i32 @iwl_add_station_common(%struct.iwl_priv* %52, i32 %55, i32 %58, i32 %59, %struct.ieee80211_sta* %60, i32* %13)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %51
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @IWL_ERR(%struct.iwl_priv* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %51
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %9, align 8
  %75 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %64
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @iwl_add_station_common(%struct.iwl_priv*, i32, i32, i32, %struct.ieee80211_sta*, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
