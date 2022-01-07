; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_preinit_2055.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_preinit_2055.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@RFCC_POR_FORCE = common dso_local global i32 0, align 4
@RFCC_CHIP0_PU = common dso_local global i32 0, align 4
@RFCC_OE_POR_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_radio_preinit_2055 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_radio_preinit_2055(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = load i32, i32* @RFCC_POR_FORCE, align 4
  %5 = xor i32 %4, -1
  %6 = call i32 @and_phy_reg(%struct.brcms_phy* %3, i32 120, i32 %5)
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = load i32, i32* @RFCC_CHIP0_PU, align 4
  %9 = load i32, i32* @RFCC_OE_POR_FORCE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @or_phy_reg(%struct.brcms_phy* %7, i32 120, i32 %10)
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %13 = load i32, i32* @RFCC_POR_FORCE, align 4
  %14 = call i32 @or_phy_reg(%struct.brcms_phy* %12, i32 120, i32 %13)
  ret void
}

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
