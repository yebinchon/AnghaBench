; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sta = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.ath_softc = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath_rate_priv = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@ATH_RATE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No rate table chosen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*)* @ath_rate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rate_init(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca %struct.ath_rate_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.ath_softc*
  store %struct.ath_softc* %15, %struct.ath_softc** %9, align 8
  %16 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ath_common* @ath9k_hw_common(i32 %18)
  store %struct.ath_common* %19, %struct.ath_common** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.ath_rate_priv*
  store %struct.ath_rate_priv* %21, %struct.ath_rate_priv** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %62, %4
  %23 = load i32, i32* %12, align 4
  %24 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %22
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %28
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 2
  %51 = sdiv i32 %50, 10
  %52 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %53 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %51, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %41, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %22

65:                                               ; preds = %22
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %68 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %119

75:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %111, %75
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 77
  br i1 %78, label %79, label %114

79:                                               ; preds = %76
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sdiv i32 %85, 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = srem i32 %90, 8
  %92 = shl i32 1, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %79
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %98 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %96, i32* %104, align 4
  br label %105

105:                                              ; preds = %95, %79
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @ATH_RATE_MAX, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %114

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %76

114:                                              ; preds = %109, %76
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %117 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %65
  %120 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %121 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ath_choose_rate_table(%struct.ath_softc* %120, i64 %123, i32 %127)
  %129 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %130 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %132 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %119
  %136 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %137 = call i32 @ath_err(%struct.ath_common* %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %147

138:                                              ; preds = %119
  %139 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %140 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %141 = call i32 @ath_rc_build_ht_caps(%struct.ath_softc* %139, %struct.ieee80211_sta* %140)
  %142 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %11, align 8
  %143 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = call i32 @ath_rc_init(%struct.ath_softc* %144, i8* %145)
  br label %147

147:                                              ; preds = %138, %135
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ath_choose_rate_table(%struct.ath_softc*, i64, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath_rc_build_ht_caps(%struct.ath_softc*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath_rc_init(%struct.ath_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
