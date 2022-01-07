; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_radar_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_reg_apply_radar_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*)* @ath_reg_apply_radar_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_reg_apply_radar_flags(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.ieee80211_supported_band*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %6, i32 0, i32 0
  %8 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %7, align 8
  %9 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %10 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, i64 %9
  %11 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %12 = icmp ne %struct.ieee80211_supported_band* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %16 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %16, align 8
  %18 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, i64 %18
  %20 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %19, align 8
  store %struct.ieee80211_supported_band* %20, %struct.ieee80211_supported_band** %3, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %58, %14
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %28, i32 0, i32 1
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %30, i64 %32
  store %struct.ieee80211_channel* %33, %struct.ieee80211_channel** %4, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ath_is_radar_freq(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %58

40:                                               ; preds = %27
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %49 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47, %40
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %21

61:                                               ; preds = %13, %21
  ret void
}

declare dso_local i32 @ath_is_radar_freq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
