; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_init_ht_hw_capab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_init_ht_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }

@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@MAX_BIT_RATE_20_MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@MAX_BIT_RATE_40_MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@CFG_HT_RX_AMPDU_FACTOR_DEF = common dso_local global i32 0, align 4
@CFG_HT_MPDU_DENSITY_DEF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_RX_HIGHEST_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_sta_ht_cap*, i32)* @il_init_ht_hw_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_init_ht_hw_capab(%struct.il_priv* %0, %struct.ieee80211_sta_ht_cap* %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %18, i32 0, i32 4
  store i32 0, i32* %19, align 8
  %20 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %20, i32 0, i32 1
  %22 = call i32 @memset(%struct.TYPE_8__* %21, i32 0, i32 16)
  %23 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %26 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @MAX_BIT_RATE_20_MHZ, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %3
  %40 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %41 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %46 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* @MAX_BIT_RATE_40_MHZ, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %39, %3
  %57 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %67 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %56
  %72 = load i32, i32* @CFG_HT_RX_AMPDU_FACTOR_DEF, align 4
  %73 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @CFG_HT_MPDU_DENSITY_DEF, align 4
  %76 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 255, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 255, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %71
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %92, 3
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 255, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @IEEE80211_HT_MCS_RX_HIGHEST_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  %108 = call i32 @WARN_ON(i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @cpu_to_le16(i32 %109)
  %111 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %115 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %100
  %122 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %123 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %5, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %121, %100
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
