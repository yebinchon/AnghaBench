; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio205x_vcocal_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio205x_vcocal_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RADIO_2057_RFPLL_MISC_EN = common dso_local global i32 0, align 4
@RADIO_2057_RFPLL_MISC_CAL_RESETN = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_VCOCAL12 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_MAST3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_radio205x_vcocal_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @NREV_GE(i32 %6, i32 7)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %11 = load i32, i32* @RADIO_2057_RFPLL_MISC_EN, align 4
  %12 = call i32 @mod_radio_reg(%struct.brcms_phy* %10, i32 %11, i32 1, i32 0)
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = load i32, i32* @RADIO_2057_RFPLL_MISC_CAL_RESETN, align 4
  %15 = call i32 @mod_radio_reg(%struct.brcms_phy* %13, i32 %14, i32 4, i32 0)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = load i32, i32* @RADIO_2057_RFPLL_MISC_CAL_RESETN, align 4
  %18 = call i32 @mod_radio_reg(%struct.brcms_phy* %16, i32 %17, i32 4, i32 4)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = load i32, i32* @RADIO_2057_RFPLL_MISC_EN, align 4
  %21 = call i32 @mod_radio_reg(%struct.brcms_phy* %19, i32 %20, i32 1, i32 1)
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @NREV_GE(i32 %26, i32 3)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = load i32, i32* @RADIO_2056_SYN_PLL_VCOCAL12, align 4
  %32 = call i32 @write_radio_reg(%struct.brcms_phy* %30, i32 %31, i32 0)
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = load i32, i32* @RADIO_2056_SYN_PLL_MAST3, align 4
  %35 = call i32 @write_radio_reg(%struct.brcms_phy* %33, i32 %34, i32 56)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = load i32, i32* @RADIO_2056_SYN_PLL_MAST3, align 4
  %38 = call i32 @write_radio_reg(%struct.brcms_phy* %36, i32 %37, i32 24)
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = load i32, i32* @RADIO_2056_SYN_PLL_MAST3, align 4
  %41 = call i32 @write_radio_reg(%struct.brcms_phy* %39, i32 %40, i32 56)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = load i32, i32* @RADIO_2056_SYN_PLL_MAST3, align 4
  %44 = call i32 @write_radio_reg(%struct.brcms_phy* %42, i32 %43, i32 57)
  br label %45

45:                                               ; preds = %29, %22
  br label %46

46:                                               ; preds = %45, %9
  %47 = call i32 @udelay(i32 300)
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
