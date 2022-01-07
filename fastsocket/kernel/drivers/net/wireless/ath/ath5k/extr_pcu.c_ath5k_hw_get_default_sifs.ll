; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_default_sifs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_pcu.c_ath5k_hw_get_default_sifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@AR5K_INIT_SIFS_TURBO = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_HALF_RATE = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_QUARTER_RATE = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_DEFAULT_BG = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@AR5K_INIT_SIFS_DEFAULT_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_get_default_sifs(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %5, i32 0, i32 1
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  store %struct.ieee80211_channel* %7, %struct.ieee80211_channel** %3, align 8
  %8 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %19 [
    i32 130, label %11
    i32 131, label %13
    i32 129, label %15
    i32 128, label %17
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @AR5K_INIT_SIFS_TURBO, align 4
  store i32 %12, i32* %4, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @AR5K_INIT_SIFS_HALF_RATE, align 4
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @AR5K_INIT_SIFS_QUARTER_RATE, align 4
  store i32 %16, i32* %4, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* @AR5K_INIT_SIFS_DEFAULT_BG, align 4
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %1, %17
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @AR5K_INIT_SIFS_DEFAULT_A, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %19
  br label %28

28:                                               ; preds = %27, %15, %13, %11
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
