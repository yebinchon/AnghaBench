; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sta_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ath9k_htc_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @ath9k_htc_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.ath9k_htc_priv*, align 8
  %8 = alloca %struct.ath9k_htc_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %11, align 8
  store %struct.ath9k_htc_priv* %12, %struct.ath9k_htc_priv** %7, align 8
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %17 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %16)
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %21, %struct.ath9k_htc_sta** %8, align 8
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %23 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %8, align 8
  %26 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @htc_sta_drain(i32 %24, i32 %27)
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %32 = call i32 @ath9k_htc_remove_station(%struct.ath9k_htc_priv* %29, %struct.ieee80211_vif* %30, %struct.ieee80211_sta* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %34 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %33)
  %35 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @htc_sta_drain(i32, i32) #1

declare dso_local i32 @ath9k_htc_remove_station(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
