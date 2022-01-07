; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_channels_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_channels_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATH9K_HW_CAP_2GHZ = common dso_local global i32 0, align 4
@ath9k_2ghz_channels = common dso_local global i8* null, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ath9k_legacy_rates = common dso_local global i8* null, align 8
@ATH9K_HW_CAP_5GHZ = common dso_local global i32 0, align 4
@ath9k_5ghz_channels = common dso_local global i8* null, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*)* @ath9k_init_channels_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_init_channels_rates(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca %struct.ath9k_htc_priv*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %2, align 8
  %3 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load i8*, i8** @ath9k_2ghz_channels, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  store i8* %13, i8** %19, align 8
  %20 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %20, i64* %26, align 8
  %27 = load i8*, i8** @ath9k_2ghz_channels, align 8
  %28 = call i8* @ARRAY_SIZE(i8* %27)
  %29 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i8* %28, i8** %34, align 8
  %35 = load i8*, i8** @ath9k_legacy_rates, align 8
  %36 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %37 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i8* %35, i8** %41, align 8
  %42 = load i8*, i8** @ath9k_legacy_rates, align 8
  %43 = call i8* @ARRAY_SIZE(i8* %42)
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i8* %43, i8** %49, align 8
  br label %50

50:                                               ; preds = %12, %1
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %52 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %50
  %61 = load i8*, i8** @ath9k_5ghz_channels, align 8
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i8* %61, i8** %67, align 8
  %68 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 %68, i64* %74, align 8
  %75 = load i8*, i8** @ath9k_5ghz_channels, align 8
  %76 = call i8* @ARRAY_SIZE(i8* %75)
  %77 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %78 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i8* %76, i8** %82, align 8
  %83 = load i8*, i8** @ath9k_legacy_rates, align 8
  %84 = getelementptr i8, i8* %83, i64 4
  %85 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %86 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  store i8* %84, i8** %90, align 8
  %91 = load i8*, i8** @ath9k_legacy_rates, align 8
  %92 = call i8* @ARRAY_SIZE(i8* %91)
  %93 = getelementptr i8, i8* %92, i64 -4
  %94 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %2, align 8
  %95 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i8* %93, i8** %99, align 8
  br label %100

100:                                              ; preds = %60, %50
  ret void
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
