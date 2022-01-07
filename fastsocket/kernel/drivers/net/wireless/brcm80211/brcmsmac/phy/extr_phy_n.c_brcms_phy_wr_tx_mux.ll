; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_brcms_phy_wr_tx_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_brcms_phy_wr_tx_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@PHY_CORE_0 = common dso_local global i64 0, align 8
@RADIO_2057_TX0_TX_SSI_MUX = common dso_local global i32 0, align 4
@RADIO_2057_TX1_TX_SSI_MUX = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@BCM2057_ID = common dso_local global i64 0, align 8
@RADIO_2057_IQTEST_SEL_PU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @brcms_phy_wr_tx_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_phy_wr_tx_mux(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = call i64 @PHY_IPA(%struct.brcms_phy* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @NREV_GE(i32 %12, i32 7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PHY_CORE_0, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @RADIO_2057_TX0_TX_SSI_MUX, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @RADIO_2057_TX1_TX_SSI_MUX, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @CHSPEC_IS5G(i32 %28)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 12, i32 14
  %33 = call i32 @write_radio_reg(%struct.brcms_phy* %16, i32 %25, i32 %32)
  br label %55

34:                                               ; preds = %8
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @PHY_CORE_0, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @RADIO_2056_TX0, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @RADIO_2056_TX1, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = or i32 %36, %45
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @CHSPEC_IS5G(i32 %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 12, i32 14
  %54 = call i32 @write_radio_reg(%struct.brcms_phy* %35, i32 %46, i32 %53)
  br label %55

55:                                               ; preds = %44, %24
  br label %101

56:                                               ; preds = %2
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %58 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @NREV_GE(i32 %60, i32 7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @PHY_CORE_0, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @RADIO_2057_TX0_TX_SSI_MUX, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @RADIO_2057_TX1_TX_SSI_MUX, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = call i32 @write_radio_reg(%struct.brcms_phy* %64, i32 %73, i32 17)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @BCM2057_ID, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = load i32, i32* @RADIO_2057_IQTEST_SEL_PU, align 4
  %84 = call i32 @write_radio_reg(%struct.brcms_phy* %82, i32 %83, i32 1)
  br label %85

85:                                               ; preds = %81, %72
  br label %100

86:                                               ; preds = %56
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @PHY_CORE_0, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @RADIO_2056_TX0, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @RADIO_2056_TX1, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = or i32 %88, %97
  %99 = call i32 @write_radio_reg(%struct.brcms_phy* %87, i32 %98, i32 17)
  br label %100

100:                                              ; preds = %96, %85
  br label %101

101:                                              ; preds = %100, %55
  ret void
}

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
