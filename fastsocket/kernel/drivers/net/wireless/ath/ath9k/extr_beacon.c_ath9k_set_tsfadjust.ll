; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_set_tsfadjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_set_tsfadjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_beacon_config, i32 }
%struct.ath_beacon_config = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ath_common = type { i32 }
%struct.ath_vif = type { i32, i32 }

@ATH_BCBUF = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tsfadjust is: %llu for bslot: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_set_tsfadjust(%struct.ath_softc* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_beacon_config*, align 8
  %7 = alloca %struct.ath_vif*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %5, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  store %struct.ath_beacon_config* %14, %struct.ath_beacon_config** %6, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ath_vif*
  store %struct.ath_vif* %19, %struct.ath_vif** %7, align 8
  %20 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %21 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %27 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %30 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = load i32, i32* @ATH_BCBUF, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @TU_TO_USEC(i32 %35)
  %37 = call i32 @cpu_to_le64(i32 %36)
  %38 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %39 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %41 = load i32, i32* @CONFIG, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.ath_vif*, %struct.ath_vif** %7, align 8
  %45 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ath_dbg(%struct.ath_common* %40, i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %46)
  br label %48

48:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @TU_TO_USEC(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
