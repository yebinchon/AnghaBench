; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tssi_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tssi_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LCNPHY_TSSI_POST_PA = common dso_local global i32 0, align 4
@RADIO_2064_REG086 = common dso_local global i32 0, align 4
@RADIO_2064_REG03A = common dso_local global i32 0, align 4
@RADIO_2064_REG11A = common dso_local global i32 0, align 4
@LCNPHY_TSSI_EXT = common dso_local global i32 0, align 4
@RADIO_2064_REG07F = common dso_local global i32 0, align 4
@RADIO_2064_REG005 = common dso_local global i32 0, align 4
@RADIO_2064_REG112 = common dso_local global i32 0, align 4
@RADIO_2064_REG028 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_set_tssi_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_tssi_mux(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = call i32 @mod_phy_reg(%struct.brcms_phy* %5, i32 1239, i32 1, i32 1)
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = call i32 @mod_phy_reg(%struct.brcms_phy* %7, i32 1239, i32 64, i32 64)
  %9 = load i32, i32* @LCNPHY_TSSI_POST_PA, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = call i32 @mod_phy_reg(%struct.brcms_phy* %13, i32 1241, i32 4, i32 0)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %16 = call i32 @mod_phy_reg(%struct.brcms_phy* %15, i32 1241, i32 8, i32 8)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @LCNREV_IS(i32 %20, i32 2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = load i32, i32* @RADIO_2064_REG086, align 4
  %26 = call i32 @mod_radio_reg(%struct.brcms_phy* %24, i32 %25, i32 4, i32 4)
  br label %34

27:                                               ; preds = %12
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = load i32, i32* @RADIO_2064_REG03A, align 4
  %30 = call i32 @mod_radio_reg(%struct.brcms_phy* %28, i32 %29, i32 1, i32 1)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = load i32, i32* @RADIO_2064_REG11A, align 4
  %33 = call i32 @mod_radio_reg(%struct.brcms_phy* %31, i32 %32, i32 8, i32 8)
  br label %34

34:                                               ; preds = %27, %23
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = call i32 @mod_phy_reg(%struct.brcms_phy* %36, i32 1241, i32 4, i32 4)
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %39 = call i32 @mod_phy_reg(%struct.brcms_phy* %38, i32 1241, i32 8, i32 0)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @LCNREV_IS(i32 %43, i32 2)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = load i32, i32* @RADIO_2064_REG086, align 4
  %49 = call i32 @mod_radio_reg(%struct.brcms_phy* %47, i32 %48, i32 4, i32 4)
  br label %57

50:                                               ; preds = %35
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = load i32, i32* @RADIO_2064_REG03A, align 4
  %53 = call i32 @mod_radio_reg(%struct.brcms_phy* %51, i32 %52, i32 1, i32 0)
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = load i32, i32* @RADIO_2064_REG11A, align 4
  %56 = call i32 @mod_radio_reg(%struct.brcms_phy* %54, i32 %55, i32 8, i32 8)
  br label %57

57:                                               ; preds = %50, %46
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %60 = call i32 @mod_phy_reg(%struct.brcms_phy* %59, i32 1591, i32 49152, i32 0)
  %61 = load i32, i32* @LCNPHY_TSSI_EXT, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = load i32, i32* @RADIO_2064_REG07F, align 4
  %67 = call i32 @write_radio_reg(%struct.brcms_phy* %65, i32 %66, i32 1)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = load i32, i32* @RADIO_2064_REG005, align 4
  %70 = call i32 @mod_radio_reg(%struct.brcms_phy* %68, i32 %69, i32 7, i32 2)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = load i32, i32* @RADIO_2064_REG112, align 4
  %73 = call i32 @mod_radio_reg(%struct.brcms_phy* %71, i32 %72, i32 128, i32 128)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = load i32, i32* @RADIO_2064_REG028, align 4
  %76 = call i32 @mod_radio_reg(%struct.brcms_phy* %74, i32 %75, i32 31, i32 3)
  br label %77

77:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
