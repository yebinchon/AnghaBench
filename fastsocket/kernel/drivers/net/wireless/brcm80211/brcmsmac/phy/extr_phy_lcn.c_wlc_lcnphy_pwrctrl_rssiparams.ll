; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_pwrctrl_rssiparams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_pwrctrl_rssiparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32, i32 }

@RADIO_2064_REG082 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_pwrctrl_rssiparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_pwrctrl_rssiparams(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  store %struct.brcms_phy_lcnphy* %10, %struct.brcms_phy_lcnphy** %6, align 8
  %11 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %12 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 4
  %15 = or i32 512, %14
  %16 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %17 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  store i32 %19, i32* %3, align 4
  store i32 644, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = call i32 @mod_phy_reg(%struct.brcms_phy* %20, i32 1240, i32 1, i32 0)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @mod_phy_reg(%struct.brcms_phy* %22, i32 1240, i32 2, i32 0)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %25 = call i32 @mod_phy_reg(%struct.brcms_phy* %24, i32 1239, i32 8, i32 0)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = shl i32 %27, 0
  %29 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %30 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 12
  %33 = or i32 %28, %32
  %34 = call i32 @mod_phy_reg(%struct.brcms_phy* %26, i32 1243, i32 29695, i32 %33)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = shl i32 %36, 0
  %38 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %39 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 12
  %42 = or i32 %37, %41
  %43 = call i32 @mod_phy_reg(%struct.brcms_phy* %35, i32 1244, i32 29695, i32 %42)
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = shl i32 %45, 0
  %47 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %48 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 12
  %51 = or i32 %46, %50
  %52 = call i32 @mod_phy_reg(%struct.brcms_phy* %44, i32 1034, i32 29695, i32 %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 0
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 12
  %58 = or i32 %55, %57
  %59 = call i32 @mod_phy_reg(%struct.brcms_phy* %53, i32 1035, i32 29695, i32 %58)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %61, 0
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 12
  %65 = or i32 %62, %64
  %66 = call i32 @mod_phy_reg(%struct.brcms_phy* %60, i32 1036, i32 29695, i32 %65)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = load i32, i32* @RADIO_2064_REG082, align 4
  %69 = call i32 @mod_radio_reg(%struct.brcms_phy* %67, i32 %68, i32 32, i32 32)
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
