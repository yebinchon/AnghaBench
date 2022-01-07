; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_regd_init_wiphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_regd_init_wiphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_regulatory = type { i32 }
%struct.wiphy = type { void (%struct.wiphy*, %struct.regulatory_request*)*, i32 }
%struct.regulatory_request = type opaque
%struct.regulatory_request.0 = type opaque
%struct.ieee80211_regdomain = type { i32 }

@WIPHY_FLAG_STRICT_REGULATORY = common dso_local global i32 0, align 4
@WIPHY_FLAG_CUSTOM_REGULATORY = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_regulatory*, %struct.wiphy*, void (%struct.wiphy*, %struct.regulatory_request.0*)*)* @ath_regd_init_wiphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_regd_init_wiphy(%struct.ath_regulatory* %0, %struct.wiphy* %1, void (%struct.wiphy*, %struct.regulatory_request.0*)* %2) #0 {
  %4 = alloca %struct.ath_regulatory*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca void (%struct.wiphy*, %struct.regulatory_request.0*)*, align 8
  %7 = alloca %struct.ieee80211_regdomain*, align 8
  store %struct.ath_regulatory* %0, %struct.ath_regulatory** %4, align 8
  store %struct.wiphy* %1, %struct.wiphy** %5, align 8
  store void (%struct.wiphy*, %struct.regulatory_request.0*)* %2, void (%struct.wiphy*, %struct.regulatory_request.0*)** %6, align 8
  %8 = load void (%struct.wiphy*, %struct.regulatory_request.0*)*, void (%struct.wiphy*, %struct.regulatory_request.0*)** %6, align 8
  %9 = bitcast void (%struct.wiphy*, %struct.regulatory_request.0*)* %8 to void (%struct.wiphy*, %struct.regulatory_request*)*
  %10 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %11 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %10, i32 0, i32 0
  store void (%struct.wiphy*, %struct.regulatory_request*)* %9, void (%struct.wiphy*, %struct.regulatory_request*)** %11, align 8
  %12 = load i32, i32* @WIPHY_FLAG_STRICT_REGULATORY, align 4
  %13 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %14 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %18 = call i64 @ath_is_world_regd(%struct.ath_regulatory* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %22 = call %struct.ieee80211_regdomain* @ath_world_regdomain(%struct.ath_regulatory* %21)
  store %struct.ieee80211_regdomain* %22, %struct.ieee80211_regdomain** %7, align 8
  %23 = load i32, i32* @WIPHY_FLAG_CUSTOM_REGULATORY, align 4
  %24 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %30

28:                                               ; preds = %3
  %29 = call %struct.ieee80211_regdomain* (...) @ath_default_world_regdomain()
  store %struct.ieee80211_regdomain* %29, %struct.ieee80211_regdomain** %7, align 8
  br label %30

30:                                               ; preds = %28, %20
  %31 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %32 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %7, align 8
  %33 = call i32 @wiphy_apply_custom_regulatory(%struct.wiphy* %31, %struct.ieee80211_regdomain* %32)
  %34 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %35 = call i32 @ath_reg_apply_radar_flags(%struct.wiphy* %34)
  %36 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %37 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %38 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %39 = call i32 @ath_reg_apply_world_flags(%struct.wiphy* %36, i32 %37, %struct.ath_regulatory* %38)
  ret i32 0
}

declare dso_local i64 @ath_is_world_regd(%struct.ath_regulatory*) #1

declare dso_local %struct.ieee80211_regdomain* @ath_world_regdomain(%struct.ath_regulatory*) #1

declare dso_local %struct.ieee80211_regdomain* @ath_default_world_regdomain(...) #1

declare dso_local i32 @wiphy_apply_custom_regulatory(%struct.wiphy*, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @ath_reg_apply_radar_flags(%struct.wiphy*) #1

declare dso_local i32 @ath_reg_apply_world_flags(%struct.wiphy*, i32, %struct.ath_regulatory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
