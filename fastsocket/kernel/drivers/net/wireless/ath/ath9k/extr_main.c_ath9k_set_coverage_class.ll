; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_coverage_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_coverage_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @ath9k_set_coverage_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_coverage_class(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  store %struct.ath_softc* %9, %struct.ath_softc** %5, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load %struct.ath_hw*, %struct.ath_hw** %11, align 8
  store %struct.ath_hw* %12, %struct.ath_hw** %6, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %20 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %22 = call i32 @ath9k_hw_init_global_settings(%struct.ath_hw* %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %24 = call i32 @ath9k_ps_restore(%struct.ath_softc* %23)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_init_global_settings(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
