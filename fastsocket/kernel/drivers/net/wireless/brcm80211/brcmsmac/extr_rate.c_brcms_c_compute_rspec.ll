; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_rate.c_brcms_c_compute_rspec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_rate.c_brcms_c_compute_rspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d11rxhdr = type { i32, i32 }
%struct.cck_phy_hdr = type { i32 }
%struct.ofdm_phy_hdr = type { i32* }

@PHY_TXC1_BW_20MHZ = common dso_local global i32 0, align 4
@RSPEC_BW_SHIFT = common dso_local global i32 0, align 4
@RXS_CHAN_PHYTYPE_MASK = common dso_local global i32 0, align 4
@RXS_CHAN_PHYTYPE_SHIFT = common dso_local global i32 0, align 4
@PHY_TYPE_N = common dso_local global i32 0, align 4
@PHY_TYPE_SSN = common dso_local global i32 0, align 4
@PHY_TYPE_LCN = common dso_local global i32 0, align 4
@PHY_TYPE_HT = common dso_local global i32 0, align 4
@PRXS0_FT_MASK = common dso_local global i32 0, align 4
@MIMO_PLCP_MCS_MASK = common dso_local global i32 0, align 4
@RSPEC_MIMORATE = common dso_local global i32 0, align 4
@MIMO_PLCP_40MHZ = common dso_local global i32 0, align 4
@RSPEC_BW_MASK = common dso_local global i32 0, align 4
@PHY_TXC1_BW_40MHZ = common dso_local global i32 0, align 4
@RSPEC_SHORT_GI = common dso_local global i32 0, align 4
@PHY_TYPE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_compute_rspec(%struct.d11rxhdr* %0, i32* %1) #0 {
  %3 = alloca %struct.d11rxhdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.d11rxhdr* %0, %struct.d11rxhdr** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @PHY_TXC1_BW_20MHZ, align 4
  %8 = load i32, i32* @RSPEC_BW_SHIFT, align 4
  %9 = shl i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.d11rxhdr*, %struct.d11rxhdr** %3, align 8
  %11 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RXS_CHAN_PHYTYPE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @RXS_CHAN_PHYTYPE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PHY_TYPE_N, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PHY_TYPE_SSN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PHY_TYPE_LCN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PHY_TYPE_HT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %28, %24, %20, %2
  %33 = load %struct.d11rxhdr*, %struct.d11rxhdr** %3, align 8
  %34 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PRXS0_FT_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %78 [
    i32 131, label %38
    i32 130, label %44
    i32 129, label %52
    i32 128, label %77
  ]

38:                                               ; preds = %32
  %39 = load i32*, i32** %4, align 8
  %40 = bitcast i32* %39 to %struct.cck_phy_hdr*
  %41 = getelementptr inbounds %struct.cck_phy_hdr, %struct.cck_phy_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cck_phy2mac_rate(i32 %42)
  store i32 %43, i32* %6, align 4
  br label %79

44:                                               ; preds = %32
  %45 = load i32*, i32** %4, align 8
  %46 = bitcast i32* %45 to %struct.ofdm_phy_hdr*
  %47 = getelementptr inbounds %struct.ofdm_phy_hdr, %struct.ofdm_phy_hdr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ofdm_phy2mac_rate(i32 %50)
  store i32 %51, i32* %6, align 4
  br label %79

52:                                               ; preds = %32
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MIMO_PLCP_MCS_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @RSPEC_MIMORATE, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MIMO_PLCP_40MHZ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %52
  %67 = load i32, i32* @RSPEC_BW_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* @PHY_TXC1_BW_40MHZ, align 4
  %72 = load i32, i32* @RSPEC_BW_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %66, %52
  br label %79

77:                                               ; preds = %32
  br label %78

78:                                               ; preds = %32, %77
  br label %79

79:                                               ; preds = %78, %76, %44, %38
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @plcp3_issgi(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @RSPEC_SHORT_GI, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %79
  br label %115

90:                                               ; preds = %28
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @PHY_TYPE_A, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load %struct.d11rxhdr*, %struct.d11rxhdr** %3, align 8
  %96 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 130
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %94, %90
  %101 = load i32*, i32** %4, align 8
  %102 = bitcast i32* %101 to %struct.ofdm_phy_hdr*
  %103 = getelementptr inbounds %struct.ofdm_phy_hdr, %struct.ofdm_phy_hdr* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ofdm_phy2mac_rate(i32 %106)
  store i32 %107, i32* %6, align 4
  br label %114

108:                                              ; preds = %94
  %109 = load i32*, i32** %4, align 8
  %110 = bitcast i32* %109 to %struct.cck_phy_hdr*
  %111 = getelementptr inbounds %struct.cck_phy_hdr, %struct.cck_phy_hdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @cck_phy2mac_rate(i32 %112)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %108, %100
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @cck_phy2mac_rate(i32) #1

declare dso_local i32 @ofdm_phy2mac_rate(i32) #1

declare dso_local i64 @plcp3_issgi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
