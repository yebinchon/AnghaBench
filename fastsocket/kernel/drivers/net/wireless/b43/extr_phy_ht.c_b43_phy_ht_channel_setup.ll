; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_channel_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_channel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }
%struct.b43_phy_ht_channeltab_e_phy = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i64, i32 }

@B43_PHY_HT_BANDCTL = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_PHY_HT_BW1 = common dso_local global i32 0, align 4
@B43_PHY_HT_BW2 = common dso_local global i32 0, align 4
@B43_PHY_HT_BW3 = common dso_local global i32 0, align 4
@B43_PHY_HT_BW4 = common dso_local global i32 0, align 4
@B43_PHY_HT_BW5 = common dso_local global i32 0, align 4
@B43_PHY_HT_BW6 = common dso_local global i32 0, align 4
@B43_PHY_HT_CLASS_CTL_OFDM_EN = common dso_local global i32 0, align 4
@B43_PHY_HT_TEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_phy_ht_channeltab_e_phy*, %struct.ieee80211_channel*)* @b43_phy_ht_channel_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_channel_setup(%struct.b43_wldev* %0, %struct.b43_phy_ht_channeltab_e_phy* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca %struct.b43_phy_ht_channeltab_e_phy*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store %struct.b43_phy_ht_channeltab_e_phy* %1, %struct.b43_phy_ht_channeltab_e_phy** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %9 = load i32, i32* @B43_PHY_HT_BANDCTL, align 4
  %10 = call i32 @b43_phy_read(%struct.b43_wldev* %8, i32 %9)
  %11 = and i32 %10, 0
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %32

21:                                               ; preds = %17, %3
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %27, %21
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %34 = load i32, i32* @B43_PHY_HT_BW1, align 4
  %35 = load %struct.b43_phy_ht_channeltab_e_phy*, %struct.b43_phy_ht_channeltab_e_phy** %5, align 8
  %36 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_phy, %struct.b43_phy_ht_channeltab_e_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @b43_phy_write(%struct.b43_wldev* %33, i32 %34, i32 %37)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %40 = load i32, i32* @B43_PHY_HT_BW2, align 4
  %41 = load %struct.b43_phy_ht_channeltab_e_phy*, %struct.b43_phy_ht_channeltab_e_phy** %5, align 8
  %42 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_phy, %struct.b43_phy_ht_channeltab_e_phy* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @b43_phy_write(%struct.b43_wldev* %39, i32 %40, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %46 = load i32, i32* @B43_PHY_HT_BW3, align 4
  %47 = load %struct.b43_phy_ht_channeltab_e_phy*, %struct.b43_phy_ht_channeltab_e_phy** %5, align 8
  %48 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_phy, %struct.b43_phy_ht_channeltab_e_phy* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @b43_phy_write(%struct.b43_wldev* %45, i32 %46, i32 %49)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %52 = load i32, i32* @B43_PHY_HT_BW4, align 4
  %53 = load %struct.b43_phy_ht_channeltab_e_phy*, %struct.b43_phy_ht_channeltab_e_phy** %5, align 8
  %54 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_phy, %struct.b43_phy_ht_channeltab_e_phy* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @b43_phy_write(%struct.b43_wldev* %51, i32 %52, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %58 = load i32, i32* @B43_PHY_HT_BW5, align 4
  %59 = load %struct.b43_phy_ht_channeltab_e_phy*, %struct.b43_phy_ht_channeltab_e_phy** %5, align 8
  %60 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_phy, %struct.b43_phy_ht_channeltab_e_phy* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @b43_phy_write(%struct.b43_wldev* %57, i32 %58, i32 %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %64 = load i32, i32* @B43_PHY_HT_BW6, align 4
  %65 = load %struct.b43_phy_ht_channeltab_e_phy*, %struct.b43_phy_ht_channeltab_e_phy** %5, align 8
  %66 = getelementptr inbounds %struct.b43_phy_ht_channeltab_e_phy, %struct.b43_phy_ht_channeltab_e_phy* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @b43_phy_write(%struct.b43_wldev* %63, i32 %64, i32 %67)
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 14
  br i1 %72, label %73, label %80

73:                                               ; preds = %32
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %75 = load i32, i32* @B43_PHY_HT_CLASS_CTL_OFDM_EN, align 4
  %76 = call i32 @b43_phy_ht_classifier(%struct.b43_wldev* %74, i32 %75, i32 0)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %78 = load i32, i32* @B43_PHY_HT_TEST, align 4
  %79 = call i32 @b43_phy_set(%struct.b43_wldev* %77, i32 %78, i32 2048)
  br label %95

80:                                               ; preds = %32
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %82 = load i32, i32* @B43_PHY_HT_CLASS_CTL_OFDM_EN, align 4
  %83 = load i32, i32* @B43_PHY_HT_CLASS_CTL_OFDM_EN, align 4
  %84 = call i32 @b43_phy_ht_classifier(%struct.b43_wldev* %81, i32 %82, i32 %83)
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %92 = load i32, i32* @B43_PHY_HT_TEST, align 4
  %93 = call i32 @b43_phy_mask(%struct.b43_wldev* %91, i32 %92, i32 -2113)
  br label %94

94:                                               ; preds = %90, %80
  br label %95

95:                                               ; preds = %94, %73
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %97 = call i32 @b43_phy_ht_tx_power_fix(%struct.b43_wldev* %96)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %100 = call i32 @b43_phy_ht_spur_avoid(%struct.b43_wldev* %98, %struct.ieee80211_channel* %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %102 = call i32 @b43_phy_write(%struct.b43_wldev* %101, i32 382, i32 14384)
  ret void
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_ht_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_ht_tx_power_fix(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_ht_spur_avoid(%struct.b43_wldev*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
