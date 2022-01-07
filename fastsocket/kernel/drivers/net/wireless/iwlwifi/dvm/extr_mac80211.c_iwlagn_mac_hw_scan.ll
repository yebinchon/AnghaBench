; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_hw_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_scan_request = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_priv = type { i64, i32, %struct.ieee80211_vif*, %struct.cfg80211_scan_request* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWL_SCAN_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"SCAN request during internal scan - defer\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*)* @iwlagn_mac_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_scan_request* %2, %struct.cfg80211_scan_request** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_priv* %11, %struct.iwl_priv** %8, align 8
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %13 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %15 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %72

21:                                               ; preds = %3
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IWL_SCAN_NORMAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %32 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 3
  store %struct.cfg80211_scan_request* %33, %struct.cfg80211_scan_request** %35, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 2
  store %struct.ieee80211_vif* %36, %struct.ieee80211_vif** %38, align 8
  store i32 0, i32* %9, align 4
  br label %65

39:                                               ; preds = %21
  %40 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 3
  store %struct.cfg80211_scan_request* %40, %struct.cfg80211_scan_request** %42, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 2
  store %struct.ieee80211_vif* %43, %struct.ieee80211_vif** %45, align 8
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = load i64, i64* @IWL_SCAN_NORMAL, align 8
  %49 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %50 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @iwl_scan_initiate(%struct.iwl_priv* %46, %struct.ieee80211_vif* %47, i64 %48, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %39
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 3
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %61, align 8
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %62, i32 0, i32 2
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %63, align 8
  br label %64

64:                                               ; preds = %59, %39
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %67 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %18
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_scan_initiate(%struct.iwl_priv*, %struct.ieee80211_vif*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
