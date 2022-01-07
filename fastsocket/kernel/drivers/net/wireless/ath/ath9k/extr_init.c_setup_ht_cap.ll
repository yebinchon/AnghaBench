; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_setup_ht_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_init.c_setup_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.ath_common = type { i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_LDPC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_8 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TX streams %d, RX streams: %d\0A\00", align 1
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_sta_ht_cap*)* @setup_ht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ht_cap(%struct.ath_softc* %0, %struct.ieee80211_sta_ht_cap* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %4, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  store %struct.ath_hw* %13, %struct.ath_hw** %5, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %6, align 8
  %16 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %19 = load i32, i32* @IEEE80211_HT_CAP_SM_PS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = load %struct.ath_hw*, %struct.ath_hw** %28, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATH9K_HW_CAP_LDPC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %38 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %2
  %43 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 0
  %45 = load %struct.ath_hw*, %struct.ath_hw** %44, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATH9K_HW_CAP_SGI_20, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %54 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %42
  %59 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %60 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_8, align 4
  %63 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %66 = call i64 @AR_SREV_9330(%struct.ath_hw* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %58
  %69 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %70 = call i64 @AR_SREV_9485(%struct.ath_hw* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %74 = call i64 @AR_SREV_9565(%struct.ath_hw* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68, %58
  store i32 1, i32* %10, align 4
  br label %90

77:                                               ; preds = %72
  %78 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %79 = call i64 @AR_SREV_9462(%struct.ath_hw* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 2, i32* %10, align 4
  br label %89

82:                                               ; preds = %77
  %83 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %84 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 3, i32* %10, align 4
  br label %88

87:                                               ; preds = %82
  store i32 2, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %89, %76
  %91 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %92 = call i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = icmp sge i32 %95, 2
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %99 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %94
  %104 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %105 = shl i32 1, %104
  %106 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %90
  %111 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %111, i32 0, i32 2
  %113 = call i32 @memset(%struct.TYPE_4__* %112, i32 0, i32 16)
  %114 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %115 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @ath9k_cmn_count_streams(i32 %116, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %120 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @ath9k_cmn_count_streams(i32 %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %125 = load i32, i32* @CONFIG, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @ath_dbg(%struct.ath_common* %124, i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %110
  %133 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %134 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %144 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %132, %110
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %161, %148
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 255, i32* %160, align 4
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %149

164:                                              ; preds = %149
  %165 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %166 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %167 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 8
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9330(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ath9k_cmn_count_streams(i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
