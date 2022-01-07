; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AR5K_TX_QUEUE_ID_DATA_MIN = common dso_local global i64 0, align 8
@ATH5K_TXQ_LEN_MAX = common dso_local global i32 0, align 4
@ATH_RXBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32*, i32*, i32*, i32*)* @ath5k_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_get_ringparam(%struct.ieee80211_hw* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ath5k_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %13, align 8
  store %struct.ath5k_hw* %14, %struct.ath5k_hw** %11, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %11, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @AR5K_TX_QUEUE_ID_DATA_MIN, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ATH5K_TXQ_LEN_MAX, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ATH_RXBUF, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %25, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
