; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_survey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_2__*, %struct.ath_softc* }
%struct.TYPE_2__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath_softc = type { i32*, i32 }
%struct.survey_info = type { %struct.ieee80211_channel* }
%struct.ath_common = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @ath9k_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 1
  %16 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  store %struct.ath_softc* %16, %struct.ath_softc** %8, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(i32 %19)
  store %struct.ath_common* %20, %struct.ath_common** %9, align 8
  %21 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 0
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %29 = call i32 @ath_update_survey_stats(%struct.ath_softc* %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %34, align 8
  %36 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %35, i64 %36
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %37, align 8
  store %struct.ieee80211_supported_band* %38, %struct.ieee80211_supported_band** %10, align 8
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %40 = icmp ne %struct.ieee80211_supported_band* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %49 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %10, align 8
  br label %53

53:                                               ; preds = %47, %41, %30
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %55 = icmp ne %struct.ieee80211_supported_band* %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %60, align 8
  %62 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %61, i64 %62
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %63, align 8
  store %struct.ieee80211_supported_band* %64, %struct.ieee80211_supported_band** %10, align 8
  br label %65

65:                                               ; preds = %56, %53
  %66 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %67 = icmp ne %struct.ieee80211_supported_band* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %71 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68, %65
  %75 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %76 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %75, i32 0, i32 0
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* @ENOENT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %106

81:                                               ; preds = %68
  %82 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %82, i32 0, i32 1
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %84, i64 %86
  store %struct.ieee80211_channel* %87, %struct.ieee80211_channel** %11, align 8
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  %91 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %92 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %93 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @memcpy(%struct.survey_info* %91, i32* %97, i32 8)
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %100 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %101 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %100, i32 0, i32 0
  store %struct.ieee80211_channel* %99, %struct.ieee80211_channel** %101, align 8
  %102 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %103 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %102, i32 0, i32 0
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %81, %74
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath_update_survey_stats(%struct.ath_softc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.survey_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
