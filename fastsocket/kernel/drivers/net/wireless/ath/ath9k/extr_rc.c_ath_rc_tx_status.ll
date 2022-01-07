; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ath_rate_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@WLAN_RC_40_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rate_priv*, %struct.sk_buff*)* @ath_rc_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rc_tx_status(%struct.ath_softc* %0, %struct.ath_rate_priv* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_rate_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_tx_rate*, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_rate_priv* %1, %struct.ath_rate_priv** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %7, align 8
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %20, align 8
  store %struct.ieee80211_tx_rate* %21, %struct.ieee80211_tx_rate** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %14, align 8
  br label %22

22:                                               ; preds = %54, %3
  %23 = load i64, i64* %14, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %23, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %22
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %34, i64 %35
  store %struct.ieee80211_tx_rate* %36, %struct.ieee80211_tx_rate** %9, align 8
  %37 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %30
  br label %57

47:                                               ; preds = %41
  %48 = load i64, i64* %14, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %14, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %14, align 8
  br label %22

57:                                               ; preds = %46, %22
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %65
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %127, %68
  %70 = load i64, i64* %14, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %130

74:                                               ; preds = %69
  %75 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %75, i64 %76
  %78 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %74
  %82 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %82, i64 %83
  %85 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %126

88:                                               ; preds = %81
  %89 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %89, i64 %90
  %92 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  %99 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %100 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @WLAN_RC_40_FLAG, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %98
  br label %167

106:                                              ; preds = %98, %88
  %107 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %108 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %108, i64 %109
  %111 = call i64 @ath_rc_get_rateindex(%struct.ath_rate_priv* %107, %struct.ieee80211_tx_rate* %110)
  store i64 %111, i64* %15, align 8
  %112 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %113 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %114 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %115 = load i64, i64* %15, align 8
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 1, i32 2
  %120 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %121 = load i64, i64* %14, align 8
  %122 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %120, i64 %121
  %123 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ath_rc_update_ht(%struct.ath_softc* %112, %struct.ath_rate_priv* %113, %struct.ieee80211_tx_info* %114, i64 %115, i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %106, %81, %74
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %14, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %14, align 8
  br label %69

130:                                              ; preds = %69
  br label %131

131:                                              ; preds = %130, %65
  %132 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %132, i64 %134
  %136 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %131
  %143 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %144 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @WLAN_RC_40_FLAG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %167

150:                                              ; preds = %142, %131
  %151 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %152 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %152, i64 %154
  %156 = call i64 @ath_rc_get_rateindex(%struct.ath_rate_priv* %151, %struct.ieee80211_tx_rate* %155)
  store i64 %156, i64* %15, align 8
  %157 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %158 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %159 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %160 = load i64, i64* %15, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @ath_rc_update_ht(%struct.ath_softc* %157, %struct.ath_rate_priv* %158, %struct.ieee80211_tx_info* %159, i64 %160, i32 %161, i32 %162)
  %164 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %5, align 8
  %165 = load i64, i64* %15, align 8
  %166 = call i32 @ath_debug_stat_rc(%struct.ath_rate_priv* %164, i64 %165)
  br label %167

167:                                              ; preds = %150, %149, %105
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ath_rc_get_rateindex(%struct.ath_rate_priv*, %struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ath_rc_update_ht(%struct.ath_softc*, %struct.ath_rate_priv*, %struct.ieee80211_tx_info*, i64, i32, i32) #1

declare dso_local i32 @ath_debug_stat_rc(%struct.ath_rate_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
