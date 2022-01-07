; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_sromlimit_max_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_txpower_sromlimit_max_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32 }

@TXP_NUM_RATES = common dso_local global i64 0, align 8
@TXP_LAST_SISO_MCS_20 = common dso_local global i64 0, align 8
@TXP_LAST_OFDM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_txpower_sromlimit_max_get(%struct.brcms_phy_pub* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.brcms_phy_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.brcms_phy*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %17 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %5, align 8
  %18 = bitcast %struct.brcms_phy_pub* %17 to %struct.brcms_phy*
  store %struct.brcms_phy* %18, %struct.brcms_phy** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 255, i64* %11, align 8
  store i64 0, i64* %16, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %20 = call i64 @ISNPHY(%struct.brcms_phy* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @TXP_NUM_RATES, align 8
  br label %36

24:                                               ; preds = %4
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %26 = call i64 @ISLCNPHY(%struct.brcms_phy* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @TXP_LAST_SISO_MCS_20, align 8
  %30 = add nsw i64 %29, 1
  br label %34

31:                                               ; preds = %24
  %32 = load i64, i64* @TXP_LAST_OFDM, align 8
  %33 = add nsw i64 %32, 1
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i64 [ %30, %28 ], [ %33, %31 ]
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i64 [ %23, %22 ], [ %35, %34 ]
  store i64 %37, i64* %12, align 8
  store i64 0, i64* %15, align 8
  br label %38

38:                                               ; preds = %71, %36
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @wlc_phy_txpower_sromlimit(%struct.brcms_phy_pub* %43, i32 %44, i64* %14, i64* %13, i64 %45)
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %16, align 8
  %53 = sub nsw i64 %51, %52
  br label %55

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i64 [ %53, %50 ], [ 0, %54 ]
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp sgt i64 %57, 6
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %13, align 8
  %61 = sub nsw i64 %60, 6
  br label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i64 [ %61, %59 ], [ 0, %62 ]
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @max(i64 %65, i64 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @min(i64 %68, i64 %69)
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %15, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %15, align 8
  br label %38

74:                                               ; preds = %38
  %75 = load i64, i64* %10, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64*, i64** %8, align 8
  store i64 %77, i64* %78, align 8
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpower_sromlimit(%struct.brcms_phy_pub*, i32, i64*, i64*, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
