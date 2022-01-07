; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_limit_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_limit_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.txpwr_limits = type { i64*, i64* }
%struct.brcms_phy = type { %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32 }

@TXP_FIRST_OFDM_20_CDD = common dso_local global i32 0, align 4
@BRCMS_NUM_RATES_MCS_1_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_limit_set(%struct.brcms_phy_pub* %0, %struct.txpwr_limits* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy_pub*, align 8
  %5 = alloca %struct.txpwr_limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %4, align 8
  store %struct.txpwr_limits* %1, %struct.txpwr_limits** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %11 = bitcast %struct.brcms_phy_pub* %10 to %struct.brcms_phy*
  store %struct.brcms_phy* %11, %struct.brcms_phy** %7, align 8
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %13 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @wlc_phy_txpower_reg_limit_calc(%struct.brcms_phy* %12, %struct.txpwr_limits* %13, i32 %14)
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %17 = call i64 @ISLCNPHY(%struct.brcms_phy* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %3
  %20 = load i32, i32* @TXP_FIRST_OFDM_20_CDD, align 4
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %63, %19
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  %26 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %27 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %36 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  br label %62

48:                                               ; preds = %25
  %49 = load %struct.txpwr_limits*, %struct.txpwr_limits** %5, align 8
  %50 = getelementptr inbounds %struct.txpwr_limits, %struct.txpwr_limits* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  br label %62

62:                                               ; preds = %48, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %21

68:                                               ; preds = %21
  br label %69

69:                                               ; preds = %68, %3
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wlapi_suspend_mac_and_wait(i32 %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %77 = call i32 @wlc_phy_txpower_recalc_target(%struct.brcms_phy* %76)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %79 = call i32 @wlc_phy_cal_txpower_recalc_sw(%struct.brcms_phy* %78)
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wlapi_enable_mac(i32 %84)
  ret void
}

declare dso_local i32 @wlc_phy_txpower_reg_limit_calc(%struct.brcms_phy*, %struct.txpwr_limits*, i32) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_phy_txpower_recalc_target(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_txpower_recalc_sw(%struct.brcms_phy*) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
