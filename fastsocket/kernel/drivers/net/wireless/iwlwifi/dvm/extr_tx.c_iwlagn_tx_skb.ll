; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tx.c_iwlagn_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32*, i32, i32, %struct.iwl_tid_data**, i32, %struct.iwl_rxon_context* }
%struct.iwl_tid_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.iwl_rxon_context = type { i64, i32, i32*, i64 }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.iwl_rxon_context**, %struct.iwl_rxon_context, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iwl_station_priv = type { i32, i64, i64 }
%struct.iwl_device_cmd = type { i64, i32, i32*, i64 }
%struct.iwl_tx_cmd = type { i32, i32 }
%struct.iwl_wipan_noa_data = type { i64, %struct.ieee80211_hdr* }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Dropping - RF KILL\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IWL_INVALID_STATION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Dropping - INVALID STATION: %pM\0A\00", align 1
@IEEE80211_TX_CTL_NO_PS_BUFFER = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IWL_AGG_ON = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"TX_CTL_AMPDU while not in AGG: Tx flags = 0x%08x, agg.state = %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"sta_id = %d, tid = %d seq_num = %d\00", align 1
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Tx while agg.state = %d\00", align 1
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREDATA = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@IWL_AUX_QUEUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"TX to [%d|%d] Q:%d - seq: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_tx_skb(%struct.iwl_priv* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.iwl_station_priv*, align 8
  %11 = alloca %struct.iwl_rxon_context*, align 8
  %12 = alloca %struct.iwl_device_cmd*, align 8
  %13 = alloca %struct.iwl_tx_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.iwl_wipan_noa_data*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca %struct.iwl_tid_data*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %29, %struct.ieee80211_hdr** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %30)
  store %struct.ieee80211_tx_info* %31, %struct.ieee80211_tx_info** %9, align 8
  store %struct.iwl_station_priv* null, %struct.iwl_station_priv** %10, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 5
  %34 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %33, align 8
  %35 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %36 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %34, i64 %35
  store %struct.iwl_rxon_context* %36, %struct.iwl_rxon_context** %11, align 8
  store i32 0, i32* %17, align 4
  %37 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  store i64 %37, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(i64 %47)
  store %struct.iwl_rxon_context* %48, %struct.iwl_rxon_context** %11, align 8
  br label %49

49:                                               ; preds = %43, %3
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %51 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %55 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_DROP(%struct.iwl_priv* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %501

56:                                               ; preds = %49
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @ieee80211_is_probe_resp(i32 %60)
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %56
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.iwl_wipan_noa_data* @rcu_dereference(i32 %67)
  store %struct.iwl_wipan_noa_data* %68, %struct.iwl_wipan_noa_data** %23, align 8
  %69 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %23, align 8
  %70 = icmp ne %struct.iwl_wipan_noa_data* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %23, align 8
  %74 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i64 @pskb_expand_head(%struct.sk_buff* %72, i32 0, i64 %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %23, align 8
  %82 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @skb_put(%struct.sk_buff* %80, i64 %83)
  %85 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %23, align 8
  %86 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %85, i32 0, i32 1
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %86, align 8
  %88 = load %struct.iwl_wipan_noa_data*, %struct.iwl_wipan_noa_data** %23, align 8
  %89 = getelementptr inbounds %struct.iwl_wipan_noa_data, %struct.iwl_wipan_noa_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @memcpy(i32 %84, %struct.ieee80211_hdr* %87, i64 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %95, %struct.ieee80211_hdr** %8, align 8
  br label %96

96:                                               ; preds = %79, %71, %64
  br label %97

97:                                               ; preds = %96, %56
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @ieee80211_hdrlen(i32 %98)
  store i64 %99, i64* %15, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ieee80211_is_data(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %105 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %18, align 8
  br label %121

107:                                              ; preds = %97
  %108 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %110 = call i64 @iwl_sta_id_or_broadcast(%struct.iwl_rxon_context* %108, %struct.ieee80211_sta* %109)
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* @IWL_INVALID_STATION, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %116 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %117 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_DROP(%struct.iwl_priv* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %501

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %103
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %123 = icmp ne %struct.ieee80211_sta* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = bitcast i8* %128 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %129, %struct.iwl_station_priv** %10, align 8
  br label %130

130:                                              ; preds = %124, %121
  %131 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %132 = icmp ne %struct.iwl_station_priv* %131, null
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %135 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IEEE80211_TX_CTL_NO_PS_BUFFER, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %147 = load i64, i64* %18, align 8
  %148 = call i32 @iwl_sta_modify_sleep_tx_count(%struct.iwl_priv* %146, i64 %147, i32 1)
  br label %149

149:                                              ; preds = %145, %138, %133, %130
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %151 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.iwl_rxon_context* @iwl_trans_alloc_tx_cmd(i32 %152)
  %154 = bitcast %struct.iwl_rxon_context* %153 to %struct.iwl_device_cmd*
  store %struct.iwl_device_cmd* %154, %struct.iwl_device_cmd** %12, align 8
  %155 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %156 = icmp ne %struct.iwl_device_cmd* %155, null
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %501

162:                                              ; preds = %149
  %163 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %164 = bitcast %struct.iwl_device_cmd* %163 to %struct.iwl_rxon_context*
  %165 = call i32 @memset(%struct.iwl_rxon_context* %164, i32 0, i32 32)
  %166 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %167 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %169, %struct.iwl_tx_cmd** %13, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @cpu_to_le16(i32 %174)
  %176 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %177 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %179 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %162
  %184 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %185 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %186 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %188 = call i32 @iwlagn_tx_cmd_build_hwcrypto(%struct.iwl_priv* %184, %struct.ieee80211_tx_info* %185, %struct.iwl_tx_cmd* %186, %struct.sk_buff* %187)
  br label %189

189:                                              ; preds = %183, %162
  %190 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %193 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %194 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %195 = load i64, i64* %18, align 8
  %196 = call i32 @iwlagn_tx_cmd_build_basic(%struct.iwl_priv* %190, %struct.sk_buff* %191, %struct.iwl_tx_cmd* %192, %struct.ieee80211_tx_info* %193, %struct.ieee80211_hdr* %194, i64 %195)
  %197 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %198 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %199 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %200 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @iwlagn_tx_cmd_build_rate(%struct.iwl_priv* %197, %struct.iwl_tx_cmd* %198, %struct.ieee80211_tx_info* %199, %struct.ieee80211_sta* %200, i32 %201)
  %203 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %204 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %203, i32 0, i32 3
  %205 = call i32 @memset(%struct.iwl_rxon_context* %204, i32 0, i32 32)
  %206 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %207 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %208 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %207, i32 0, i32 2
  %209 = load %struct.iwl_rxon_context**, %struct.iwl_rxon_context*** %208, align 8
  %210 = getelementptr inbounds %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %209, i64 0
  store %struct.iwl_rxon_context* %206, %struct.iwl_rxon_context** %210, align 8
  %211 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %212 = bitcast %struct.iwl_device_cmd* %211 to %struct.iwl_rxon_context*
  %213 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %214 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %213, i32 0, i32 2
  %215 = load %struct.iwl_rxon_context**, %struct.iwl_rxon_context*** %214, align 8
  %216 = getelementptr inbounds %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %215, i64 1
  store %struct.iwl_rxon_context* %212, %struct.iwl_rxon_context** %216, align 8
  %217 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %218 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %217, i32 0, i32 1
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load i32, i32* %14, align 4
  %221 = call i64 @ieee80211_is_data_qos(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %336

223:                                              ; preds = %189
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @ieee80211_is_qos_nullfunc(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %336, label %227

227:                                              ; preds = %223
  store i64* null, i64** %24, align 8
  %228 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %229 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %228)
  store i64* %229, i64** %24, align 8
  %230 = load i64*, i64** %24, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %234 = and i64 %232, %233
  store i64 %234, i64* %19, align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %237 = icmp uge i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @WARN_ON_ONCE(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  br label %487

242:                                              ; preds = %227
  %243 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %244 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %243, i32 0, i32 3
  %245 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %244, align 8
  %246 = load i64, i64* %18, align 8
  %247 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %245, i64 %246
  %248 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %247, align 8
  %249 = load i64, i64* %19, align 8
  %250 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %248, i64 %249
  store %struct.iwl_tid_data* %250, %struct.iwl_tid_data** %25, align 8
  %251 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %252 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %283

257:                                              ; preds = %242
  %258 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %25, align 8
  %259 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @IWL_AGG_ON, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %283

264:                                              ; preds = %257
  %265 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %266 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %267 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %25, align 8
  %271 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 (%struct.iwl_priv*, i8*, i64, i64, ...) @IWL_ERR(%struct.iwl_priv* %265, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %269, i64 %273)
  %275 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %276 = load i64, i64* %18, align 8
  %277 = load i64, i64* %19, align 8
  %278 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %25, align 8
  %279 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @IEEE80211_SEQ_TO_SN(i32 %280)
  %282 = call i32 (%struct.iwl_priv*, i8*, i64, i64, ...) @IWL_ERR(%struct.iwl_priv* %275, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %276, i64 %277, i32 %281)
  br label %487

283:                                              ; preds = %257, %242
  %284 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %25, align 8
  %285 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @IWL_AGG_ON, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %283
  %291 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %25, align 8
  %292 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @IWL_AGG_OFF, align 8
  %296 = icmp ne i64 %294, %295
  br label %297

297:                                              ; preds = %290, %283
  %298 = phi i1 [ false, %283 ], [ %296, %290 ]
  %299 = zext i1 %298 to i32
  %300 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %25, align 8
  %301 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @WARN_ONCE(i32 %299, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %297
  br label %487

307:                                              ; preds = %297
  %308 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %25, align 8
  %309 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  store i32 %310, i32* %17, align 4
  %311 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %312 = load i32, i32* %17, align 4
  %313 = and i32 %312, %311
  store i32 %313, i32* %17, align 4
  %314 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %315 = call i32 @cpu_to_le16(i32 %314)
  %316 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %317 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, %315
  store i32 %319, i32* %317, align 4
  %320 = load i32, i32* %17, align 4
  %321 = call i32 @cpu_to_le16(i32 %320)
  %322 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %323 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  %326 = load i32, i32* %17, align 4
  %327 = add nsw i32 %326, 16
  store i32 %327, i32* %17, align 4
  %328 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %329 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %307
  store i32 1, i32* %20, align 4
  br label %335

335:                                              ; preds = %334, %307
  store i32 1, i32* %21, align 4
  br label %336

336:                                              ; preds = %335, %223, %189
  %337 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %338 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %341 = load i64, i64* %15, align 8
  %342 = call i32 @memcpy(i32 %339, %struct.ieee80211_hdr* %340, i64 %341)
  %343 = load i32, i32* %20, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %336
  %346 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %347 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %346, i32 0, i32 3
  %348 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %347, align 8
  %349 = load i64, i64* %18, align 8
  %350 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %348, i64 %349
  %351 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %350, align 8
  %352 = load i64, i64* %19, align 8
  %353 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %351, i64 %352
  %354 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 8
  store i32 %356, i32* %22, align 4
  br label %393

357:                                              ; preds = %336
  %358 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %359 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %357
  %365 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %366 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  store i32 %367, i32* %22, align 4
  %368 = load i32, i32* @IEEE80211_FCTL_MOREDATA, align 4
  %369 = call i32 @cpu_to_le16(i32 %368)
  %370 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %371 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 4
  br label %392

374:                                              ; preds = %357
  %375 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %376 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %374
  %382 = load i32, i32* @IWL_AUX_QUEUE, align 4
  store i32 %382, i32* %22, align 4
  br label %391

383:                                              ; preds = %374
  %384 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %385 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %384, i32 0, i32 2
  %386 = load i32*, i32** %385, align 8
  %387 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %388 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %387)
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %22, align 4
  br label %391

391:                                              ; preds = %383, %381
  br label %392

392:                                              ; preds = %391, %364
  br label %393

393:                                              ; preds = %392, %345
  %394 = load i32, i32* %20, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %402, label %396

396:                                              ; preds = %393
  %397 = load i32, i32* %22, align 4
  %398 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %399 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %397, %400
  br label %402

402:                                              ; preds = %396, %393
  %403 = phi i1 [ false, %393 ], [ %401, %396 ]
  %404 = zext i1 %403 to i32
  %405 = call i32 @WARN_ON_ONCE(i32 %404)
  %406 = load i32, i32* %20, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %420

408:                                              ; preds = %402
  %409 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %410 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %409, i32 0, i32 0
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %22, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %417 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %415, %418
  br label %420

420:                                              ; preds = %408, %402
  %421 = phi i1 [ false, %402 ], [ %419, %408 ]
  %422 = zext i1 %421 to i32
  %423 = call i32 @WARN_ON_ONCE(i32 %422)
  %424 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %425 = load i64, i64* %18, align 8
  %426 = load i64, i64* %19, align 8
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* %17, align 4
  %429 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_TX(%struct.iwl_priv* %424, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %425, i64 %426, i32 %427, i32 %428)
  %430 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %431 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %434 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %435 = bitcast %struct.iwl_device_cmd* %434 to %struct.iwl_rxon_context*
  %436 = load i32, i32* %22, align 4
  %437 = call i64 @iwl_trans_tx(i32 %432, %struct.sk_buff* %433, %struct.iwl_rxon_context* %435, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %420
  br label %487

440:                                              ; preds = %420
  %441 = load i32, i32* %21, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %458

443:                                              ; preds = %440
  %444 = load i32, i32* %14, align 4
  %445 = call i32 @ieee80211_has_morefrags(i32 %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %458, label %447

447:                                              ; preds = %443
  %448 = load i32, i32* %17, align 4
  %449 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %450 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %449, i32 0, i32 3
  %451 = load %struct.iwl_tid_data**, %struct.iwl_tid_data*** %450, align 8
  %452 = load i64, i64* %18, align 8
  %453 = getelementptr inbounds %struct.iwl_tid_data*, %struct.iwl_tid_data** %451, i64 %452
  %454 = load %struct.iwl_tid_data*, %struct.iwl_tid_data** %453, align 8
  %455 = load i64, i64* %19, align 8
  %456 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %454, i64 %455
  %457 = getelementptr inbounds %struct.iwl_tid_data, %struct.iwl_tid_data* %456, i32 0, i32 0
  store i32 %448, i32* %457, align 8
  br label %458

458:                                              ; preds = %447, %443, %440
  %459 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %460 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %459, i32 0, i32 1
  %461 = call i32 @spin_unlock(i32* %460)
  %462 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %463 = icmp ne %struct.iwl_station_priv* %462, null
  br i1 %463, label %464, label %476

464:                                              ; preds = %458
  %465 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %466 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %464
  %470 = load i32, i32* %20, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %476, label %472

472:                                              ; preds = %469
  %473 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %10, align 8
  %474 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %473, i32 0, i32 0
  %475 = call i32 @atomic_inc(i32* %474)
  br label %476

476:                                              ; preds = %472, %469, %464, %458
  %477 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %478 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %476
  %484 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %485 = call i32 @iwl_scan_offchannel_skb(%struct.iwl_priv* %484)
  br label %486

486:                                              ; preds = %483, %476
  store i32 0, i32* %4, align 4
  br label %502

487:                                              ; preds = %439, %306, %264, %241
  %488 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %489 = icmp ne %struct.iwl_device_cmd* %488, null
  br i1 %489, label %490, label %497

490:                                              ; preds = %487
  %491 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %492 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %495 = bitcast %struct.iwl_device_cmd* %494 to %struct.iwl_rxon_context*
  %496 = call i32 @iwl_trans_free_tx_cmd(i32 %493, %struct.iwl_rxon_context* %495)
  br label %497

497:                                              ; preds = %490, %487
  %498 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %499 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %498, i32 0, i32 1
  %500 = call i32 @spin_unlock(i32* %499)
  br label %501

501:                                              ; preds = %497, %161, %114, %53
  store i32 -1, i32* %4, align 4
  br label %502

502:                                              ; preds = %501, %486
  %503 = load i32, i32* %4, align 4
  ret i32 %503
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(i64) #1

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_DROP(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_probe_resp(i32) #1

declare dso_local %struct.iwl_wipan_noa_data* @rcu_dereference(i32) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_hdr*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i64 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @iwl_sta_id_or_broadcast(%struct.iwl_rxon_context*, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_sta_modify_sleep_tx_count(%struct.iwl_priv*, i64, i32) #1

declare dso_local %struct.iwl_rxon_context* @iwl_trans_alloc_tx_cmd(i32) #1

declare dso_local i32 @memset(%struct.iwl_rxon_context*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwlagn_tx_cmd_build_hwcrypto(%struct.iwl_priv*, %struct.ieee80211_tx_info*, %struct.iwl_tx_cmd*, %struct.sk_buff*) #1

declare dso_local i32 @iwlagn_tx_cmd_build_basic(%struct.iwl_priv*, %struct.sk_buff*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_hdr*, i64) #1

declare dso_local i32 @iwlagn_tx_cmd_build_rate(%struct.iwl_priv*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i64, i64, ...) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @iwl_trans_tx(i32, %struct.sk_buff*, %struct.iwl_rxon_context*, i32) #1

declare dso_local i32 @ieee80211_has_morefrags(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @iwl_scan_offchannel_skb(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_trans_free_tx_cmd(i32, %struct.iwl_rxon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
