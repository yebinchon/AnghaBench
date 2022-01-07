; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_hw_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_hw_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@PHY_TPC_HW_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_hw_ctrl_set(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %8 = bitcast %struct.brcms_phy_pub* %7 to %struct.brcms_phy*
  store %struct.brcms_phy* %8, %struct.brcms_phy** %5, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %25 = call i64 @ISNPHY(%struct.brcms_phy* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %79

27:                                               ; preds = %14
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @maccontrol, align 4
  %32 = call i32 @D11REGOFFS(i32 %31)
  %33 = call i32 @bcma_read32(i32 %30, i32 %32)
  %34 = load i32, i32* @MCTL_EN_MAC, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 0, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %27
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wlapi_suspend_mac_and_wait(i32 %45)
  br label %47

47:                                               ; preds = %40, %27
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %50 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %48, i32 %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @PHY_TPC_HW_OFF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %61 = call i32 @wlc_phy_txpwr_fixpower_nphy(%struct.brcms_phy* %60)
  br label %68

62:                                               ; preds = %47
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mod_phy_reg(%struct.brcms_phy* %63, i32 487, i32 127, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wlapi_enable_mac(i32 %76)
  br label %78

78:                                               ; preds = %71, %68
  br label %79

79:                                               ; preds = %13, %78, %14
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_txpwr_fixpower_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
