; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_process.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_ath9k_htc_tx_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.__wmi_event_txstatus = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ath9k_htc_tx_ctl = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.ieee80211_vif* }

@ATH9K_HTC_TXSTAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_TX_FILTERED = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_RTC_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_RATE = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_CW40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@ATH9K_HTC_TXSTAT_SGI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.sk_buff*, %struct.__wmi_event_txstatus*)* @ath9k_htc_tx_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_tx_process(%struct.ath9k_htc_priv* %0, %struct.sk_buff* %1, %struct.__wmi_event_txstatus* %2) #0 {
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.__wmi_event_txstatus*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ath9k_htc_tx_ctl*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_tx_rate*, align 8
  %11 = alloca %struct.ieee80211_conf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.__wmi_event_txstatus* %2, %struct.__wmi_event_txstatus** %6, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store %struct.ieee80211_conf* %19, %struct.ieee80211_conf** %11, align 8
  %20 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @strip_drv_header(%struct.ath9k_htc_priv* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %26)
  br label %224

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff* %29)
  store %struct.ath9k_htc_tx_ctl* %30, %struct.ath9k_htc_tx_ctl** %8, align 8
  %31 = load %struct.ath9k_htc_tx_ctl*, %struct.ath9k_htc_tx_ctl** %8, align 8
  %32 = getelementptr inbounds %struct.ath9k_htc_tx_ctl, %struct.ath9k_htc_tx_ctl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %34)
  store %struct.ieee80211_tx_info* %35, %struct.ieee80211_tx_info** %9, align 8
  %36 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %38, align 8
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %7, align 8
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %42, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i64 0
  store %struct.ieee80211_tx_rate* %44, %struct.ieee80211_tx_rate** %10, align 8
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %45, i32 0, i32 1
  %47 = call i32 @memset(%struct.TYPE_11__* %46, i32 0, i32 8)
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %28
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %52 = icmp ne %struct.ieee80211_vif* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %55 = icmp ne %struct.__wmi_event_txstatus* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53, %50, %28
  br label %164

57:                                               ; preds = %53
  %58 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %59 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATH9K_HTC_TXSTAT_ACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %66 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %72 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ATH9K_HTC_TXSTAT_FILT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @IEEE80211_TX_STAT_TX_FILTERED, align 4
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %85 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATH9K_HTC_TXSTAT_RTC_CTS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %92 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %93 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %83
  %97 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %100 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ATH9K_HTC_TXSTAT_RATE, align 4
  %103 = call i32 @MS(i32 %101, i32 %102)
  %104 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %107 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ATH9K_HTC_TXSTAT_MCS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %96
  %113 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %114 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %115 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %119 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ATH9K_HTC_TXSTAT_CW40, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %112
  %125 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %126 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %127 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %112
  %131 = load %struct.__wmi_event_txstatus*, %struct.__wmi_event_txstatus** %6, align 8
  %132 = getelementptr inbounds %struct.__wmi_event_txstatus, %struct.__wmi_event_txstatus* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ATH9K_HTC_TXSTAT_SGI, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %139 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %140 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %130
  br label %159

144:                                              ; preds = %96
  %145 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %11, align 8
  %146 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %155 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 4
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %144
  br label %159

159:                                              ; preds = %158, %143
  %160 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %161 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = call i32 @ath9k_htc_check_tx_aggr(%struct.ath9k_htc_priv* %160, %struct.ieee80211_vif* %161, %struct.sk_buff* %162)
  br label %164

164:                                              ; preds = %159, %56
  %165 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %166 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = call i32 @spin_lock_bh(i32* %167)
  %169 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %170 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %171, align 8
  %174 = icmp slt i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i64 @WARN_ON(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %164
  %179 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %180 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %178, %164
  %183 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %184 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = call i32 @spin_unlock_bh(i32* %185)
  %187 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %188 = load i32, i32* %13, align 4
  %189 = call i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv* %187, i32 %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %191 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %190)
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = and i32 %192, 3
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %182
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %200, %201
  %203 = icmp sgt i32 %199, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %196
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %207, %208
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @memmove(i32 %209, i32 %212, i32 %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @skb_pull(%struct.sk_buff* %215, i32 %216)
  br label %218

218:                                              ; preds = %204, %196, %182
  %219 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %220 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %219, i32 0, i32 0
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %223 = call i32 @ieee80211_tx_status(%struct.TYPE_12__* %221, %struct.sk_buff* %222)
  br label %224

224:                                              ; preds = %218, %25
  ret void
}

declare dso_local i32 @strip_drv_header(%struct.ath9k_htc_priv*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.ath9k_htc_tx_ctl* @HTC_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @ath9k_htc_check_tx_aggr(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath9k_htc_tx_clear_slot(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tx_status(%struct.TYPE_12__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
