; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-rs.c_il3945_rs_rate_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-rs.c_il3945_rs_rate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_8__, %struct.ieee80211_hw* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_hw = type { %struct.TYPE_9__*, %struct.ieee80211_conf }
%struct.TYPE_9__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i64 }
%struct.ieee80211_conf = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.ieee80211_sta = type { i32*, i64 }
%struct.il3945_sta_priv = type { %struct.il3945_rs_sta }
%struct.il3945_rs_sta = type { i32, i32*, %struct.TYPE_12__, i64, i32, i8*, i8*, i32, i32, %struct.il_priv* }
%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@RATE_INVALID = common dso_local global i32 0, align 4
@il3945_expected_tpt_b = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@RATE_FLUSH = common dso_local global i32 0, align 4
@il3945_bg_rate_scale_flush = common dso_local global i32 0, align 4
@RATE_COUNT_3945 = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IL_FIRST_OFDM_RATE = common dso_local global i32 0, align 4
@IL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_rs_rate_init(%struct.il_priv* %0, %struct.ieee80211_sta* %1, i64 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_conf*, align 8
  %9 = alloca %struct.il3945_sta_priv*, align 8
  %10 = alloca %struct.il3945_rs_sta*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 3
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %7, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %17, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 1
  store %struct.ieee80211_conf* %19, %struct.ieee80211_conf** %8, align 8
  %20 = call i32 @D_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %151

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.il3945_sta_priv*
  store %struct.il3945_sta_priv* %32, %struct.il3945_sta_priv** %9, align 8
  %33 = load %struct.il3945_sta_priv*, %struct.il3945_sta_priv** %9, align 8
  %34 = getelementptr inbounds %struct.il3945_sta_priv, %struct.il3945_sta_priv* %33, i32 0, i32 0
  store %struct.il3945_rs_sta* %34, %struct.il3945_rs_sta** %10, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %38, align 8
  %40 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %39, i64 %45
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %46, align 8
  store %struct.ieee80211_supported_band* %47, %struct.ieee80211_supported_band** %11, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %49 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %50 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %49, i32 0, i32 9
  store %struct.il_priv* %48, %struct.il_priv** %50, align 8
  %51 = load i32, i32* @RATE_INVALID, align 4
  %52 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %53 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @il3945_expected_tpt_b, align 4
  %55 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %56 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** @jiffies, align 8
  %58 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %59 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @jiffies, align 8
  %61 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %62 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @RATE_FLUSH, align 4
  %64 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %65 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %67 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %69 = ptrtoint %struct.il3945_rs_sta* %68 to i64
  %70 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %71 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = load i32, i32* @il3945_bg_rate_scale_flush, align 4
  %74 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %75 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %89, %28
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @RATE_COUNT_3945, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %83 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @il3945_clear_win(i32* %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %77

92:                                               ; preds = %77
  %93 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %94 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %118, %92
  %98 = load i32, i32* %12, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %105 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 1, %109
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %100
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %116 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %121

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %12, align 4
  br label %97

121:                                              ; preds = %113, %97
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %126 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %131 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %134 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %121
  %139 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %140 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %10, align 8
  %141 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* @IL_FIRST_OFDM_RATE, align 4
  %145 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %146 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = shl i32 %148, %144
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %138, %121
  br label %151

151:                                              ; preds = %150, %27
  %152 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %155 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %153
  store i32 %161, i32* %159, align 4
  %162 = call i32 @D_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @il3945_clear_win(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
