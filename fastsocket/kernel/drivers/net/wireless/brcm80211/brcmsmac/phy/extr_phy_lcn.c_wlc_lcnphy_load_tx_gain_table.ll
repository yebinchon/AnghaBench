; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_tx_gain_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_tx_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lcnphy_tx_gain_tbl_entry = type { i32, i32, i32, i32, i32 }
%struct.phytbl_info = type { i32, i32, i32*, i64, i32 }

@BFL_FEM = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_GAIN_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_IQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.lcnphy_tx_gain_tbl_entry*)* @wlc_lcnphy_load_tx_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy* %0, %struct.lcnphy_tx_gain_tbl_entry* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.lcnphy_tx_gain_tbl_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phytbl_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store %struct.lcnphy_tx_gain_tbl_entry* %1, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @CHSPEC_IS5G(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 112, i32* %8, align 4
  br label %17

16:                                               ; preds = %2
  store i32 112, i32* %8, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BFL_FEM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 16, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %29 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 2
  store i32* %7, i32** %32, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %92, %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %95

36:                                               ; preds = %33
  %37 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 24
  %45 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %45, i64 %47
  %49 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %44, %51
  %53 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %53, i64 %55
  %57 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = or i32 %52, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i64, i64* @LCNPHY_TX_PWR_CTRL_GAIN_OFFSET, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 3
  store i64 %66, i64* %67, align 8
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %68, %struct.phytbl_info* %6)
  %70 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %70, i64 %72
  %74 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 28
  %77 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %77, i64 %79
  %81 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 20
  %84 = or i32 %76, %83
  store i32 %84, i32* %7, align 4
  %85 = load i64, i64* @LCNPHY_TX_PWR_CTRL_IQ_OFFSET, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 3
  store i64 %88, i64* %89, align 8
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %90, %struct.phytbl_info* %6)
  br label %92

92:                                               ; preds = %36
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %33

95:                                               ; preds = %33
  ret void
}

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
