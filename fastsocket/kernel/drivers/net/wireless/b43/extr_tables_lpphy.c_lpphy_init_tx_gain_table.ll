; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_init_tx_gain_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_lpphy.c_lpphy_init_tx_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32 }

@B43_BFH_NOPA = common dso_local global i32 0, align 4
@B43_BFL_HGPA = common dso_local global i32 0, align 4
@lpphy_rev0_nopa_tx_gain_table = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@lpphy_rev0_2ghz_tx_gain_table = common dso_local global i32 0, align 4
@lpphy_rev0_5ghz_tx_gain_table = common dso_local global i32 0, align 4
@lpphy_rev1_nopa_tx_gain_table = common dso_local global i32 0, align 4
@lpphy_rev1_2ghz_tx_gain_table = common dso_local global i32 0, align 4
@lpphy_rev1_5ghz_tx_gain_table = common dso_local global i32 0, align 4
@lpphy_rev2_nopa_tx_gain_table = common dso_local global i32 0, align 4
@lpphy_rev2_2ghz_tx_gain_table = common dso_local global i32 0, align 4
@lpphy_rev2_5ghz_tx_gain_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpphy_init_tx_gain_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.ssb_sprom*, %struct.ssb_sprom** %7, align 8
  store %struct.ssb_sprom* %8, %struct.ssb_sprom** %3, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %83 [
    i32 0, label %13
    i32 1, label %48
  ]

13:                                               ; preds = %1
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %15 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @B43_BFH_NOPA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %22 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @B43_BFL_HGPA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20, %13
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @lpphy_rev0_nopa_tx_gain_table, align 4
  %30 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %28, i32 0, i32 128, i32 %29)
  br label %47

31:                                               ; preds = %20
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @b43_current_band(i32 %34)
  %36 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @lpphy_rev0_2ghz_tx_gain_table, align 4
  %41 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %39, i32 0, i32 128, i32 %40)
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %44 = load i32, i32* @lpphy_rev0_5ghz_tx_gain_table, align 4
  %45 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %43, i32 0, i32 128, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %27
  br label %111

48:                                               ; preds = %1
  %49 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %50 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @B43_BFH_NOPA, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %57 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @B43_BFL_HGPA, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55, %48
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %64 = load i32, i32* @lpphy_rev1_nopa_tx_gain_table, align 4
  %65 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %63, i32 0, i32 128, i32 %64)
  br label %82

66:                                               ; preds = %55
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @b43_current_band(i32 %69)
  %71 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %75 = load i32, i32* @lpphy_rev1_2ghz_tx_gain_table, align 4
  %76 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %74, i32 0, i32 128, i32 %75)
  br label %81

77:                                               ; preds = %66
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* @lpphy_rev1_5ghz_tx_gain_table, align 4
  %80 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %78, i32 0, i32 128, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %62
  br label %111

83:                                               ; preds = %1
  %84 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %85 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @B43_BFH_NOPA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = load i32, i32* @lpphy_rev2_nopa_tx_gain_table, align 4
  %93 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %91, i32 0, i32 128, i32 %92)
  br label %110

94:                                               ; preds = %83
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @b43_current_band(i32 %97)
  %99 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @lpphy_rev2_2ghz_tx_gain_table, align 4
  %104 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %102, i32 0, i32 128, i32 %103)
  br label %109

105:                                              ; preds = %94
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* @lpphy_rev2_5ghz_tx_gain_table, align 4
  %108 = call i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev* %106, i32 0, i32 128, i32 %107)
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %82, %47
  ret void
}

declare dso_local i32 @lpphy_write_gain_table_bulk(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
