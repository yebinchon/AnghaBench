; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_brcms_phy_get_tx_pwrctrl_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_brcms_phy_get_tx_pwrctrl_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@nphy_tpc_5GHz_txgain_rev3 = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_HiPwrEPA = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_rev4 = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_rev5 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_epa_2057rev3 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_epa_2057rev5 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_HiPwrEPA = common dso_local global i32* null, align 8
@nphy_tpc_txgain_rev3 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.brcms_phy*)* @brcms_phy_get_tx_pwrctrl_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @brcms_phy_get_tx_pwrctrl_tbl(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = call i64 @PHY_IPA(%struct.brcms_phy* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = call i32* @wlc_phy_get_ipa_gaintbl_nphy(%struct.brcms_phy* %13)
  store i32* %14, i32** %3, align 8
  br label %86

15:                                               ; preds = %1
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CHSPEC_IS5G(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @NREV_IS(i32 %22, i32 3)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev3, align 8
  store i32* %26, i32** %3, align 8
  br label %46

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @NREV_IS(i32 %28, i32 4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32*, i32** @nphy_tpc_5GHz_txgain_HiPwrEPA, align 8
  br label %41

39:                                               ; preds = %31
  %40 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev4, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32* [ %38, %37 ], [ %40, %39 ]
  store i32* %42, i32** %3, align 8
  br label %45

43:                                               ; preds = %27
  %44 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev5, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %25
  br label %85

47:                                               ; preds = %15
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @NREV_GE(i32 %48, i32 7)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32*, i32** @nphy_tpc_txgain_epa_2057rev3, align 8
  store i32* %58, i32** %3, align 8
  br label %68

59:                                               ; preds = %51
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 5
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32*, i32** @nphy_tpc_txgain_epa_2057rev5, align 8
  store i32* %66, i32** %3, align 8
  br label %67

67:                                               ; preds = %65, %59
  br label %68

68:                                               ; preds = %67, %57
  br label %84

69:                                               ; preds = %47
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @NREV_GE(i32 %70, i32 5)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32*, i32** @nphy_tpc_txgain_HiPwrEPA, align 8
  store i32* %80, i32** %3, align 8
  br label %83

81:                                               ; preds = %73, %69
  %82 = load i32*, i32** @nphy_tpc_txgain_rev3, align 8
  store i32* %82, i32** %3, align 8
  br label %83

83:                                               ; preds = %81, %79
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %12
  %87 = load i32*, i32** %3, align 8
  ret i32* %87
}

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i32* @wlc_phy_get_ipa_gaintbl_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
