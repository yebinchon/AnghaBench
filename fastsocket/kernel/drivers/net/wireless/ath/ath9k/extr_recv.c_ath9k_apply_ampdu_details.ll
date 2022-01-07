; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_apply_ampdu_details.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_recv.c_ath9k_apply_ampdu_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath_rx_status = type { i32, i32, i64 }
%struct.ieee80211_rx_status = type { i32, i32 }

@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_LAST_KNOWN = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_IS_LAST = common dso_local global i32 0, align 4
@ATH9K_RX_DELIM_CRC_PRE = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DELIM_CRC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rx_status*, %struct.ieee80211_rx_status*)* @ath9k_apply_ampdu_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_apply_ampdu_details(%struct.ath_softc* %0, %struct.ath_rx_status* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_rx_status*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %7 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %8 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %3
  %12 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %13 = load i32, i32* @RX_FLAG_AMPDU_LAST_KNOWN, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %26 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %11
  %30 = load i32, i32* @RX_FLAG_AMPDU_IS_LAST, align 4
  %31 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29, %11
  %41 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %42 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ATH9K_RX_DELIM_CRC_PRE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* @RX_FLAG_AMPDU_DELIM_CRC_ERROR, align 4
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %40
  br label %54

54:                                               ; preds = %53, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
