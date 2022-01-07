; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_power_adjustment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_power_adjustment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_tx_power_adjustment(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca %struct.brcms_phy_lcnphy*, align 8
  %7 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %8 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %9 = bitcast %struct.brcms_phy_pub* %8 to %struct.brcms_phy*
  store %struct.brcms_phy* %9, %struct.brcms_phy** %5, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %12, align 8
  store %struct.brcms_phy_lcnphy* %13, %struct.brcms_phy_lcnphy** %6, align 8
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %15 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %17 = call i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %24 = call i32 @wlc_lcnphy_tempcompensated_txpwrctrl(%struct.brcms_phy* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %4, align 4
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 0
  %30 = call i32 @mod_phy_reg(%struct.brcms_phy* %27, i32 1193, i32 511, i32 %29)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %32 = call i32 @read_phy_reg(%struct.brcms_phy* %31, i32 1193)
  %33 = and i32 %32, 255
  %34 = sdiv i32 %33, 2
  %35 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %36 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %22, %19, %1
  ret void
}

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_tempcompensated_txpwrctrl(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
