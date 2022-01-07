; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_BSSinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_BSSinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i64, i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64* }

@MA_WINDOW_SZ = common dso_local global i64 0, align 8
@PHY_NOISE_FIXED_VAL_LCNPHY = common dso_local global i64 0, align 8
@PHY_NOISE_WINDOW_SZ = common dso_local global i64 0, align 8
@WL_ANT_IDX_1 = common dso_local global i64 0, align 8
@WL_ANT_RX_MAX = common dso_local global i64 0, align 8
@PHY_NOISE_FIXED_VAL_NPHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_BSSinit(%struct.brcms_phy_pub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy_pub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %11 = bitcast %struct.brcms_phy_pub* %10 to %struct.brcms_phy*
  store %struct.brcms_phy* %11, %struct.brcms_phy** %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %27, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @MA_WINDOW_SZ, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 255
  %19 = sext i32 %18 to i64
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %19, i64* %26, align 8
  br label %27

27:                                               ; preds = %16
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %32 = call i64 @ISLCNPHY(%struct.brcms_phy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @MA_WINDOW_SZ, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i64, i64* @PHY_NOISE_FIXED_VAL_LCNPHY, align 8
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %40, i64* %47, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %35

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %81, %52
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @PHY_NOISE_WINDOW_SZ, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i64, i64* @WL_ANT_IDX_1, align 8
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %77, %61
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @WL_ANT_RX_MAX, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* @PHY_NOISE_FIXED_VAL_NPHY, align 4
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i32*, i32** %71, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %68, i32* %76, align 4
  br label %77

77:                                               ; preds = %67
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %63

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %8, align 8
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  ret void
}

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
