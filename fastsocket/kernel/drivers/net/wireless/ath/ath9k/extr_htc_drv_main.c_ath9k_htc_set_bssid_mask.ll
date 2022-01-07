; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_bssid_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_bssid_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32, i32 }
%struct.ath9k_vif_iter_data = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ieee80211_vif*)* @ath9k_htc_set_bssid_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_set_bssid_mask(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath9k_vif_iter_data, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  %11 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %12 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %6, i32 0, i32 0
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memset(i32* %15, i32 255, i32 %16)
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %19 = icmp ne %struct.ieee80211_vif* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %25 = call i32 @ath9k_htc_bssid_iter(%struct.ath9k_vif_iter_data* %6, i32 %23, %struct.ieee80211_vif* %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %31 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %29, i32 %30, i32 (%struct.ath9k_vif_iter_data*, i32, %struct.ieee80211_vif*)* @ath9k_htc_bssid_iter, %struct.ath9k_vif_iter_data* %6)
  %32 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %33 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ath9k_vif_iter_data, %struct.ath9k_vif_iter_data* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %34, i32 %36, i32 %37)
  %39 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %40 = call i32 @ath_hw_setbssidmask(%struct.ath_common* %39)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath9k_htc_bssid_iter(%struct.ath9k_vif_iter_data*, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32 (%struct.ath9k_vif_iter_data*, i32, %struct.ieee80211_vif*)*, %struct.ath9k_vif_iter_data*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath_hw_setbssidmask(%struct.ath_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
