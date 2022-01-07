; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_regd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_channel.c_brcms_c_regd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.wiphy*, %struct.brcms_band**, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.wiphy = type { i32, i32, %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.brcms_band = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.brcms_regd* }
%struct.brcms_regd = type { i32 }
%struct.brcms_chanvec = type { i32 }

@BAND_2G_INDEX = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@brcms_reg_notifier = common dso_local global i32 0, align 4
@WIPHY_FLAG_CUSTOM_REGULATORY = common dso_local global i32 0, align 4
@WIPHY_FLAG_STRICT_REGULATORY = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_regd_init(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.brcms_regd*, align 8
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.brcms_chanvec, align 4
  %8 = alloca %struct.brcms_band*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %11, i32 0, i32 0
  %13 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  store %struct.wiphy* %13, %struct.wiphy** %3, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.brcms_regd*, %struct.brcms_regd** %17, align 8
  store %struct.brcms_regd* %18, %struct.brcms_regd** %4, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %91, %1
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %22 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %94

27:                                               ; preds = %19
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %28, i32 0, i32 1
  %30 = load %struct.brcms_band**, %struct.brcms_band*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %30, i64 %32
  %34 = load %struct.brcms_band*, %struct.brcms_band** %33, align 8
  store %struct.brcms_band* %34, %struct.brcms_band** %8, align 8
  %35 = load %struct.brcms_band*, %struct.brcms_band** %8, align 8
  %36 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.brcms_band*, %struct.brcms_band** %8, align 8
  %39 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wlc_phy_chanspec_band_validch(i32 %37, i32 %40, %struct.brcms_chanvec* %7)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @BAND_2G_INDEX, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %27
  %46 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %47 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %46, i32 0, i32 2
  %48 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %47, align 8
  %49 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %48, i64 %49
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, align 8
  store %struct.ieee80211_supported_band* %51, %struct.ieee80211_supported_band** %5, align 8
  br label %59

52:                                               ; preds = %27
  %53 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %54 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %53, i32 0, i32 2
  %55 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %54, align 8
  %56 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %57 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %55, i64 %56
  %58 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %57, align 8
  store %struct.ieee80211_supported_band* %58, %struct.ieee80211_supported_band** %5, align 8
  br label %59

59:                                               ; preds = %52, %45
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %87, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %60
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %67, i32 0, i32 1
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i64 %71
  store %struct.ieee80211_channel* %72, %struct.ieee80211_channel** %6, align 8
  %73 = getelementptr inbounds %struct.brcms_chanvec, %struct.brcms_chanvec* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @isset(i32 %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %66
  %81 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %83 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %66
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %60

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %19

94:                                               ; preds = %19
  %95 = load i32, i32* @brcms_reg_notifier, align 4
  %96 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %97 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %96, i32 0, i32 0
  %98 = load %struct.wiphy*, %struct.wiphy** %97, align 8
  %99 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @WIPHY_FLAG_CUSTOM_REGULATORY, align 4
  %101 = load i32, i32* @WIPHY_FLAG_STRICT_REGULATORY, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %104 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %103, i32 0, i32 0
  %105 = load %struct.wiphy*, %struct.wiphy** %104, align 8
  %106 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 8
  %109 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %109, i32 0, i32 0
  %111 = load %struct.wiphy*, %struct.wiphy** %110, align 8
  %112 = load %struct.brcms_regd*, %struct.brcms_regd** %4, align 8
  %113 = getelementptr inbounds %struct.brcms_regd, %struct.brcms_regd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @wiphy_apply_custom_regulatory(%struct.wiphy* %111, i32 %114)
  %116 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %117 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %118 = call i32 @brcms_reg_apply_beaconing_flags(%struct.wiphy* %116, i32 %117)
  ret void
}

declare dso_local i32 @wlc_phy_chanspec_band_validch(i32, i32, %struct.brcms_chanvec*) #1

declare dso_local i32 @isset(i32, i32) #1

declare dso_local i32 @wiphy_apply_custom_regulatory(%struct.wiphy*, i32) #1

declare dso_local i32 @brcms_reg_apply_beaconing_flags(%struct.wiphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
