; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_15__, %struct.ieee80211_supported_band*, %struct.ath_hw* }
%struct.TYPE_15__ = type { i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.ath_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.ath_buf = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.ath_common = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.ath_tx_info = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32*, i32*, i32, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@FCS_LEN = common dso_local global i64 0, align 8
@ATH9K_PKT_TYPE_BEACON = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@ATH9K_TXKEYIX_INVALID = common dso_local global i32 0, align 4
@ATH9K_KEY_TYPE_CLEAR = common dso_local global i32 0, align 4
@ATH9K_TXDESC_NOACK = common dso_local global i32 0, align 4
@ATH9K_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_vif*, %struct.ath_buf*, i32)* @ath9k_beacon_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_setup(%struct.ath_softc* %0, %struct.ieee80211_vif* %1, %struct.ath_buf* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_tx_info, align 8
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %17 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %16, i32 0, i32 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %20, align 8
  store %struct.ath_hw* %21, %struct.ath_hw** %10, align 8
  %22 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %11, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %27 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 1
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %28, align 8
  %30 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %31 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %29, i64 %38
  store %struct.ieee80211_supported_band* %39, %struct.ieee80211_supported_band** %13, align 8
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %4
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %53, %4
  %65 = call i32 @memset(%struct.ath_tx_info* %12, i32 0, i32 72)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FCS_LEN, align 8
  %70 = add nsw i64 %68, %69
  %71 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 11
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @ATH9K_PKT_TYPE_BEACON, align 4
  %73 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 10
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @MAX_RATE_POWER, align 4
  %75 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 9
  store i32 %74, i32* %75, align 8
  %76 = load i32, i32* @ATH9K_TXKEYIX_INVALID, align 4
  %77 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @ATH9K_KEY_TYPE_CLEAR, align 4
  %79 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 7
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* @ATH9K_TXDESC_NOACK, align 4
  %81 = load i32, i32* @ATH9K_TXDESC_CLRDMASK, align 4
  %82 = or i32 %80, %81
  %83 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %85 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @roundup(i64 %92, i32 4)
  %94 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %93, i32* %96, align 4
  %97 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 4
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 3
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load i32, i32* %15, align 4
  %109 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 3
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  store i32 %108, i32* %112, align 4
  %113 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @ath_txchainmask_reduction(%struct.ath_softc* %113, i32 %114, i32 %115)
  %117 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 3
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %122 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %123 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ath9k_hw_set_txdesc(%struct.ath_hw* %121, i32 %124, %struct.ath_tx_info* %12)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.ath_tx_info*, i32, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @ath_txchainmask_reduction(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_txdesc(%struct.ath_hw*, i32, %struct.ath_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
