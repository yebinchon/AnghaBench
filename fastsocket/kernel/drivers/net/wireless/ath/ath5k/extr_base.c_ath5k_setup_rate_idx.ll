; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_setup_rate_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_setup_rate_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32** }
%struct.ieee80211_supported_band = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@AR5K_MAX_RATES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, %struct.ieee80211_supported_band*)* @ath5k_setup_rate_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_setup_rate_idx(%struct.ath5k_hw* %0, %struct.ieee80211_supported_band* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_supported_band*, align 8
  %5 = alloca i64, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %21, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @AR5K_MAX_RATES, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32*, i32** %13, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %10
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %5, align 8
  br label %6

24:                                               ; preds = %6
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %79, %24
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  store i32 %33, i32* %49, align 4
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %31
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %62 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32*, i32** %63, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %68, i64 %76
  store i32 %60, i32* %77, align 4
  br label %78

78:                                               ; preds = %58, %31
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %25

82:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
