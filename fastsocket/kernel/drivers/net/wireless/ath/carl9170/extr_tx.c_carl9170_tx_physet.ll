; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_physet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_physet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@AR9170_TX_PHY_BW_40MHZ = common dso_local global i32 0, align 4
@AR9170_TX_PHY_BW_S = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i32 0, align 4
@AR9170_TX_PHY_BW_40MHZ_DUP = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@AR9170_TX_PHY_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@AR9170_TX_PHY_MCS = common dso_local global i32 0, align 4
@AR9170_TX_PHY_TX_HEAVY_CLIP_S = common dso_local global i32 0, align 4
@AR9170_TX_PHY_MOD_HT = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR9170_TX_PHY_RATE_CCK_11M = common dso_local global i32 0, align 4
@AR9170_TX_PHY_MOD_CCK = common dso_local global i32 0, align 4
@AR9170_TX_PHY_MOD_OFDM = common dso_local global i32 0, align 4
@AR9170_TX_PHY_TX_PWR = common dso_local global i32 0, align 4
@AR9170_TX_PHY_TXCHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*)* @carl9170_tx_physet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_tx_physet(%struct.ar9170* %0, %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_rate* %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %5, align 8
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 @cpu_to_le32(i32 0)
  store i32 %11, i32* %10, align 4
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @AR9170_TX_PHY_BW_40MHZ, align 4
  %20 = load i32, i32* @AR9170_TX_PHY_BW_S, align 4
  %21 = shl i32 %19, %20
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %18, %3
  %26 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_TX_RC_DUP_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @AR9170_TX_PHY_BW_40MHZ_DUP, align 4
  %34 = load i32, i32* @AR9170_TX_PHY_BW_S, align 4
  %35 = shl i32 %33, %34
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @AR9170_TX_PHY_SHORT_GI, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load i32, i32* @AR9170_TX_PHY_MCS, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SET_VAL(i32 %59, i32 %60, i32 %63)
  %65 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 7
  %69 = load i32, i32* @AR9170_TX_PHY_TX_HEAVY_CLIP_S, align 4
  %70 = shl i32 %68, %69
  %71 = call i32 @cpu_to_le32(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @AR9170_TX_PHY_MOD_HT, align 4
  %75 = call i32 @cpu_to_le32(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %107

78:                                               ; preds = %51
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AR9170_TX_PHY_RATE_CCK_11M, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* @AR9170_TX_PHY_MOD_CCK, align 4
  %92 = call i32 @cpu_to_le32(i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %100

95:                                               ; preds = %84
  %96 = load i32, i32* @AR9170_TX_PHY_MOD_OFDM, align 4
  %97 = call i32 @cpu_to_le32(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %95, %90
  br label %106

101:                                              ; preds = %78
  %102 = load i32, i32* @AR9170_TX_PHY_MOD_OFDM, align 4
  %103 = call i32 @cpu_to_le32(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %101, %100
  br label %107

107:                                              ; preds = %106, %58
  %108 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %109 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %110 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %111 = call i32 @carl9170_tx_rate_tpc_chains(%struct.ar9170* %108, %struct.ieee80211_tx_info* %109, %struct.ieee80211_tx_rate* %110, i32* %9, i32* %7, i32* %8)
  %112 = load i32, i32* @AR9170_TX_PHY_MCS, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @SET_CONSTVAL(i32 %112, i32 %113)
  %115 = call i32 @cpu_to_le32(i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @AR9170_TX_PHY_TX_PWR, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @SET_CONSTVAL(i32 %118, i32 %119)
  %121 = call i32 @cpu_to_le32(i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* @AR9170_TX_PHY_TXCHAIN, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @SET_CONSTVAL(i32 %124, i32 %125)
  %127 = call i32 @cpu_to_le32(i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  ret i32 %130
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @SET_VAL(i32, i32, i32) #1

declare dso_local i32 @carl9170_tx_rate_tpc_chains(%struct.ar9170*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32*, i32*, i32*) #1

declare dso_local i32 @SET_CONSTVAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
