; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_bu_tweaks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_bu_tweaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RADIO_2064_REG09B = common dso_local global i32 0, align 4
@RADIO_2064_REG0F7 = common dso_local global i32 0, align 4
@RADIO_2064_REG0F1 = common dso_local global i32 0, align 4
@RADIO_2064_REG0F2 = common dso_local global i32 0, align 4
@RADIO_2064_REG0F3 = common dso_local global i32 0, align 4
@RADIO_2064_REG11F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_bu_tweaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_bu_tweaks(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = call i32 @or_phy_reg(%struct.brcms_phy* %3, i32 2053, i32 1)
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = call i32 @mod_phy_reg(%struct.brcms_phy* %5, i32 1071, i32 7, i32 3)
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = call i32 @mod_phy_reg(%struct.brcms_phy* %7, i32 48, i32 7, i32 3)
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = call i32 @write_phy_reg(%struct.brcms_phy* %9, i32 1044, i32 7696)
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = call i32 @write_phy_reg(%struct.brcms_phy* %11, i32 1045, i32 1600)
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = call i32 @mod_phy_reg(%struct.brcms_phy* %13, i32 1247, i32 65280, i32 -2304)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = call i32 @or_phy_reg(%struct.brcms_phy* %15, i32 1098, i32 68)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = call i32 @write_phy_reg(%struct.brcms_phy* %17, i32 1098, i32 128)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = call i32 @mod_phy_reg(%struct.brcms_phy* %19, i32 1076, i32 255, i32 253)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %22 = call i32 @mod_phy_reg(%struct.brcms_phy* %21, i32 1056, i32 255, i32 16)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 4612
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = load i32, i32* @RADIO_2064_REG09B, align 4
  %32 = call i32 @mod_radio_reg(%struct.brcms_phy* %30, i32 %31, i32 240, i32 240)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = call i32 @write_phy_reg(%struct.brcms_phy* %34, i32 2006, i32 2306)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = call i32 @mod_phy_reg(%struct.brcms_phy* %36, i32 1065, i32 15, i32 9)
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %39 = call i32 @mod_phy_reg(%struct.brcms_phy* %38, i32 1065, i32 1008, i32 224)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @LCNREV_IS(i32 %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %33
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = call i32 @mod_phy_reg(%struct.brcms_phy* %47, i32 1059, i32 255, i32 70)
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %50 = call i32 @mod_phy_reg(%struct.brcms_phy* %49, i32 1041, i32 255, i32 1)
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %52 = call i32 @mod_phy_reg(%struct.brcms_phy* %51, i32 1076, i32 255, i32 255)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = call i32 @mod_phy_reg(%struct.brcms_phy* %53, i32 1622, i32 15, i32 2)
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %56 = call i32 @mod_phy_reg(%struct.brcms_phy* %55, i32 1101, i32 4, i32 4)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = load i32, i32* @RADIO_2064_REG0F7, align 4
  %59 = call i32 @mod_radio_reg(%struct.brcms_phy* %57, i32 %58, i32 4, i32 4)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = load i32, i32* @RADIO_2064_REG0F1, align 4
  %62 = call i32 @mod_radio_reg(%struct.brcms_phy* %60, i32 %61, i32 3, i32 0)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %64 = load i32, i32* @RADIO_2064_REG0F2, align 4
  %65 = call i32 @mod_radio_reg(%struct.brcms_phy* %63, i32 %64, i32 248, i32 144)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = load i32, i32* @RADIO_2064_REG0F3, align 4
  %68 = call i32 @mod_radio_reg(%struct.brcms_phy* %66, i32 %67, i32 3, i32 2)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = load i32, i32* @RADIO_2064_REG0F3, align 4
  %71 = call i32 @mod_radio_reg(%struct.brcms_phy* %69, i32 %70, i32 240, i32 160)
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = load i32, i32* @RADIO_2064_REG11F, align 4
  %74 = call i32 @mod_radio_reg(%struct.brcms_phy* %72, i32 %73, i32 2, i32 2)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = call i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy* %75)
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = call i32 @mod_phy_reg(%struct.brcms_phy* %77, i32 1232, i32 32704, i32 640)
  br label %79

79:                                               ; preds = %46, %33
  ret void
}

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @wlc_lcnphy_clear_tx_power_offsets(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
