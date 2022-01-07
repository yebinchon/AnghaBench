; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_ant_rxdiv_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_ant_rxdiv_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@ANT_RX_DIV_FORCE_1 = common dso_local global i64 0, align 8
@MHF1 = common dso_local global i32 0, align 4
@MHF1_ANTDIV = common dso_local global i32 0, align 4
@BRCM_BAND_ALL = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@ANT_RX_DIV_START_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_ant_rxdiv_set(%struct.brcms_phy_pub* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %8 = bitcast %struct.brcms_phy_pub* %7 to %struct.brcms_phy*
  store %struct.brcms_phy* %8, %struct.brcms_phy** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  store i64 %9, i64* %13, align 8
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %15 = call i64 @ISNPHY(%struct.brcms_phy* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @D11REV_IS(i32 %22, i32 16)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %17, %2
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @ANT_RX_DIV_FORCE_1, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MHF1, align 4
  %36 = load i32, i32* @MHF1_ANTDIV, align 4
  %37 = load i32, i32* @MHF1_ANTDIV, align 4
  %38 = load i32, i32* @BRCM_BAND_ALL, align 4
  %39 = call i32 @wlapi_bmac_mhf(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %50

40:                                               ; preds = %25
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MHF1, align 4
  %47 = load i32, i32* @MHF1_ANTDIV, align 4
  %48 = load i32, i32* @BRCM_BAND_ALL, align 4
  %49 = call i32 @wlapi_bmac_mhf(i32 %45, i32 %46, i32 %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %40, %29
  br label %51

51:                                               ; preds = %50, %17
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %53 = call i64 @ISNPHY(%struct.brcms_phy* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %123

56:                                               ; preds = %51
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %58 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %123

64:                                               ; preds = %56
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @maccontrol, align 4
  %69 = call i32 @D11REGOFFS(i32 %68)
  %70 = call i32 @bcma_read32(i32 %67, i32 %69)
  %71 = load i32, i32* @MCTL_EN_MAC, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 0, %72
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %64
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %79 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @wlapi_suspend_mac_and_wait(i32 %82)
  br label %84

84:                                               ; preds = %77, %64
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %86 = call i64 @ISLCNPHY(%struct.brcms_phy* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @ANT_RX_DIV_FORCE_1, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %94 = call i32 @mod_phy_reg(%struct.brcms_phy* %93, i32 1040, i32 2, i32 2)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %96 = load i64, i64* @ANT_RX_DIV_START_1, align 8
  %97 = load i64, i64* %4, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = shl i32 %100, 0
  %102 = call i32 @mod_phy_reg(%struct.brcms_phy* %95, i32 1040, i32 1, i32 %101)
  br label %111

103:                                              ; preds = %88
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %105 = call i32 @mod_phy_reg(%struct.brcms_phy* %104, i32 1040, i32 2, i32 0)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %107 = load i64, i64* %4, align 8
  %108 = trunc i64 %107 to i32
  %109 = shl i32 %108, 0
  %110 = call i32 @mod_phy_reg(%struct.brcms_phy* %106, i32 1040, i32 1, i32 %109)
  br label %111

111:                                              ; preds = %103, %92
  br label %112

112:                                              ; preds = %111, %84
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @wlapi_enable_mac(i32 %120)
  br label %122

122:                                              ; preds = %115, %112
  br label %123

123:                                              ; preds = %122, %63, %55
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @D11REV_IS(i32, i32) #1

declare dso_local i32 @wlapi_bmac_mhf(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
