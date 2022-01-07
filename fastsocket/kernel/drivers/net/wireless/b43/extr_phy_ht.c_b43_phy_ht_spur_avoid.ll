; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_spur_avoid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_spur_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bcma_device* }
%struct.bcma_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@B43_BCMA_CLKCTLST_PHY_PLL_REQ = common dso_local global i32 0, align 4
@B43_BCMA_CLKCTLST_80211_PLL_REQ = common dso_local global i32 0, align 4
@B43_BCMA_CLKCTLST_80211_PLL_ST = common dso_local global i32 0, align 4
@B43_BCMA_CLKCTLST_PHY_PLL_ST = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CLK_FRAC_LOW = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CLK_FRAC_HIGH = common dso_local global i32 0, align 4
@B43_PHY_HT_BBCFG = common dso_local global i32 0, align 4
@B43_PHY_HT_BBCFG_RSTRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.ieee80211_channel*)* @b43_phy_ht_spur_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_spur_avoid(%struct.b43_wldev* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.bcma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.bcma_device*, %struct.bcma_device** %11, align 8
  store %struct.bcma_device* %12, %struct.bcma_device** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 14
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %25 = load i32, i32* @B43_BCMA_CLKCTLST_PHY_PLL_REQ, align 4
  %26 = call i32 @bcma_core_pll_ctl(%struct.bcma_device* %24, i32 %25, i32 0, i32 0)
  %27 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %28 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @bcma_pmu_spuravoid_pllupdate(i32* %30, i32 %31)
  %33 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %34 = load i32, i32* @B43_BCMA_CLKCTLST_80211_PLL_REQ, align 4
  %35 = load i32, i32* @B43_BCMA_CLKCTLST_PHY_PLL_REQ, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @B43_BCMA_CLKCTLST_80211_PLL_ST, align 4
  %38 = load i32, i32* @B43_BCMA_CLKCTLST_PHY_PLL_ST, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @bcma_core_pll_ctl(%struct.bcma_device* %33, i32 %36, i32 %39, i32 0)
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %44 [
    i32 2, label %42
    i32 1, label %43
  ]

42:                                               ; preds = %23
  store i32 8322, i32* %7, align 4
  br label %45

43:                                               ; preds = %23
  store i32 21313, i32* %7, align 4
  br label %45

44:                                               ; preds = %23
  store i32 34953, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %43, %42
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %47 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_LOW, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @b43_write16(%struct.b43_wldev* %46, i32 %47, i32 %48)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = load i32, i32* @B43_MMIO_TSF_CLK_FRAC_HIGH, align 4
  %52 = call i32 @b43_write16(%struct.b43_wldev* %50, i32 %51, i32 8)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %57 = load i32, i32* @B43_PHY_HT_BBCFG, align 4
  %58 = load i32, i32* @B43_PHY_HT_BBCFG_RSTRX, align 4
  %59 = call i32 @b43_phy_set(%struct.b43_wldev* %56, i32 %57, i32 %58)
  br label %67

60:                                               ; preds = %45
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = load i32, i32* @B43_PHY_HT_BBCFG, align 4
  %63 = load i32, i32* @B43_PHY_HT_BBCFG_RSTRX, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %64, 65535
  %66 = call i32 @b43_phy_mask(%struct.b43_wldev* %61, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %60, %55
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %69 = call i32 @b43_phy_ht_reset_cca(%struct.b43_wldev* %68)
  ret void
}

declare dso_local i32 @bcma_core_pll_ctl(%struct.bcma_device*, i32, i32, i32) #1

declare dso_local i32 @bcma_pmu_spuravoid_pllupdate(i32*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_ht_reset_cca(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
