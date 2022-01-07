; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_tssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_tssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64* }

@TXP_FIRST_CCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_lcnphy_get_tssi(%struct.brcms_phy* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %10 = call i32 @read_phy_reg(%struct.brcms_phy* %9, i32 1195)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %12 = call i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 32768
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %20 = call i32 @read_phy_reg(%struct.brcms_phy* %19, i32 1195)
  %21 = and i32 %20, 511
  %22 = ashr i32 %21, 0
  %23 = ashr i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %27 = call i64 @wlc_phy_tpc_isenabled_lcnphy(%struct.brcms_phy* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @TXP_FIRST_CCK, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  br label %37

36:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  br label %46

43:                                               ; preds = %14, %3
  %44 = load i64*, i64** %6, align 8
  store i64 0, i64* %44, align 8
  %45 = load i64*, i64** %5, align 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_phy_tpc_isenabled_lcnphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
