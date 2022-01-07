; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_tx_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ath_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_rate_priv = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_TX_FILTERED = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i8*, %struct.sk_buff*)* @ath_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_sta* %2, i8* %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ath_softc*, align 8
  %12 = alloca %struct.ath_rate_priv*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.ath_softc*
  store %struct.ath_softc* %19, %struct.ath_softc** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.ath_rate_priv*
  store %struct.ath_rate_priv* %21, %struct.ath_rate_priv** %12, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %13, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %27, %struct.ieee80211_hdr** %14, align 8
  %28 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @ieee80211_is_data(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %5
  br label %106

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %106

53:                                               ; preds = %45, %38
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_TX_STAT_TX_FILTERED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %106

61:                                               ; preds = %53
  %62 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %63 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %12, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = call i32 @ath_rc_tx_status(%struct.ath_softc* %62, %struct.ath_rate_priv* %63, %struct.sk_buff* %64)
  %66 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %67 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i64 @conf_is_ht(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %61
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ETH_P_PAE, align 4
  %77 = call i64 @cpu_to_be16(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %106, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %15, align 4
  %81 = call i64 @ieee80211_is_data_qos(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %84)
  %86 = load i64, i64* @IEEE80211_AC_VO, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %90 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %89)
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 15
  store i32 %94, i32* %17, align 4
  %95 = load %struct.ath_softc*, %struct.ath_softc** %11, align 8
  %96 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i64 @ath_tx_aggr_check(%struct.ath_softc* %95, %struct.ieee80211_sta* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %100, %88
  br label %105

105:                                              ; preds = %104, %83, %79
  br label %106

106:                                              ; preds = %37, %52, %60, %105, %72, %61
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ath_rc_tx_status(%struct.ath_softc*, %struct.ath_rate_priv*, %struct.sk_buff*) #1

declare dso_local i64 @conf_is_ht(i32*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @ath_tx_aggr_check(%struct.ath_softc*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @ieee80211_start_tx_ba_session(%struct.ieee80211_sta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
