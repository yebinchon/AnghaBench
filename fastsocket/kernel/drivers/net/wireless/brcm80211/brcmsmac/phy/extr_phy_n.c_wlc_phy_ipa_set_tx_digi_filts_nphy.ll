; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_ipa_set_tx_digi_filts_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_ipa_set_tx_digi_filts_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32 }

@__const.wlc_phy_ipa_set_tx_digi_filts_nphy.addr_offset = private unnamed_addr constant [3 x i32] [i32 390, i32 405, i32 709], align 4
@NPHY_NUM_DIG_FILT_COEFFS = common dso_local global i32 0, align 4
@NPHY_IPA_REV4_txdigi_filtcoeffs = common dso_local global i32** null, align 8
@WL_CHANSPEC_BW_40 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_ipa_set_tx_digi_filts_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_ipa_set_tx_digi_filts_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %6 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([3 x i32]* @__const.wlc_phy_ipa_set_tx_digi_filts_nphy.addr_offset to i8*), i64 12, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %33, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NPHY_NUM_DIG_FILT_COEFFS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32**, i32*** @NPHY_IPA_REV4_txdigi_filtcoeffs, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @write_phy_reg(%struct.brcms_phy* %16, i32 %22, i32 %31)
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %11

36:                                               ; preds = %11
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @NPHY_NUM_DIG_FILT_COEFFS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 390, %53
  %55 = load i32**, i32*** @NPHY_IPA_REV4_txdigi_filtcoeffs, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @write_phy_reg(%struct.brcms_phy* %52, i32 %54, i32 %61)
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %47

66:                                               ; preds = %47
  br label %122

67:                                               ; preds = %40
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @CHSPEC_IS5G(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %90, %73
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @NPHY_NUM_DIG_FILT_COEFFS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 390, %80
  %82 = load i32**, i32*** @NPHY_IPA_REV4_txdigi_filtcoeffs, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 5
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @write_phy_reg(%struct.brcms_phy* %79, i32 %81, i32 %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %74

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @CHSPEC_CHANNEL(i32 %97)
  %99 = icmp eq i32 %98, 14
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @NPHY_NUM_DIG_FILT_COEFFS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 709, %107
  %109 = load i32**, i32*** @NPHY_IPA_REV4_txdigi_filtcoeffs, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 6
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write_phy_reg(%struct.brcms_phy* %106, i32 %108, i32 %115)
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %101

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i64 @CHSPEC_IS5G(i32) #2

declare dso_local i32 @CHSPEC_CHANNEL(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
