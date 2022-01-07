; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_txpower_recalc_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_txpower_recalc_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64* }
%struct.phytbl_info = type { i32, i32, i32, i64*, i32 }

@BRCMS_NUM_RATES_CCK = common dso_local global i32 0, align 4
@BRCMS_NUM_RATES_OFDM = common dso_local global i32 0, align 4
@BRCMS_NUM_RATES_MCS_1_STREAM = common dso_local global i32 0, align 4
@TXP_FIRST_MCS_20_SISO = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_RATE_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_txpower_recalc_target(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.phytbl_info, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %9 = load i32, i32* @BRCMS_NUM_RATES_CCK, align 4
  %10 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @BRCMS_NUM_RATES_MCS_1_STREAM, align 4
  %13 = add nsw i32 %11, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = call i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %77

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ARRAY_SIZE(i64* %16)
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BRCMS_NUM_RATES_CCK, align 4
  %29 = load i32, i32* @BRCMS_NUM_RATES_OFDM, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @TXP_FIRST_MCS_20_SISO, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 0, %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %16, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %22

51:                                               ; preds = %22
  %52 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %53 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 0
  store i32 32, i32* %54, align 8
  %55 = call i32 @ARRAY_SIZE(i64* %16)
  %56 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i64* %16, i64** %57, align 8
  %58 = load i32, i32* @LCNPHY_TX_PWR_CTRL_RATE_OFFSET, align 4
  %59 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %60, %struct.phytbl_info* %3)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = call i64 @wlc_lcnphy_get_target_tx_pwr(%struct.brcms_phy* %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %51
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @wlc_lcnphy_set_target_tx_pwr(%struct.brcms_phy* %69, i64 %72)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %75 = call i32 @wlc_lcnphy_txpower_reset_npt(%struct.brcms_phy* %74)
  br label %76

76:                                               ; preds = %68, %51
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %76, %20
  %78 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %8, align 4
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 1, label %80
  ]

80:                                               ; preds = %77, %77
  ret void

81:                                               ; preds = %77
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(%struct.brcms_phy*) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #2

declare dso_local i64 @wlc_lcnphy_get_target_tx_pwr(%struct.brcms_phy*) #2

declare dso_local i32 @wlc_lcnphy_set_target_tx_pwr(%struct.brcms_phy*, i64) #2

declare dso_local i32 @wlc_lcnphy_txpower_reset_npt(%struct.brcms_phy*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
