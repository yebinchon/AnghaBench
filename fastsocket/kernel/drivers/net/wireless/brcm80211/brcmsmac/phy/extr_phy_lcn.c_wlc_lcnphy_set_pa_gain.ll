; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_pa_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_pa_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK = common dso_local global i32 0, align 4
@LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT = common dso_local global i32 0, align 4
@LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_MASK = common dso_local global i32 0, align 4
@LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_set_pa_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_pa_gain(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = load i32, i32* @LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT, align 4
  %9 = shl i32 %7, %8
  %10 = call i32 @mod_phy_reg(%struct.brcms_phy* %5, i32 1275, i32 %6, i32 %9)
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %12 = load i32, i32* @LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_MASK, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @LCNPHY_stxtxgainctrlovrval1_pagain_ovr_val1_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = call i32 @mod_phy_reg(%struct.brcms_phy* %11, i32 1277, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
