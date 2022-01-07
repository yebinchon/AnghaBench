; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { %struct.ath9k_mib_stats }
%struct.ath9k_mib_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_low_level_stats*)* @ath9k_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_get_stats(%struct.ieee80211_hw* %0, %struct.ieee80211_low_level_stats* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_low_level_stats*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath9k_mib_stats*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_low_level_stats* %1, %struct.ieee80211_low_level_stats** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  store %struct.ath_softc* %10, %struct.ath_softc** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %6, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  store %struct.ath9k_mib_stats* %15, %struct.ath9k_mib_stats** %7, align 8
  %16 = load %struct.ath9k_mib_stats*, %struct.ath9k_mib_stats** %7, align 8
  %17 = getelementptr inbounds %struct.ath9k_mib_stats, %struct.ath9k_mib_stats* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ath9k_mib_stats*, %struct.ath9k_mib_stats** %7, align 8
  %22 = getelementptr inbounds %struct.ath9k_mib_stats, %struct.ath9k_mib_stats* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ath9k_mib_stats*, %struct.ath9k_mib_stats** %7, align 8
  %27 = getelementptr inbounds %struct.ath9k_mib_stats, %struct.ath9k_mib_stats* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ath9k_mib_stats*, %struct.ath9k_mib_stats** %7, align 8
  %32 = getelementptr inbounds %struct.ath9k_mib_stats, %struct.ath9k_mib_stats* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
