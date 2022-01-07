; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_band_txpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_band_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ieee80211_supported_band*, %struct.ath_hw* }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.ath_hw = type { i32*, i32* }

@NL80211_CHAN_HT20 = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32)* @ath9k_init_band_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_init_band_txpower(%struct.ath_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  store %struct.ath_hw* %11, %struct.ath_hw** %7, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %14, i64 %16
  store %struct.ieee80211_supported_band* %17, %struct.ieee80211_supported_band** %5, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %49, %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i64 %29
  store %struct.ieee80211_channel* %30, %struct.ieee80211_channel** %6, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %44 = load i32, i32* @NL80211_CHAN_HT20, align 4
  %45 = call i32 @ath9k_cmn_update_ichannel(i32* %42, %struct.ieee80211_channel* %43, i32 %44)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %47 = load i32, i32* @MAX_RATE_POWER, align 4
  %48 = call i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw* %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %24
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %18

52:                                               ; preds = %18
  ret void
}

declare dso_local i32 @ath9k_cmn_update_ichannel(i32*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @ath9k_hw_set_txpowerlimit(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
