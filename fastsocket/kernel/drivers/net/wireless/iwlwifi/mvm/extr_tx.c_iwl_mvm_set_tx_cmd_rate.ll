; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.iwl_tx_cmd = type { i32, i32, i64, i32, i32 }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_RTS_DFAULT_RETRY_LIMIT = common dso_local global i32 0, align 4
@IWL_MGMT_DFAULT_RETRY_LIMIT = common dso_local global i32 0, align 4
@IWL_BAR_DFAULT_RETRY_LIMIT = common dso_local global i32 0, align 4
@IWL_DEFAULT_TX_RETRY = common dso_local global i32 0, align 4
@TX_CMD_FLG_STA_RATE = common dso_local global i32 0, align 4
@TX_CMD_FLG_ACK = common dso_local global i32 0, align 4
@TX_CMD_FLG_BAR = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Got an HT rate for a non data frame 0x%x\0A\00", align 1
@IWL_RATE_COUNT_LEGACY = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@IWL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32)* @iwl_mvm_set_tx_cmd_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_tx_cmd_rate(%struct.iwl_mvm* %0, %struct.iwl_tx_cmd* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_tx_cmd*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_tx_cmd* %1, %struct.iwl_tx_cmd** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @IWL_RTS_DFAULT_RETRY_LIMIT, align 4
  %15 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @ieee80211_is_probe_resp(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load i32, i32* @IWL_MGMT_DFAULT_RETRY_LIMIT, align 4
  %22 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @min(i32 %26, i32 %29)
  %31 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %46

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @ieee80211_is_back_req(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @IWL_BAR_DFAULT_RETRY_LIMIT, align 4
  %39 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @IWL_DEFAULT_TX_RETRY, align 4
  %43 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @ieee80211_is_data(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %52 = icmp ne %struct.ieee80211_sta* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @TX_CMD_FLG_STA_RATE, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %174

62:                                               ; preds = %50, %46
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @ieee80211_is_back_req(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* @TX_CMD_FLG_ACK, align 4
  %68 = load i32, i32* @TX_CMD_FLG_BAR, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @cpu_to_le32(i32 %69)
  %71 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %66, %62
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WARN_ONCE(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %76
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @IWL_RATE_COUNT_LEGACY, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103, %76
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %108, i32 0, i32 2
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %118 = call i32 @rate_lowest_index(i32* %116, %struct.ieee80211_sta* %117)
  store i32 %118, i32* %12, align 4
  br label %119

119:                                              ; preds = %107, %103
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i64, i64* @IWL_FIRST_OFDM_RATE, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %125, %119
  %132 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUILD_BUG_ON(i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = call i64 @iwl_mvm_mac80211_idx_to_hwrate(i32 %136)
  store i64 %137, i64* %13, align 8
  %138 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %139 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %140 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @iwl_fw_valid_tx_ant(i32 %141)
  %143 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %144 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @iwl_mvm_next_antenna(%struct.iwl_mvm* %138, i32 %142, i32 %145)
  %147 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %148 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @BIT(i32 %151)
  %153 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %154 = shl i32 %152, %153
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %131
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @IWL_LAST_CCK_RATE, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %162, %158, %131
  %167 = load i64, i64* %13, align 8
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* %11, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @cpu_to_le32(i32 %170)
  %172 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %173 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %53
  ret void
}

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @rate_lowest_index(i32*, %struct.ieee80211_sta*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @iwl_mvm_mac80211_idx_to_hwrate(i32) #1

declare dso_local i32 @iwl_mvm_next_antenna(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
