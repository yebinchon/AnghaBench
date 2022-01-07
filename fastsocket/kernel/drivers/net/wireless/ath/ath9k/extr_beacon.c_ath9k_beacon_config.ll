; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ath_beacon_config }
%struct.TYPE_2__ = type { i64 }
%struct.ath_beacon_config = type { i32, i64 }
%struct.ieee80211_vif = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i64, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@SC_OP_BEACONS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_IBSS = common dso_local global i32 0, align 4
@PS_BEACON_SYNC = common dso_local global i32 0, align 4
@PS_WAIT_FOR_BEACON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_beacon_config(%struct.ath_softc* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca %struct.ath_beacon_config*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %12, %struct.ieee80211_bss_conf** %7, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 5
  store %struct.ath_beacon_config* %14, %struct.ath_beacon_config** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %24 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %25 = call i32 @ath9k_cache_beacon_config(%struct.ath_softc* %23, %struct.ieee80211_bss_conf* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %27 = call i32 @ath9k_set_beacon(%struct.ath_softc* %26)
  %28 = load i32, i32* @SC_OP_BEACONS, align 4
  %29 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 2
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %121

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %32
  %38 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %49 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %62

50:                                               ; preds = %42, %37
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %57 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %59 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %60 = call i32 @ath9k_cache_beacon_config(%struct.ath_softc* %58, %struct.ieee80211_bss_conf* %59)
  br label %61

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %32
  %64 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %65 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %121

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @BSS_CHANGED_IBSS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %99, label %78

78:                                               ; preds = %73
  %79 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %80 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %85 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %84, i32 0, i32 3
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load i32, i32* @PS_BEACON_SYNC, align 4
  %89 = load i32, i32* @PS_WAIT_FOR_BEACON, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %92 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %95, i32 0, i32 3
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  store i32 1, i32* %10, align 4
  br label %102

99:                                               ; preds = %78, %73, %68
  %100 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %101 = call i32 @ath9k_set_beacon(%struct.ath_softc* %100)
  br label %102

102:                                              ; preds = %99, %83
  %103 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %8, align 8
  %104 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @SC_OP_BEACONS, align 4
  %112 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %112, i32 0, i32 2
  %114 = call i32 @set_bit(i32 %111, i32* %113)
  br label %120

115:                                              ; preds = %107, %102
  %116 = load i32, i32* @SC_OP_BEACONS, align 4
  %117 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %118 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %117, i32 0, i32 2
  %119 = call i32 @clear_bit(i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %115, %110
  br label %121

121:                                              ; preds = %22, %120, %63
  ret void
}

declare dso_local i32 @ath9k_cache_beacon_config(%struct.ath_softc*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @ath9k_set_beacon(%struct.ath_softc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
