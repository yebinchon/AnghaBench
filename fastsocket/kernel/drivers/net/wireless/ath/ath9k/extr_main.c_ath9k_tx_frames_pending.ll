; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tx_frames_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_tx_frames_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @ath9k_tx_frames_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_tx_frames_pending(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.ath_softc*, %struct.ath_softc** %7, align 8
  store %struct.ath_softc* %8, %struct.ath_softc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ATH_TXQ_SETUP(%struct.ath_softc* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %32

19:                                               ; preds = %13
  %20 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %21 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i64 @ath9k_has_pending_frames(%struct.ath_softc* %20, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %36

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %9

35:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ATH_TXQ_SETUP(%struct.ath_softc*, i32) #1

declare dso_local i64 @ath9k_has_pending_frames(%struct.ath_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
