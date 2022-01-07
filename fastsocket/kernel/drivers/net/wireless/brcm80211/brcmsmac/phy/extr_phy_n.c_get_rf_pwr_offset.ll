; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_get_rf_pwr_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_get_rf_pwr_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@nphy_papd_padgain_dlt_2g_2057rev3n4 = common dso_local global i64* null, align 8
@nphy_papd_padgain_dlt_2g_2057rev5 = common dso_local global i64* null, align 8
@nphy_papd_padgain_dlt_2g_2057rev7 = common dso_local global i64* null, align 8
@nphy_papd_pgagain_dlt_5g_2057 = common dso_local global i64* null, align 8
@nphy_papd_pgagain_dlt_5g_2057rev7 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcms_phy*, i64, i64)* @get_rf_pwr_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_rf_pwr_offset(%struct.brcms_phy* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @CHSPEC_IS2G(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %3
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %19, %13
  %32 = load i64*, i64** @nphy_papd_padgain_dlt_2g_2057rev3n4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  br label %66

36:                                               ; preds = %25
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i64*, i64** @nphy_papd_padgain_dlt_2g_2057rev5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %65

47:                                               ; preds = %36
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 7
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %64

59:                                               ; preds = %53, %47
  %60 = load i64*, i64** @nphy_papd_padgain_dlt_2g_2057rev7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %59, %53
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65, %31
  br label %109

67:                                               ; preds = %3
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %81 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 6
  br i1 %84, label %85, label %90

85:                                               ; preds = %79, %73, %67
  %86 = load i64*, i64** @nphy_papd_pgagain_dlt_5g_2057, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %7, align 8
  br label %108

90:                                               ; preds = %79
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %92 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 7
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %98 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %107

102:                                              ; preds = %96, %90
  %103 = load i64*, i64** @nphy_papd_pgagain_dlt_5g_2057rev7, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %102, %96
  br label %108

108:                                              ; preds = %107, %85
  br label %109

109:                                              ; preds = %108, %66
  %110 = load i64, i64* %7, align 8
  ret i64 %110
}

declare dso_local i64 @CHSPEC_IS2G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
