; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_assoc_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_set_assoc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.TYPE_6__*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, i64 }
%struct.ieee80211_bss_conf = type { i32, i32 }
%struct.ath_common = type { i32, i32 }
%struct.ath_vif = type { i32 }

@SC_OP_PRIM_STA_VIF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ATH_RSSI_DUMMY_MARKER = common dso_local global i8* null, align 8
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Primary Station interface: %pM, BSSID: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_vif*)* @ath9k_set_assoc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_assoc_state(%struct.ath_softc* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_6__* %11)
  store %struct.ath_common* %12, %struct.ath_common** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath_vif*
  store %struct.ath_vif* %17, %struct.ath_vif** %6, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %19, %struct.ieee80211_bss_conf** %7, align 8
  %20 = load i32, i32* @SC_OP_PRIM_STA_VIF, align 4
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 4
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.ath_vif*, %struct.ath_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %94

34:                                               ; preds = %2
  %35 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %36 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %47 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @ath9k_hw_write_associd(%struct.TYPE_6__* %50)
  %52 = load i8*, i8** @ATH_RSSI_DUMMY_MARKER, align 8
  %53 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @ATH_RSSI_DUMMY_MARKER, align 8
  %56 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* %55, i8** %60, align 8
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 2
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load i32, i32* @PS_BEACON_SYNC, align 4
  %66 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %73 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %72, i32 0, i32 2
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i64 @ath9k_hw_mci_is_enabled(%struct.TYPE_6__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %34
  %82 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %83 = call i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc* %82, i32 0)
  br label %84

84:                                               ; preds = %81, %34
  %85 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %86 = load i32, i32* @CONFIG, align 4
  %87 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %91 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ath_dbg(%struct.ath_common* %85, i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %84, %33
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_6__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_write_associd(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ath9k_hw_mci_is_enabled(%struct.TYPE_6__*) #1

declare dso_local i32 @ath9k_mci_update_wlan_channels(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
