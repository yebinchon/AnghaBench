; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_deinit_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_deinit_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_deinit_device(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %4, i32 0, i32 0
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %8 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %7)
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wiphy_rfkill_stop_polling(i32 %13)
  %15 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %16 = call i32 @ath_deinit_leds(%struct.ath_softc* %15)
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = call i32 @ath9k_ps_restore(%struct.ath_softc* %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = call i32 @ath9k_deinit_debug(%struct.ath_softc* %19)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = call i32 @ath_rx_cleanup(%struct.ath_softc* %23)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %26 = call i32 @ath9k_deinit_softc(%struct.ath_softc* %25)
  ret void
}

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @wiphy_rfkill_stop_polling(i32) #1

declare dso_local i32 @ath_deinit_leds(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_deinit_debug(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ath_rx_cleanup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_deinit_softc(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
