; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_rssi_compute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_rssi_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i64 }
%struct.d11rxhdr = type { i32, i32, i32 }
%struct.brcms_phy = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PRXS1_JSSI_MASK = common dso_local global i32 0, align 4
@RXS_PHYRXST_VALID = common dso_local global i32 0, align 4
@BRCMS_RSSI_INVALID = common dso_local global i32 0, align 4
@lcnphy_gain_index_offset_for_pkt_rssi = common dso_local global i32* null, align 8
@BCM2055_ID = common dso_local global i64 0, align 8
@BCM2056_ID = common dso_local global i64 0, align 8
@BCM2057_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_rssi_compute(%struct.brcms_phy_pub* %0, %struct.d11rxhdr* %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca %struct.d11rxhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store %struct.d11rxhdr* %1, %struct.d11rxhdr** %4, align 8
  %10 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %11 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PRXS1_JSSI_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %16 = getelementptr inbounds %struct.brcms_phy_pub, %struct.brcms_phy_pub* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %19 = bitcast %struct.brcms_phy_pub* %18 to %struct.brcms_phy*
  store %struct.brcms_phy* %19, %struct.brcms_phy** %7, align 8
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 11
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %28 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RXS_PHYRXST_VALID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @BRCMS_RSSI_INVALID, align 4
  store i32 %34, i32* %5, align 4
  br label %107

35:                                               ; preds = %26, %2
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %37 = call i64 @ISLCNPHY(%struct.brcms_phy* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %41 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 64512
  %44 = ashr i32 %43, 10
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %8, align 8
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %47 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %48, align 8
  store %struct.brcms_phy_lcnphy* %49, %struct.brcms_phy_lcnphy** %9, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 127
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 256
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %39
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** @lcnphy_gain_index_offset_for_pkt_rssi, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %56, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, -46
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = icmp ugt i64 %65, 18
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 7
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %64, %55
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  %73 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %70, %35
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %80 = call i64 @ISLCNPHY(%struct.brcms_phy* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 127
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %86, 256
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %106

89:                                               ; preds = %78
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @BCM2055_ID, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @BCM2056_ID, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @BCM2057_ID, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97, %93, %89
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %103 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %104 = call i32 @wlc_phy_rssi_compute_nphy(%struct.brcms_phy* %102, %struct.d11rxhdr* %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %88
  br label %107

107:                                              ; preds = %106, %33
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_rssi_compute_nphy(%struct.brcms_phy*, %struct.d11rxhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
