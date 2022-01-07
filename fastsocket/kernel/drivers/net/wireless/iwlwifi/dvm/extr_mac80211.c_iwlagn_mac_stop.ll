; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.iwl_priv = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @iwlagn_mac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_mac_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.iwl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %4)
  store %struct.iwl_priv* %5, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %7 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %20 = call i32 @iwl_down(%struct.iwl_priv* %19)
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 2
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = call i32 @iwl_cancel_deferred_work(%struct.iwl_priv* %24)
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @flush_workqueue(i32 %28)
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @iwl_trans_stop_hw(i32 %32, i32 0)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %35 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_down(%struct.iwl_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_cancel_deferred_work(%struct.iwl_priv*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @iwl_trans_stop_hw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
