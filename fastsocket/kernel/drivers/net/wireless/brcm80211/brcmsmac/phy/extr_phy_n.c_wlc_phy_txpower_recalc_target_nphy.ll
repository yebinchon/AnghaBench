; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpower_recalc_target_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpower_recalc_target_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MCTL_PHYLOCK = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_recalc_target_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = call i32 @wlc_phy_txpwr_limit_to_tbl_nphy(%struct.brcms_phy* %4)
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %7 = call i32 @wlc_phy_txpwrctrl_pwr_setup_nphy(%struct.brcms_phy* %6)
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @D11REV_IS(i32 %15, i32 11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @D11REV_IS(i32 %23, i32 12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %18, %1
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %28 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MCTL_PHYLOCK, align 4
  %33 = load i32, i32* @MCTL_PHYLOCK, align 4
  %34 = call i32 @wlapi_bmac_mctrl(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @maccontrol, align 4
  %39 = call i32 @D11REGOFFS(i32 %38)
  %40 = call i32 @bcma_read32(i32 %37, i32 %39)
  %41 = call i32 @udelay(i32 1)
  br label %42

42:                                               ; preds = %26, %18
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %43, i32 %44)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @D11REV_IS(i32 %50, i32 11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %42
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @D11REV_IS(i32 %58, i32 12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53, %42
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MCTL_PHYLOCK, align 4
  %68 = call i32 @wlapi_bmac_mctrl(i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %61, %53
  ret void
}

declare dso_local i32 @wlc_phy_txpwr_limit_to_tbl_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwrctrl_pwr_setup_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @D11REV_IS(i32, i32) #1

declare dso_local i32 @wlapi_bmac_mctrl(i32, i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
