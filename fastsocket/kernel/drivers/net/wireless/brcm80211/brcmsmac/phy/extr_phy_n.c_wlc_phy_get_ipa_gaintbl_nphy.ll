; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_get_ipa_gaintbl_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_get_ipa_gaintbl_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@nphy_tpc_txgain_ipa_2g_2057rev4n6 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa_2g_2057rev3 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa_2g_2057rev5 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa_2g_2057rev7 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa_rev6 = common dso_local global i32* null, align 8
@BCMA_CHIP_ID_BCM47162 = common dso_local global i64 0, align 8
@nphy_tpc_txgain_ipa_rev5 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa_5g_2057 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa_5g_2057rev7 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_ipa_5g = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.brcms_phy*)* @wlc_phy_get_ipa_gaintbl_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wlc_phy_get_ipa_gaintbl_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32* null, i32** %3, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @CHSPEC_IS2G(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %97

9:                                                ; preds = %1
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @NREV_GE(i32 %13, i32 7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %9
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %16
  %29 = load i32*, i32** @nphy_tpc_txgain_ipa_2g_2057rev4n6, align 8
  store i32* %29, i32** %3, align 8
  br label %63

30:                                               ; preds = %22
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32*, i32** @nphy_tpc_txgain_ipa_2g_2057rev3, align 8
  store i32* %37, i32** %3, align 8
  br label %62

38:                                               ; preds = %30
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32*, i32** @nphy_tpc_txgain_ipa_2g_2057rev5, align 8
  store i32* %45, i32** %3, align 8
  br label %61

46:                                               ; preds = %38
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 7
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %60

58:                                               ; preds = %52, %46
  %59 = load i32*, i32** @nphy_tpc_txgain_ipa_2g_2057rev7, align 8
  store i32* %59, i32** %3, align 8
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %36
  br label %63

63:                                               ; preds = %62, %28
  br label %96

64:                                               ; preds = %9
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @NREV_IS(i32 %68, i32 6)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load i32*, i32** @nphy_tpc_txgain_ipa_rev6, align 8
  store i32* %72, i32** %3, align 8
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BCMA_CHIP_ID_BCM47162, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32*, i32** @nphy_tpc_txgain_ipa_rev5, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %80, %71
  br label %95

83:                                               ; preds = %64
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @NREV_IS(i32 %87, i32 5)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32*, i32** @nphy_tpc_txgain_ipa_rev5, align 8
  store i32* %91, i32** %3, align 8
  br label %94

92:                                               ; preds = %83
  %93 = load i32*, i32** @nphy_tpc_txgain_ipa, align 8
  store i32* %93, i32** %3, align 8
  br label %94

94:                                               ; preds = %92, %90
  br label %95

95:                                               ; preds = %94, %82
  br label %96

96:                                               ; preds = %95, %63
  br label %143

97:                                               ; preds = %1
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @NREV_GE(i32 %101, i32 7)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %97
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %106 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %122, label %110

110:                                              ; preds = %104
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 6
  br i1 %121, label %122, label %124

122:                                              ; preds = %116, %110, %104
  %123 = load i32*, i32** @nphy_tpc_txgain_ipa_5g_2057, align 8
  store i32* %123, i32** %3, align 8
  br label %139

124:                                              ; preds = %116
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 7
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %132 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 8
  br i1 %135, label %136, label %138

136:                                              ; preds = %130, %124
  %137 = load i32*, i32** @nphy_tpc_txgain_ipa_5g_2057rev7, align 8
  store i32* %137, i32** %3, align 8
  br label %138

138:                                              ; preds = %136, %130
  br label %139

139:                                              ; preds = %138, %122
  br label %142

140:                                              ; preds = %97
  %141 = load i32*, i32** @nphy_tpc_txgain_ipa_5g, align 8
  store i32* %141, i32** %3, align 8
  br label %142

142:                                              ; preds = %140, %139
  br label %143

143:                                              ; preds = %142, %96
  %144 = load i32*, i32** %3, align 8
  ret i32* %144
}

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
