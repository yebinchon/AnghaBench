; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown AMPDU action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*, i32, i32*, i32)* @ath9k_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ath_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.ath_softc*, %struct.ath_softc** %19, align 8
  store %struct.ath_softc* %20, %struct.ath_softc** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = call i32 (...) @local_bh_disable()
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %74 [
    i32 134, label %23
    i32 133, label %24
    i32 131, label %25
    i32 129, label %45
    i32 128, label %45
    i32 130, label %46
    i32 132, label %65
  ]

23:                                               ; preds = %7
  br label %80

24:                                               ; preds = %7
  br label %80

25:                                               ; preds = %7
  %26 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %27 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @ath_tx_aggr_start(%struct.ath_softc* %28, %struct.ieee80211_sta* %29, i32 %30, i32* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %25
  %43 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %44 = call i32 @ath9k_ps_restore(%struct.ath_softc* %43)
  br label %80

45:                                               ; preds = %7, %7
  store i32 1, i32* %16, align 4
  br label %46

46:                                               ; preds = %7, %45
  %47 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %48 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %47)
  %49 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @ath_tx_aggr_stop(%struct.ath_softc* %49, %struct.ieee80211_sta* %50, i32 %51)
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %46
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %46
  %63 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %64 = call i32 @ath9k_ps_restore(%struct.ath_softc* %63)
  br label %80

65:                                               ; preds = %7
  %66 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %67 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %66)
  %68 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @ath_tx_aggr_resume(%struct.ath_softc* %68, %struct.ieee80211_sta* %69, i32 %70)
  %72 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %73 = call i32 @ath9k_ps_restore(%struct.ath_softc* %72)
  br label %80

74:                                               ; preds = %7
  %75 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ath9k_hw_common(i32 %77)
  %79 = call i32 @ath_err(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %65, %62, %42, %24, %23
  %81 = call i32 (...) @local_bh_enable()
  %82 = load i32, i32* %17, align 4
  ret i32 %82
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_aggr_start(%struct.ath_softc*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_aggr_stop(%struct.ath_softc*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @ath_tx_aggr_resume(%struct.ath_softc*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ath_err(i32, i8*) #1

declare dso_local i32 @ath9k_hw_common(i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
