; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.iwl_priv = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iwl_station_priv = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"A-MPDU action on addr %pM tid %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@iwlwifi_mod_params = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@IWL_DISABLE_HT_RXAGG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"start Rx\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"stop Rx\0A\00", align 1
@IWL_DISABLE_HT_TXAGG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"start Tx\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Flush Tx\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"stop Tx\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"priv->agg_tids_count = %u\0A\00", align 1
@LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*, i32, i32*, i32)* @iwlagn_mac_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iwl_priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.iwl_station_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %20 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %19)
  store %struct.iwl_priv* %20, %struct.iwl_priv** %16, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %27, %struct.iwl_station_priv** %18, align 8
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %7
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %174

43:                                               ; preds = %7
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %45 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i32, i32* %11, align 4
  switch i32 %49, label %167 [
    i32 134, label %50
    i32 133, label %65
    i32 131, label %72
    i32 129, label %97
    i32 128, label %97
    i32 130, label %105
    i32 132, label %160
  ]

50:                                               ; preds = %43
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %52 = load i32, i32* @IWL_DISABLE_HT_RXAGG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %167

56:                                               ; preds = %50
  %57 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %58 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @iwl_sta_rx_agg_start(%struct.iwl_priv* %59, %struct.ieee80211_sta* %60, i32 %61, i32 %63)
  store i32 %64, i32* %17, align 4
  br label %167

65:                                               ; preds = %43
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %67 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @iwl_sta_rx_agg_stop(%struct.iwl_priv* %68, %struct.ieee80211_sta* %69, i32 %70)
  store i32 %71, i32* %17, align 4
  br label %167

72:                                               ; preds = %43
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %74 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %73, i32 0, i32 3
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %167

82:                                               ; preds = %72
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %84 = load i32, i32* @IWL_DISABLE_HT_TXAGG, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %167

88:                                               ; preds = %82
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %90 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %92 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %93 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @iwlagn_tx_agg_start(%struct.iwl_priv* %91, %struct.ieee80211_vif* %92, %struct.ieee80211_sta* %93, i32 %94, i32* %95)
  store i32 %96, i32* %17, align 4
  br label %167

97:                                               ; preds = %43, %43
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %99 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %102 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @iwlagn_tx_agg_flush(%struct.iwl_priv* %100, %struct.ieee80211_vif* %101, %struct.ieee80211_sta* %102, i32 %103)
  store i32 %104, i32* %17, align 4
  br label %167

105:                                              ; preds = %43
  %106 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %107 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %109 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %110 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @iwlagn_tx_agg_stop(%struct.iwl_priv* %108, %struct.ieee80211_vif* %109, %struct.ieee80211_sta* %110, i32 %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %105
  %116 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %117 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %122 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %126 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %127 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_HT(%struct.iwl_priv* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %120, %115, %105
  %131 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %132 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %159, label %135

135:                                              ; preds = %130
  %136 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %137 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %135
  %142 = load i32, i32* @LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %18, align 8
  %145 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %143
  store i32 %150, i32* %148, align 4
  %151 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %152 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %153 = call i32 @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %152)
  %154 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %18, align 8
  %155 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32, i32* @CMD_ASYNC, align 4
  %158 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %151, i32 %153, %struct.TYPE_16__* %156, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %141, %135, %130
  br label %167

160:                                              ; preds = %43
  %161 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %162 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %163 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @iwlagn_tx_agg_oper(%struct.iwl_priv* %161, %struct.ieee80211_vif* %162, %struct.ieee80211_sta* %163, i32 %164, i32 %165)
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %43, %160, %159, %97, %88, %87, %81, %65, %56, %55
  %168 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %169 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load %struct.iwl_priv*, %struct.iwl_priv** %16, align 8
  %172 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %167, %40
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_sta_rx_agg_start(%struct.iwl_priv*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @iwl_sta_rx_agg_stop(%struct.iwl_priv*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwlagn_tx_agg_start(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @iwlagn_tx_agg_flush(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwlagn_tx_agg_stop(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, i32, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwlagn_tx_agg_oper(%struct.iwl_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
