; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_stf_ssmode_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_stf_ssmode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i64* }

@TXP_FIRST_MCS_40_SISO = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_SISO = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_40_CDD = common dso_local global i64 0, align 8
@TXP_FIRST_MCS_20_CDD = common dso_local global i64 0, align 8
@PHY_TXC1_MODE_SISO = common dso_local global i32 0, align 4
@PHY_TXC1_MODE_CDD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_stf_ssmode_get(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_phy_pub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %10 = bitcast %struct.brcms_phy_pub* %9 to %struct.brcms_phy*
  store %struct.brcms_phy* %10, %struct.brcms_phy** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @CHSPEC_IS40(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @TXP_FIRST_MCS_40_SISO, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @TXP_FIRST_MCS_20_SISO, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @CHSPEC_IS40(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @TXP_FIRST_MCS_40_CDD, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @TXP_FIRST_MCS_20_CDD, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %8, align 8
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 12
  %42 = icmp sgt i64 %34, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* @PHY_TXC1_MODE_SISO, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %27
  %46 = load i32, i32* @PHY_TXC1_MODE_CDD, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @CHSPEC_IS40(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
