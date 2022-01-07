; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i64, i32, i32 }
%struct.b43_nphy_channeltab_entry_rev2 = type { i32 }
%struct.b43_nphy_channeltab_entry_rev3 = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40PLUS = common dso_local global i32 0, align 4
@B43_NPHY_RXCTL = common dso_local global i32 0, align 4
@B43_NPHY_RXCTL_BSELU20 = common dso_local global i32 0, align 4
@NL80211_CHAN_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2055_MASTER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.ieee80211_channel*, i32)* @b43_nphy_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_set_channel(%struct.b43_wldev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_phy*, align 8
  %9 = alloca %struct.b43_nphy_channeltab_entry_rev2*, align 8
  %10 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 0
  store %struct.b43_phy* %13, %struct.b43_phy** %8, align 8
  store %struct.b43_nphy_channeltab_entry_rev2* null, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* null, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.b43_nphy_channeltab_entry_rev3* @b43_nphy_get_chantabent_rev3(%struct.b43_wldev* %20, i32 %23)
  store %struct.b43_nphy_channeltab_entry_rev3* %24, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %25 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %26 = icmp ne %struct.b43_nphy_channeltab_entry_rev3* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ESRCH, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %128

30:                                               ; preds = %19
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.b43_nphy_channeltab_entry_rev2* @b43_nphy_get_chantabent_rev2(%struct.b43_wldev* %32, i32 %35)
  store %struct.b43_nphy_channeltab_entry_rev2* %36, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %37 = load %struct.b43_nphy_channeltab_entry_rev2*, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %38 = icmp ne %struct.b43_nphy_channeltab_entry_rev2* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ESRCH, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %128

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %48 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.b43_phy*, %struct.b43_phy** %8, align 8
  %55 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @b43_channel_type_is_40mhz(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @b43_channel_type_is_40mhz(i32 %58)
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NL80211_CHAN_HT40PLUS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %68 = load i32, i32* @B43_NPHY_RXCTL, align 4
  %69 = load i32, i32* @B43_NPHY_RXCTL_BSELU20, align 4
  %70 = call i32 @b43_phy_set(%struct.b43_wldev* %67, i32 %68, i32 %69)
  br label %82

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NL80211_CHAN_HT40MINUS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %77 = load i32, i32* @B43_NPHY_RXCTL, align 4
  %78 = load i32, i32* @B43_NPHY_RXCTL_BSELU20, align 4
  %79 = xor i32 %78, -1
  %80 = call i32 @b43_phy_mask(%struct.b43_wldev* %76, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %75, %71
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %84 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 3
  br i1 %87, label %88, label %107

88:                                               ; preds = %82
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 4, i32 0
  store i32 %95, i32* %11, align 4
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @b43_radio_maskset(%struct.b43_wldev* %96, i32 8, i32 65531, i32 %97)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %100 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %101 = call i32 @b43_radio_2056_setup(%struct.b43_wldev* %99, %struct.b43_nphy_channeltab_entry_rev3* %100)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %103 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %10, align 8
  %104 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev3, %struct.b43_nphy_channeltab_entry_rev3* %103, i32 0, i32 0
  %105 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %106 = call i32 @b43_nphy_channel_setup(%struct.b43_wldev* %102, i32* %104, %struct.ieee80211_channel* %105)
  br label %127

107:                                              ; preds = %82
  %108 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 32, i32 80
  store i32 %114, i32* %11, align 4
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %116 = load i32, i32* @B2055_MASTER1, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @b43_radio_maskset(%struct.b43_wldev* %115, i32 %116, i32 65423, i32 %117)
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %120 = load %struct.b43_nphy_channeltab_entry_rev2*, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %121 = call i32 @b43_radio_2055_setup(%struct.b43_wldev* %119, %struct.b43_nphy_channeltab_entry_rev2* %120)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %123 = load %struct.b43_nphy_channeltab_entry_rev2*, %struct.b43_nphy_channeltab_entry_rev2** %9, align 8
  %124 = getelementptr inbounds %struct.b43_nphy_channeltab_entry_rev2, %struct.b43_nphy_channeltab_entry_rev2* %123, i32 0, i32 0
  %125 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %126 = call i32 @b43_nphy_channel_setup(%struct.b43_wldev* %122, i32* %124, %struct.ieee80211_channel* %125)
  br label %127

127:                                              ; preds = %107, %88
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %39, %27
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.b43_nphy_channeltab_entry_rev3* @b43_nphy_get_chantabent_rev3(%struct.b43_wldev*, i32) #1

declare dso_local %struct.b43_nphy_channeltab_entry_rev2* @b43_nphy_get_chantabent_rev2(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_channel_type_is_40mhz(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_2056_setup(%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev3*) #1

declare dso_local i32 @b43_nphy_channel_setup(%struct.b43_wldev*, i32*, %struct.ieee80211_channel*) #1

declare dso_local i32 @b43_radio_2055_setup(%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
