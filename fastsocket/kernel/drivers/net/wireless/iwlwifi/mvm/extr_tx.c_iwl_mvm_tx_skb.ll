; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i64, i32 }
%struct.iwl_mvm_sta = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.iwl_device_cmd = type { i64 }
%struct.iwl_tx_cmd = type { i32 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IWL_AGG_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"TX to [%d|%d] Q:%d - seq: 0x%x\0A\00", align 1
@IWL_MVM_FIRST_AGG_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_tx_skb(%struct.iwl_mvm* %0, %struct.sk_buff* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.iwl_device_cmd*, align 8
  %12 = alloca %struct.iwl_tx_cmd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %9, align 8
  store i32 0, i32* %14, align 4
  %26 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  store i64 %26, i64* %15, align 8
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %34, %struct.iwl_mvm_sta** %10, align 8
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %39 = icmp ne %struct.iwl_mvm_sta* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %224

45:                                               ; preds = %3
  %46 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON_ONCE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %224

55:                                               ; preds = %45
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %59 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm* %56, %struct.sk_buff* %57, %struct.ieee80211_sta* %58, i64 %61)
  store %struct.iwl_device_cmd* %62, %struct.iwl_device_cmd** %11, align 8
  %63 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %11, align 8
  %64 = icmp ne %struct.iwl_device_cmd* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %223

66:                                               ; preds = %55
  %67 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %11, align 8
  %68 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %70, %struct.iwl_tx_cmd** %12, align 8
  %71 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %71, i32 0, i32 1
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @ieee80211_is_data_qos(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %126

77:                                               ; preds = %66
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @ieee80211_is_qos_nullfunc(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %126, label %81

81:                                               ; preds = %77
  store i64* null, i64** %19, align 8
  %82 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %83 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %82)
  store i64* %83, i64** %19, align 8
  %84 = load i64*, i64** %19, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %88 = and i64 %86, %87
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %91 = icmp uge i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @WARN_ON_ONCE(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %214

96:                                               ; preds = %81
  %97 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %105 = load i32, i32* %14, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %108 = call i32 @cpu_to_le16(i32 %107)
  %109 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %110 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @cpu_to_le16(i32 %113)
  %115 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 16
  store i32 %120, i32* %14, align 4
  store i32 1, i32* %17, align 4
  %121 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %122 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %18, align 4
  br label %126

126:                                              ; preds = %96, %77, %66
  %127 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %12, align 8
  %128 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @ieee80211_hdrlen(i32 %131)
  %133 = call i32 @memcpy(i32 %129, %struct.ieee80211_hdr* %130, i32 %132)
  %134 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %135 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %138 = and i32 %136, %137
  %139 = call i64 @WARN_ON_ONCE(i32 %138)
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %126
  %143 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %144 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %143, i32 0, i32 2
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IWL_AGG_ON, align 8
  %151 = icmp ne i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i64 @WARN_ON_ONCE(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %214

156:                                              ; preds = %142
  %157 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %158 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %157, i32 0, i32 2
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i64, i64* %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %16, align 8
  br label %164

164:                                              ; preds = %156, %126
  %165 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %166 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %167 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @IWL_DEBUG_TX(%struct.iwl_mvm* %165, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %168, i64 %169, i64 %170, i32 %171)
  %173 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %11, align 8
  %178 = load i64, i64* %16, align 8
  %179 = call i64 @iwl_trans_tx(i32 %175, %struct.sk_buff* %176, %struct.iwl_device_cmd* %177, i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %164
  br label %214

182:                                              ; preds = %164
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %182
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @ieee80211_has_morefrags(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %192 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %191, i32 0, i32 2
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = load i64, i64* %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  store i32 %190, i32* %196, align 8
  br label %197

197:                                              ; preds = %189, %185, %182
  %198 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %199 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %198, i32 0, i32 1
  %200 = call i32 @spin_unlock(i32* %199)
  %201 = load i64, i64* %16, align 8
  %202 = load i64, i64* @IWL_MVM_FIRST_AGG_QUEUE, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %206 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %209 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = call i32 @atomic_inc(i32* %211)
  br label %213

213:                                              ; preds = %204, %197
  store i32 0, i32* %4, align 4
  br label %224

214:                                              ; preds = %181, %155, %95
  %215 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %216 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %11, align 8
  %219 = call i32 @iwl_trans_free_tx_cmd(i32 %217, %struct.iwl_device_cmd* %218)
  %220 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %221 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %220, i32 0, i32 1
  %222 = call i32 @spin_unlock(i32* %221)
  br label %223

223:                                              ; preds = %214, %65
  store i32 -1, i32* %4, align 4
  br label %224

224:                                              ; preds = %223, %213, %54, %44
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_sta*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_mvm*, i8*, i64, i64, i64, i32) #1

declare dso_local i64 @iwl_trans_tx(i32, %struct.sk_buff*, %struct.iwl_device_cmd*, i64) #1

declare dso_local i32 @ieee80211_has_morefrags(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @iwl_trans_free_tx_cmd(i32, %struct.iwl_device_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
