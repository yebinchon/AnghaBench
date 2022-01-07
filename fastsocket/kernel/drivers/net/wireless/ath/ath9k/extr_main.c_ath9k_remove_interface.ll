; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_remove_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Detach Interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  store %struct.ath_softc* %9, %struct.ath_softc** %5, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ath_common* @ath9k_hw_common(i32 %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %15 = load i32, i32* @CONFIG, align 4
  %16 = call i32 @ath_dbg(%struct.ath_common* %14, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ath9k_uses_beacons(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %32 = call i32 @ath9k_beacon_remove_slot(%struct.ath_softc* %30, %struct.ieee80211_vif* %31)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %35 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %37 = call i32 @ath9k_calculate_summary_state(%struct.ieee80211_hw* %36, i32* null)
  %38 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %39 = call i32 @ath9k_ps_restore(%struct.ath_softc* %38)
  %40 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ath9k_uses_beacons(i32) #1

declare dso_local i32 @ath9k_beacon_remove_slot(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_calculate_summary_state(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
