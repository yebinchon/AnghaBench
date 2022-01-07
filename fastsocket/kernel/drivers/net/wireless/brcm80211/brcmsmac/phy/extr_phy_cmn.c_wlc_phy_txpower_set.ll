; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32, %struct.TYPE_2__*, i32, i64* }
%struct.TYPE_2__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TXP_NUM_RATES = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_txpower_set(%struct.brcms_phy_pub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcms_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %5, align 8
  %12 = bitcast %struct.brcms_phy_pub* %11 to %struct.brcms_phy*
  store %struct.brcms_phy* %12, %struct.brcms_phy** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 127
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @TXP_NUM_RATES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 3
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64 %25, i64* %31, align 8
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %35
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %46 = call i32 @SCAN_INPROG_PHY(%struct.brcms_phy* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %50 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @maccontrol, align 4
  %53 = call i32 @D11REGOFFS(i32 %52)
  %54 = call i32 @bcma_read32(i32 %51, i32 %53)
  %55 = load i32, i32* @MCTL_EN_MAC, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 0, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %48
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @wlapi_suspend_mac_and_wait(i32 %66)
  br label %68

68:                                               ; preds = %61, %48
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %70 = call i32 @wlc_phy_txpower_recalc_target(%struct.brcms_phy* %69)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %72 = call i32 @wlc_phy_cal_txpower_recalc_sw(%struct.brcms_phy* %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %77 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @wlapi_enable_mac(i32 %80)
  br label %82

82:                                               ; preds = %75, %68
  br label %83

83:                                               ; preds = %82, %44
  br label %84

84:                                               ; preds = %83, %35
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @SCAN_INPROG_PHY(%struct.brcms_phy*) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

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
