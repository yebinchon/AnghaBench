; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_add_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Attach a VIF of type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca %struct.ath_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  store %struct.ath_softc* %10, %struct.ath_softc** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 2
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %6, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %7, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %20 = load i32, i32* @CONFIG, align 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ath_dbg(%struct.ath_common* %19, i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %30 = call i32 @ath9k_ps_wakeup(%struct.ath_softc* %29)
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %33 = call i32 @ath9k_calculate_summary_state(%struct.ieee80211_hw* %31, %struct.ieee80211_vif* %32)
  %34 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %35 = call i32 @ath9k_ps_restore(%struct.ath_softc* %34)
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ath9k_uses_beacons(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %44 = call i32 @ath9k_beacon_assign_slot(%struct.ath_softc* %42, %struct.ieee80211_vif* %43)
  br label %45

45:                                               ; preds = %41, %2
  %46 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret i32 0
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_ps_wakeup(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_calculate_summary_state(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_ps_restore(%struct.ath_softc*) #1

declare dso_local i64 @ath9k_uses_beacons(i32) #1

declare dso_local i32 @ath9k_beacon_assign_slot(%struct.ath_softc*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
