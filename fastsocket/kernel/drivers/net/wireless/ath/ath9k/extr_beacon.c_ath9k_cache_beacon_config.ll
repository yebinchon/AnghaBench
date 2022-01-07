; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_cache_beacon_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_cache_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_beacon_config, i32 }
%struct.ath_beacon_config = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Caching beacon data for BSS: %pM\0A\00", align 1
@ATH_DEFAULT_BMISS_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_bss_conf*)* @ath9k_cache_beacon_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_cache_beacon_config(%struct.ath_softc* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_beacon_config*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %4, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ath_common* @ath9k_hw_common(i32 %9)
  store %struct.ath_common* %10, %struct.ath_common** %5, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  store %struct.ath_beacon_config* %12, %struct.ath_beacon_config** %6, align 8
  %13 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %14 = load i32, i32* @BEACON, align 4
  %15 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ath_dbg(%struct.ath_common* %13, i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %23 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %28 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %30 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %32 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %37 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ATH_DEFAULT_BMISS_LIMIT, align 4
  %39 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %40 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %44 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %46 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %51 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %50, i32 0, i32 0
  store i32 100, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %2
  %53 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %54 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %59 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
