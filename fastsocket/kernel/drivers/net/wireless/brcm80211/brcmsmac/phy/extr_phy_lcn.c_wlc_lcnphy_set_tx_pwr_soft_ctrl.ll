; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_pwr_soft_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tx_pwr_soft_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.phytbl_info = type { i32, i32, i32*, i32, i32 }

@__const.wlc_lcnphy_set_tx_pwr_soft_ctrl.cck_offset = private unnamed_addr constant [4 x i32] [i32 22, i32 22, i32 22, i32 22], align 16
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_RATE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_set_tx_pwr_soft_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_tx_pwr_soft_ctrl(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.phytbl_info, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.wlc_lcnphy_set_tx_pwr_soft_ctrl.cck_offset to i8*), i64 16, i1 false)
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = call i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %81

16:                                               ; preds = %2
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = call i32 @mod_phy_reg(%struct.brcms_phy* %17, i32 1188, i32 16384, i32 16384)
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i32 @mod_phy_reg(%struct.brcms_phy* %19, i32 1188, i32 16384, i32 0)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = call i32 @or_phy_reg(%struct.brcms_phy* %21, i32 1754, i32 64)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %33, %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, %27
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %38 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 0
  store i32 32, i32* %39, align 8
  %40 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 1
  store i32 4, i32* %40, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %42 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 2
  store i32* %41, i32** %42, align 8
  %43 = load i32, i32* @LCNPHY_TX_PWR_CTRL_RATE_OFFSET, align 4
  %44 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %46 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %45, %struct.phytbl_info* %10)
  store i32 0, i32* %6, align 4
  %47 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 2
  store i32* %6, i32** %48, align 8
  store i32 836, i32* %8, align 4
  br label %49

49:                                               ; preds = %57, %36
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 862
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %10, i32 0, i32 3
  store i32 %53, i32* %54, align 8
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %55, %struct.phytbl_info* %10)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %49

60:                                               ; preds = %49
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = call i32 @mod_phy_reg(%struct.brcms_phy* %61, i32 1188, i32 32768, i32 32768)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = call i32 @mod_phy_reg(%struct.brcms_phy* %63, i32 1188, i32 16384, i32 16384)
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = call i32 @mod_phy_reg(%struct.brcms_phy* %65, i32 1188, i32 8192, i32 8192)
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %68 = call i32 @mod_phy_reg(%struct.brcms_phy* %67, i32 1200, i32 128, i32 0)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %70 = call i32 @mod_phy_reg(%struct.brcms_phy* %69, i32 1083, i32 64, i32 0)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = call i32 @mod_phy_reg(%struct.brcms_phy* %71, i32 1193, i32 32768, i32 32768)
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %73, 2
  store i32 %74, i32* %9, align 4
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 0
  %78 = call i32 @mod_phy_reg(%struct.brcms_phy* %75, i32 1193, i32 511, i32 %77)
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %80 = call i32 @mod_phy_reg(%struct.brcms_phy* %79, i32 1699, i32 16, i32 0)
  br label %81

81:                                               ; preds = %60, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy*) #2

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #2

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #2

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
