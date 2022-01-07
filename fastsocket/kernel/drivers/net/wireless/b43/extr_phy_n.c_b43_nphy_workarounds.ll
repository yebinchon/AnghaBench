; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32 }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64 }

@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B43_NPHY_IQFLIP = common dso_local global i32 0, align 4
@B43_NPHY_IQFLIP_ADC1 = common dso_local global i32 0, align 4
@B43_NPHY_IQFLIP_ADC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_workarounds(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  store %struct.b43_phy* %6, %struct.b43_phy** %3, align 8
  %7 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %8 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %7, i32 0, i32 1
  %9 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  store %struct.b43_phy_n* %9, %struct.b43_phy_n** %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @b43_current_band(i32 %12)
  %14 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %17, i32 1, i32 0)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %20, i32 1, i32 1)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %24 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = load i32, i32* @B43_NPHY_IQFLIP, align 4
  %33 = load i32, i32* @B43_NPHY_IQFLIP_ADC1, align 4
  %34 = load i32, i32* @B43_NPHY_IQFLIP_ADC2, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @b43_phy_set(%struct.b43_wldev* %31, i32 %32, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %40, 7
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = call i32 @b43_nphy_workarounds_rev7plus(%struct.b43_wldev* %43)
  br label %58

45:                                               ; preds = %30
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = call i32 @b43_nphy_workarounds_rev3plus(%struct.b43_wldev* %52)
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_nphy_workarounds_rev1_2(%struct.b43_wldev* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %60 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %64, i32 0)
  br label %66

66:                                               ; preds = %63, %58
  ret void
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_workarounds_rev7plus(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_workarounds_rev3plus(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_workarounds_rev1_2(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
