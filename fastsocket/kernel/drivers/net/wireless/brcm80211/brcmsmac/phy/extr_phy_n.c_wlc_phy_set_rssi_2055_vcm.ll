; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_set_rssi_2055_vcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_set_rssi_2055_vcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NPHY_RSSI_SEL_NB = common dso_local global i64 0, align 8
@PHY_CORE_0 = common dso_local global i64 0, align 8
@RADIO_2055_CORE1_B0_NBRSSI_VCM = common dso_local global i32 0, align 4
@RADIO_2055_NBRSSI_VCM_I_MASK = common dso_local global i32 0, align 4
@RADIO_2055_NBRSSI_VCM_I_SHIFT = common dso_local global i64 0, align 8
@RADIO_2055_CORE1_RXBB_RSSI_CTRL5 = common dso_local global i32 0, align 4
@RADIO_2055_NBRSSI_VCM_Q_MASK = common dso_local global i32 0, align 4
@RADIO_2055_NBRSSI_VCM_Q_SHIFT = common dso_local global i64 0, align 8
@RADIO_2055_CORE2_B0_NBRSSI_VCM = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_RXBB_RSSI_CTRL5 = common dso_local global i32 0, align 4
@RADIO_2055_WBRSSI_VCM_IQ_MASK = common dso_local global i32 0, align 4
@RADIO_2055_WBRSSI_VCM_IQ_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64, i64*)* @wlc_phy_set_rssi_2055_vcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_set_rssi_2055_vcm(%struct.brcms_phy* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %102, %3
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %15, label %105

15:                                               ; preds = %8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @NPHY_RSSI_SEL_NB, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PHY_CORE_0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %25 = load i32, i32* @RADIO_2055_CORE1_B0_NBRSSI_VCM, align 4
  %26 = load i32, i32* @RADIO_2055_NBRSSI_VCM_I_MASK, align 4
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = mul nsw i64 2, %28
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RADIO_2055_NBRSSI_VCM_I_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = call i32 @mod_radio_reg(%struct.brcms_phy* %24, i32 %25, i32 %26, i64 %33)
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %36 = load i32, i32* @RADIO_2055_CORE1_RXBB_RSSI_CTRL5, align 4
  %37 = load i32, i32* @RADIO_2055_NBRSSI_VCM_Q_MASK, align 4
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = mul nsw i64 2, %39
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RADIO_2055_NBRSSI_VCM_Q_SHIFT, align 8
  %45 = shl i64 %43, %44
  %46 = call i32 @mod_radio_reg(%struct.brcms_phy* %35, i32 %36, i32 %37, i64 %45)
  br label %71

47:                                               ; preds = %19
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %49 = load i32, i32* @RADIO_2055_CORE2_B0_NBRSSI_VCM, align 4
  %50 = load i32, i32* @RADIO_2055_NBRSSI_VCM_I_MASK, align 4
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = mul nsw i64 2, %52
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RADIO_2055_NBRSSI_VCM_I_SHIFT, align 8
  %57 = shl i64 %55, %56
  %58 = call i32 @mod_radio_reg(%struct.brcms_phy* %48, i32 %49, i32 %50, i64 %57)
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %60 = load i32, i32* @RADIO_2055_CORE2_RXBB_RSSI_CTRL5, align 4
  %61 = load i32, i32* @RADIO_2055_NBRSSI_VCM_Q_MASK, align 4
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = mul nsw i64 2, %63
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RADIO_2055_NBRSSI_VCM_Q_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = call i32 @mod_radio_reg(%struct.brcms_phy* %59, i32 %60, i32 %61, i64 %69)
  br label %71

71:                                               ; preds = %47, %23
  br label %101

72:                                               ; preds = %15
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @PHY_CORE_0, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %78 = load i32, i32* @RADIO_2055_CORE1_RXBB_RSSI_CTRL5, align 4
  %79 = load i32, i32* @RADIO_2055_WBRSSI_VCM_IQ_MASK, align 4
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = mul nsw i64 2, %81
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RADIO_2055_WBRSSI_VCM_IQ_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = call i32 @mod_radio_reg(%struct.brcms_phy* %77, i32 %78, i32 %79, i64 %86)
  br label %100

88:                                               ; preds = %72
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %90 = load i32, i32* @RADIO_2055_CORE2_RXBB_RSSI_CTRL5, align 4
  %91 = load i32, i32* @RADIO_2055_WBRSSI_VCM_IQ_MASK, align 4
  %92 = load i64*, i64** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = mul nsw i64 2, %93
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RADIO_2055_WBRSSI_VCM_IQ_SHIFT, align 8
  %98 = shl i64 %96, %97
  %99 = call i32 @mod_radio_reg(%struct.brcms_phy* %89, i32 %90, i32 %91, i64 %98)
  br label %100

100:                                              ; preds = %88, %76
  br label %101

101:                                              ; preds = %100, %71
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %7, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %7, align 8
  br label %8

105:                                              ; preds = %8
  ret void
}

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
