; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_int_pa_set_tx_dig_filters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_int_pa_set_tx_dig_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@b43_nphy_int_pa_set_tx_dig_filters.offset = internal constant [3 x i32] [i32 390, i32 405, i32 709], align 4
@tbl_tx_filter_coef_rev4 = common dso_local global i32** null, align 8
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_int_pa_set_tx_dig_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_int_pa_set_tx_dig_filters(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %38

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %31, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 15
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_nphy_int_pa_set_tx_dig_filters.offset, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i32 @B43_PHY_N(i32 %19)
  %21 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @b43_phy_write(%struct.b43_wldev* %13, i32 %20, i32 %29)
  br label %31

31:                                               ; preds = %12
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %9

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %5

38:                                               ; preds = %5
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %62, %44
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 15
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @b43_nphy_int_pa_set_tx_dig_filters.offset, i64 0, i64 0), align 4
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @B43_PHY_N(i32 %52)
  %54 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %45

65:                                               ; preds = %45
  br label %96

66:                                               ; preds = %38
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @b43_current_band(i32 %69)
  %71 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 15
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @b43_nphy_int_pa_set_tx_dig_filters.offset, i64 0, i64 0), align 4
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i32 @B43_PHY_N(i32 %81)
  %83 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 5
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @b43_phy_write(%struct.b43_wldev* %78, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %74

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %94, %66
  br label %96

96:                                               ; preds = %95, %65
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 14
  br i1 %101, label %102, label %124

102:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 15
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %108 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @b43_nphy_int_pa_set_tx_dig_filters.offset, i64 0, i64 0), align 4
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @B43_PHY_N(i32 %110)
  %112 = load i32**, i32*** @tbl_tx_filter_coef_rev4, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 6
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @b43_phy_write(%struct.b43_wldev* %107, i32 %111, i32 %118)
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %103

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123, %96
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_PHY_N(i32) #1

declare dso_local i64 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
