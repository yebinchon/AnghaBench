; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_rfpower.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_rfpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.phytbl_info = type { i32, i32, i32*, i64, i32 }

@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_IQ_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_GAIN_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_PWR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_load_rfpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_load_rfpower(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.phytbl_info, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 1, i32* %8, align 4
  %16 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %17 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 0
  store i32 32, i32* %18, align 8
  %19 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 1
  store i32 1, i32* %19, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %107, %1
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %110

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32* %5, i32** %24, align 8
  %25 = load i64, i64* @LCNPHY_TX_PWR_CTRL_IQ_OFFSET, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i64 %28, i64* %29, align 8
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %30, %struct.phytbl_info* %3)
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 20
  store i32 %33, i32* %5, align 4
  %34 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32* %6, i32** %34, align 8
  %35 = load i64, i64* @LCNPHY_TX_PWR_CTRL_GAIN_OFFSET, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i64 %38, i64* %39, align 8
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %40, %struct.phytbl_info* %3)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @qm_log10(i32 %42, i32 0, i64* %10, i64* %13)
  %44 = call i32 @qm_log10(i32 64, i32 0, i64* %11, i64* %14)
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %23
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = sub nsw i64 %50, %51
  %53 = call i64 @qm_shr16(i64 %49, i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %13, align 8
  store i64 %54, i64* %12, align 8
  br label %62

55:                                               ; preds = %23
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = sub nsw i64 %57, %58
  %60 = call i64 @qm_shr16(i64 %56, i64 %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %14, align 8
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %55, %48
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @qm_sub16(i64 %63, i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp sge i64 %66, 4
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i64, i64* %12, align 8
  %70 = sub nsw i64 %69, 4
  store i64 %70, i64* %15, align 8
  br label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %12, align 8
  %73 = sub nsw i64 4, %72
  store i64 %73, i64* %15, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* %15, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %75, %77
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %9, align 8
  %81 = mul nsw i64 5, %80
  %82 = add nsw i64 %79, %81
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %15, align 8
  %86 = add nsw i64 %84, %85
  %87 = sub nsw i64 %86, 3
  %88 = trunc i64 %87 to i32
  %89 = shl i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %82, %90
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %15, align 8
  %95 = add nsw i64 %93, %94
  %96 = sub nsw i64 %95, 2
  %97 = ashr i64 %91, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  %99 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 2
  store i32* %4, i32** %99, align 8
  %100 = load i64, i64* @LCNPHY_TX_PWR_CTRL_PWR_OFFSET, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %3, i32 0, i32 3
  store i64 %103, i64* %104, align 8
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %106 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %105, %struct.phytbl_info* %3)
  br label %107

107:                                              ; preds = %74
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %20

110:                                              ; preds = %20
  ret void
}

declare dso_local i32 @wlc_lcnphy_read_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

declare dso_local i32 @qm_log10(i32, i32, i64*, i64*) #1

declare dso_local i64 @qm_shr16(i64, i64) #1

declare dso_local i64 @qm_sub16(i64, i64) #1

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
