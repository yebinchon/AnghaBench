; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_internal_cal_txgain_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_internal_cal_txgain_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32*, i32* }

@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_internal_cal_txgain_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_internal_cal_txgain_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca [2 x i32], align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %17, i32* %21, align 4
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %22, i32 1, i32 %27, i32 1)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy* %29, i32 2, i32 %34, i32 1)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %39 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %36, i32 %37, i32 2, i32 272, i32 16, i32* %38)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @CHSPEC_IS2G(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %1
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 61440
  %49 = or i32 %48, 3904
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 61440
  %54 = or i32 %53, 3904
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  br label %67

56:                                               ; preds = %1
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 61440
  %60 = or i32 %59, 3936
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 61440
  %65 = or i32 %64, 3936
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %45
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %71 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %68, i32 %69, i32 2, i32 272, i32 16, i32* %70)
  ret void
}

declare dso_local i32 @wlc_phy_txpwr_index_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
