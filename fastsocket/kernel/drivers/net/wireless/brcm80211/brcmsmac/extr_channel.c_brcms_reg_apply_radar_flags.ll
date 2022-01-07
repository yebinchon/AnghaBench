; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_reg_apply_radar_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_reg_apply_radar_flags.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*)* @brcms_reg_apply_radar_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_reg_apply_radar_flags(%struct.wiphy* %0) #0 {
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
  store %struct.ieee80211_supported_band* %11, %struct.ieee80211_supported_band** %3, align 8
  %12 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %13 = icmp ne %struct.ieee80211_supported_band* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %56

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %16
  %23 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %23, i32 0, i32 1
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %25, i64 %27
  store %struct.ieee80211_channel* %28, %struct.ieee80211_channel** %4, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @brcms_is_radar_freq(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %53

35:                                               ; preds = %22
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %44 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %35
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %16

56:                                               ; preds = %14, %16
  ret void
}

declare dso_local i32 @brcms_is_radar_freq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
