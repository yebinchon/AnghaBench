; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_priv = type { i32 }
%struct.iwl_station_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IWL_INVALID_STATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*)* @iwlagn_mac_sta_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_mac_sta_notify(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.iwl_priv*, align 8
  %10 = alloca %struct.iwl_station_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %12)
  store %struct.iwl_priv* %13, %struct.iwl_priv** %9, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %18, %struct.iwl_station_priv** %10, align 8
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %20 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %67 [
    i32 128, label %22
    i32 129, label %41
  ]

22:                                               ; preds = %4
  %23 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %24 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %31 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %33 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %32, i32 0, i32 2
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %39 = call i32 @ieee80211_sta_block_awake(%struct.ieee80211_hw* %37, %struct.ieee80211_sta* %38, i32 1)
  br label %40

40:                                               ; preds = %36, %22
  br label %68

41:                                               ; preds = %4
  %42 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %43 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %50 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %68

54:                                               ; preds = %41
  %55 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %56 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %58 = call i32 @iwl_sta_id(%struct.ieee80211_sta* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @IWL_INVALID_STATION, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @iwl_sta_modify_ps_wake(%struct.iwl_priv* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %54
  br label %68

67:                                               ; preds = %4
  br label %68

68:                                               ; preds = %67, %66, %53, %40
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %70 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ieee80211_sta_block_awake(%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_sta_modify_ps_wake(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
