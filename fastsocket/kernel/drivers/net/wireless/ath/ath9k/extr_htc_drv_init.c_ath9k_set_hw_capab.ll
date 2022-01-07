; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_set_hw_capab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_set_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_7__**, i32* }
%struct.ath_common = type { i32 }

@IEEE80211_HW_SIGNAL_DBM = common dso_local global i32 0, align 4
@IEEE80211_HW_AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_HW_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@IEEE80211_HW_HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_HW_RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@IEEE80211_HW_SUPPORTS_PS = common dso_local global i32 0, align 4
@IEEE80211_HW_PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@IEEE80211_HW_REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@if_comb = common dso_local global i32 0, align 4
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ieee80211_hw*)* @ath9k_set_hw_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_set_hw_capab(%struct.ath9k_htc_priv* %0, %struct.ieee80211_hw* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ath_common*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ieee80211_hw* %1, %struct.ieee80211_hw** %4, align 8
  %6 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_8__* %8)
  store %struct.ath_common* %9, %struct.ath_common** %5, align 8
  %10 = load i32, i32* @IEEE80211_HW_SIGNAL_DBM, align 4
  %11 = load i32, i32* @IEEE80211_HW_AMPDU_AGGREGATION, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IEEE80211_HW_SPECTRUM_MGMT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IEEE80211_HW_HAS_RATE_CONTROL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IEEE80211_HW_RX_INCLUDES_FCS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IEEE80211_HW_SUPPORTS_PS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IEEE80211_HW_PS_NULLFUNC_STACK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IEEE80211_HW_REPORTS_TX_ACK_STATUS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %33, %35
  %37 = load i32, i32* @NL80211_IFTYPE_P2P_GO, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = or i32 %36, %38
  %40 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = or i32 %39, %41
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %43, i32 0, i32 7
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 7
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  store i32* @if_comb, i32** %50, align 8
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %51, i32 0, i32 7
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %57, i32 0, i32 7
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %56
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %64 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %66, i32 0, i32 7
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 8
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %72, i32 0, i32 1
  store i32 4, i32* %73, align 4
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %74, i32 0, i32 2
  store i32 5000, i32* %75, align 8
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %78, i32 0, i32 4
  store i32 4, i32* %79, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %80, i32 0, i32 5
  store i32 4, i32* %81, align 4
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %82, i32 0, i32 6
  store i32 12, i32* %83, align 8
  %84 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %85 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %2
  %94 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %95 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %97
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %99, i32 0, i32 7
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %102, align 8
  %104 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %103, i64 %104
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %105, align 8
  br label %106

106:                                              ; preds = %93, %2
  %107 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %108 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %106
  %117 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %118 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %120
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %123 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %122, i32 0, i32 7
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %125, align 8
  %127 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %126, i64 %127
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %128, align 8
  br label %129

129:                                              ; preds = %116, %106
  %130 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %131 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %129
  %140 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %141 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %139
  %150 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %151 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %152 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = call i32 @setup_ht_cap(%struct.ath9k_htc_priv* %150, i32* %156)
  br label %158

158:                                              ; preds = %149, %139
  %159 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %160 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %158
  %169 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %170 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %171 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = call i32 @setup_ht_cap(%struct.ath9k_htc_priv* %169, i32* %175)
  br label %177

177:                                              ; preds = %168, %158
  br label %178

178:                                              ; preds = %177, %129
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %180 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %181 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %179, i32 %182)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_8__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @setup_ht_cap(%struct.ath9k_htc_priv*, i32*) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
