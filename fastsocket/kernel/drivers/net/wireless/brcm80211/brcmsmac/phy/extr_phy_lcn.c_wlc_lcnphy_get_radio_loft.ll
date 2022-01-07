; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_radio_loft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_radio_loft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@RADIO_2064_REG089 = common dso_local global i32 0, align 4
@RADIO_2064_REG08A = common dso_local global i32 0, align 4
@RADIO_2064_REG08B = common dso_local global i32 0, align 4
@RADIO_2064_REG08C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_get_radio_loft(%struct.brcms_phy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %12 = load i32, i32* @RADIO_2064_REG089, align 4
  %13 = call i32 @read_radio_reg(%struct.brcms_phy* %11, i32 %12)
  %14 = call i32 @LCNPHY_IQLOCC_READ(i32 %13)
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %17 = load i32, i32* @RADIO_2064_REG08A, align 4
  %18 = call i32 @read_radio_reg(%struct.brcms_phy* %16, i32 %17)
  %19 = call i32 @LCNPHY_IQLOCC_READ(i32 %18)
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %22 = load i32, i32* @RADIO_2064_REG08B, align 4
  %23 = call i32 @read_radio_reg(%struct.brcms_phy* %21, i32 %22)
  %24 = call i32 @LCNPHY_IQLOCC_READ(i32 %23)
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %27 = load i32, i32* @RADIO_2064_REG08C, align 4
  %28 = call i32 @read_radio_reg(%struct.brcms_phy* %26, i32 %27)
  %29 = call i32 @LCNPHY_IQLOCC_READ(i32 %28)
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

declare dso_local i32 @LCNPHY_IQLOCC_READ(i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
