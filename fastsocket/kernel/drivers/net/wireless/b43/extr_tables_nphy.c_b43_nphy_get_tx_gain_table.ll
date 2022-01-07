; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_get_tx_gain_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_nphy.c_b43_nphy_get_tx_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_8__, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@b43_ntab_tx_gain_rev0_1_2 = common dso_local global i32* null, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@b43_ntab_tx_gain_rev3_5ghz = common dso_local global i32* null, align 8
@b43_ntab_tx_gain_rev4_5ghz = common dso_local global i32* null, align 8
@b43_ntab_tx_gain_rev5plus_5ghz = common dso_local global i32* null, align 8
@b43_ntab_tx_gain_rev3plus_2ghz = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @b43_nphy_get_tx_gain_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_sprom*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @b43_current_band(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %13, align 8
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %5, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32*, i32** @b43_ntab_tx_gain_rev0_1_2, align 8
  store i32* %21, i32** %2, align 8
  br label %102

22:                                               ; preds = %1
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %30
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = call i32* @b43_nphy_get_ipa_gain_table(%struct.b43_wldev* %47)
  store i32* %48, i32** %2, align 8
  br label %102

49:                                               ; preds = %42, %34
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %51 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @b43_current_band(i32 %52)
  %54 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %49
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32*, i32** @b43_ntab_tx_gain_rev3_5ghz, align 8
  store i32* %63, i32** %2, align 8
  br label %102

64:                                               ; preds = %56
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %66 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %72 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32*, i32** @b43_ntab_tx_gain_rev4_5ghz, align 8
  br label %81

79:                                               ; preds = %70
  %80 = load i32*, i32** @b43_ntab_tx_gain_rev4_5ghz, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32* [ %78, %77 ], [ %80, %79 ]
  store i32* %82, i32** %2, align 8
  br label %102

83:                                               ; preds = %64
  %84 = load i32*, i32** @b43_ntab_tx_gain_rev5plus_5ghz, align 8
  store i32* %84, i32** %2, align 8
  br label %102

85:                                               ; preds = %49
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %87 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 5
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %93 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32*, i32** @b43_ntab_tx_gain_rev3plus_2ghz, align 8
  store i32* %99, i32** %2, align 8
  br label %102

100:                                              ; preds = %91, %85
  %101 = load i32*, i32** @b43_ntab_tx_gain_rev3plus_2ghz, align 8
  store i32* %101, i32** %2, align 8
  br label %102

102:                                              ; preds = %100, %98, %83, %81, %62, %46, %20
  %103 = load i32*, i32** %2, align 8
  ret i32* %103
}

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32* @b43_nphy_get_ipa_gain_table(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
