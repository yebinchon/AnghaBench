; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_wakeup_reasons.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_wakeup_reasons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32, i64, i64, i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.error_table_start = type { i32, i32 }
%struct.cfg80211_wowlan_wakeup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.iwl_host_cmd = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iwl_wowlan_status = type { i32*, i64, i64, i32, i64 }
%struct.sk_buff = type { i32, i32* }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.error_table_start.0 = type { i32, i32 }

@CMD_SYNC = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@WOWLAN_GET_STATUSES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error table is valid (%d)\0A\00", align 1
@RF_KILL_INDICATOR_FOR_WOWLAN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@OFFLOADS_QUERY_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to query offload statistics (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to query status (%d)\0A\00", align 1
@FH_RSCSR_FRAME_SIZE_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid WoWLAN status response!\0A\00", align 1
@IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_PATTERN = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_query_wakeup_reasons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_query_wakeup_reasons(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.error_table_start, align 4
  %7 = alloca %struct.cfg80211_wowlan_wakeup, align 8
  %8 = alloca %struct.cfg80211_wowlan_wakeup*, align 8
  %9 = alloca %struct.iwl_host_cmd, align 8
  %10 = alloca %struct.iwl_wowlan_status*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.ieee80211_hdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = bitcast %struct.cfg80211_wowlan_wakeup* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 64, i1 false)
  %28 = bitcast i8* %27 to %struct.cfg80211_wowlan_wakeup*
  %29 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  store %struct.cfg80211_wowlan_wakeup* %7, %struct.cfg80211_wowlan_wakeup** %8, align 8
  %30 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 0
  %31 = load i32, i32* @CMD_SYNC, align 4
  %32 = load i32, i32* @CMD_WANT_SKB, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %34, align 8
  %35 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 2
  %36 = load i32, i32* @WOWLAN_GET_STATUSES, align 4
  store i32 %36, i32* %35, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = bitcast %struct.error_table_start* %6 to %struct.error_table_start.0*
  %42 = call i32 @iwl_trans_read_mem_bytes(i32 %39, i32 %40, %struct.error_table_start.0* %41, i32 8)
  %43 = getelementptr inbounds %struct.error_table_start, %struct.error_table_start* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %2
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %48 = getelementptr inbounds %struct.error_table_start, %struct.error_table_start* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IWL_INFO(%struct.iwl_mvm* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.error_table_start, %struct.error_table_start* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @RF_KILL_INDICATOR_FOR_WOWLAN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @ieee80211_report_wowlan_wakeup(%struct.ieee80211_vif* %58, %struct.cfg80211_wowlan_wakeup* %7, i32 %59)
  br label %61

61:                                               ; preds = %56, %46
  br label %392

62:                                               ; preds = %2
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %64 = load i32, i32* @OFFLOADS_QUERY_CMD, align 4
  %65 = load i32, i32* @CMD_SYNC, align 4
  %66 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %63, i32 %64, i32 %65, i32 0, i32* null)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %75 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %74, %struct.iwl_host_cmd* %9)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %392

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = icmp ne %struct.TYPE_3__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %392

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @le32_to_cpu(i64 %91)
  %93 = load i32, i32* @FH_RSCSR_FRAME_SIZE_MSK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 4
  %98 = icmp ult i64 %97, 40
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %101 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %390

102:                                              ; preds = %87
  %103 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %9, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = bitcast i8* %107 to %struct.iwl_wowlan_status*
  store %struct.iwl_wowlan_status* %108, %struct.iwl_wowlan_status** %10, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 %110, 4
  %112 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %113 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @le32_to_cpu(i64 %114)
  %116 = call i32 @ALIGN(i32 %115, i32 4)
  %117 = sext i32 %116 to i64
  %118 = add i64 40, %117
  %119 = icmp ne i64 %111, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %102
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %122 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %390

123:                                              ; preds = %102
  %124 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %125 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @le32_to_cpu(i64 %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store %struct.cfg80211_wowlan_wakeup* null, %struct.cfg80211_wowlan_wakeup** %8, align 8
  br label %383

132:                                              ; preds = %123
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 2
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %137, %132
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_PATTERN, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %146 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @le16_to_cpu(i32 %147)
  %149 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 0
  store i32 %148, i32* %149, align 8
  br label %150

150:                                              ; preds = %144, %139
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON, align 4
  %153 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 3
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %157, %150
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 4
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %164, %159
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 1
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %171, %166
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 5
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %178, %173
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 6
  store i32 1, i32* %186, align 8
  br label %187

187:                                              ; preds = %185, %180
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 7
  store i32 1, i32* %193, align 4
  br label %194

194:                                              ; preds = %192, %187
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 8
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %199, %194
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 9
  store i32 1, i32* %207, align 4
  br label %208

208:                                              ; preds = %206, %201
  %209 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %210 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %382

213:                                              ; preds = %208
  %214 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %215 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @le32_to_cpu(i64 %216)
  store i32 %217, i32* %15, align 4
  %218 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %219 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @le32_to_cpu(i64 %220)
  store i32 %221, i32* %16, align 4
  %222 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %223 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  store i32* %224, i32** %17, align 8
  %225 = load i32*, i32** %17, align 8
  %226 = bitcast i32* %225 to i8*
  %227 = bitcast i8* %226 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %227, %struct.ieee80211_hdr** %18, align 8
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %228, %229
  store i32 %230, i32* %19, align 4
  %231 = load i32, i32* %19, align 4
  %232 = icmp slt i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i64 @WARN_ON_ONCE(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %213
  store i32 0, i32* %19, align 4
  br label %237

237:                                              ; preds = %236, %213
  %238 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %239 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @ieee80211_is_data(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %356

243:                                              ; preds = %237
  %244 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %245 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @ieee80211_hdrlen(i32 %246)
  store i32 %247, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 4, i32* %22, align 4
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* @GFP_KERNEL, align 4
  %250 = call %struct.sk_buff* @alloc_skb(i32 %248, i32 %249)
  store %struct.sk_buff* %250, %struct.sk_buff** %14, align 8
  %251 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %252 = icmp ne %struct.sk_buff* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %243
  br label %383

254:                                              ; preds = %243
  %255 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %256 = load i32, i32* %20, align 4
  %257 = call i32 @skb_put(%struct.sk_buff* %255, i32 %256)
  %258 = load i32*, i32** %17, align 8
  %259 = load i32, i32* %20, align 4
  %260 = call i32 @memcpy(i32 %257, i32* %258, i32 %259)
  %261 = load i32, i32* %20, align 4
  %262 = load i32*, i32** %17, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %17, align 8
  %265 = load i32, i32* %20, align 4
  %266 = load i32, i32* %15, align 4
  %267 = sub nsw i32 %266, %265
  store i32 %267, i32* %15, align 4
  %268 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %269 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i64 @ieee80211_has_protected(i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %302

273:                                              ; preds = %254
  %274 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %275 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @is_multicast_ether_addr(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %273
  %280 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %281 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %21, align 4
  %283 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %284 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* %22, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %285
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %22, align 4
  br label %301

290:                                              ; preds = %273
  %291 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %292 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  store i32 %293, i32* %21, align 4
  %294 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %295 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load i32, i32* %22, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %296
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %22, align 4
  br label %301

301:                                              ; preds = %290, %279
  br label %302

302:                                              ; preds = %301, %254
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* %22, align 4
  %305 = icmp sge i32 %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %302
  store i32 0, i32* %22, align 4
  %307 = load i32, i32* %22, align 4
  %308 = load i32, i32* %19, align 4
  %309 = sub nsw i32 %308, %307
  store i32 %309, i32* %19, align 4
  br label %314

310:                                              ; preds = %302
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* %22, align 4
  %313 = sub nsw i32 %312, %311
  store i32 %313, i32* %22, align 4
  store i32 0, i32* %19, align 4
  br label %314

314:                                              ; preds = %310, %306
  %315 = load i32, i32* %21, align 4
  %316 = load i32, i32* %22, align 4
  %317 = add nsw i32 %315, %316
  %318 = load i32, i32* %15, align 4
  %319 = sub nsw i32 %318, %317
  store i32 %319, i32* %15, align 4
  %320 = load i32, i32* %21, align 4
  %321 = load i32*, i32** %17, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %17, align 8
  %324 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %325 = load i32, i32* %15, align 4
  %326 = call i32 @skb_put(%struct.sk_buff* %324, i32 %325)
  %327 = load i32*, i32** %17, align 8
  %328 = load i32, i32* %15, align 4
  %329 = call i32 @memcpy(i32 %326, i32* %327, i32 %328)
  %330 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %331 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %332 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %335 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i64 @ieee80211_data_to_8023(%struct.sk_buff* %330, i32 %333, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %314
  br label %383

340:                                              ; preds = %314
  %341 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %342 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 13
  store i32* %343, i32** %344, align 8
  %345 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %346 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 10
  store i32 %347, i32* %348, align 8
  %349 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %350 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* %19, align 4
  %353 = sub nsw i32 %351, %352
  %354 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 11
  store i32 %353, i32* %354, align 4
  %355 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 12
  store i32 0, i32* %355, align 8
  br label %381

356:                                              ; preds = %237
  store i32 4, i32* %23, align 4
  %357 = load i32, i32* %19, align 4
  %358 = icmp sge i32 %357, 4
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load i32, i32* %19, align 4
  %361 = sub nsw i32 %360, 4
  store i32 %361, i32* %19, align 4
  store i32 0, i32* %23, align 4
  br label %366

362:                                              ; preds = %356
  %363 = load i32, i32* %19, align 4
  %364 = load i32, i32* %23, align 4
  %365 = sub nsw i32 %364, %363
  store i32 %365, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %366

366:                                              ; preds = %362, %359
  %367 = load i32, i32* %23, align 4
  %368 = load i32, i32* %15, align 4
  %369 = sub nsw i32 %368, %367
  store i32 %369, i32* %15, align 4
  %370 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %10, align 8
  %371 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 13
  store i32* %372, i32** %373, align 8
  %374 = load i32, i32* %15, align 4
  %375 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 10
  store i32 %374, i32* %375, align 8
  %376 = load i32, i32* %16, align 4
  %377 = load i32, i32* %19, align 4
  %378 = sub nsw i32 %376, %377
  %379 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 11
  store i32 %378, i32* %379, align 4
  %380 = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, %struct.cfg80211_wowlan_wakeup* %7, i32 0, i32 12
  store i32 1, i32* %380, align 8
  br label %381

381:                                              ; preds = %366, %340
  br label %382

382:                                              ; preds = %381, %208
  br label %383

383:                                              ; preds = %382, %339, %253, %131
  %384 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %385 = load %struct.cfg80211_wowlan_wakeup*, %struct.cfg80211_wowlan_wakeup** %8, align 8
  %386 = load i32, i32* @GFP_KERNEL, align 4
  %387 = call i32 @ieee80211_report_wowlan_wakeup(%struct.ieee80211_vif* %384, %struct.cfg80211_wowlan_wakeup* %385, i32 %386)
  %388 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %389 = call i32 @kfree_skb(%struct.sk_buff* %388)
  br label %390

390:                                              ; preds = %383, %120, %99
  %391 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %9)
  br label %392

392:                                              ; preds = %390, %86, %78, %61
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_trans_read_mem_bytes(i32, i32, %struct.error_table_start.0*, i32) #2

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*, i32) #2

declare dso_local i32 @ieee80211_report_wowlan_wakeup(%struct.ieee80211_vif*, %struct.cfg80211_wowlan_wakeup*, i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, i32*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #2

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #2

declare dso_local i32 @le32_to_cpu(i64) #2

declare dso_local i32 @ALIGN(i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i64 @ieee80211_is_data(i32) #2

declare dso_local i32 @ieee80211_hdrlen(i32) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i64 @ieee80211_has_protected(i32) #2

declare dso_local i64 @is_multicast_ether_addr(i32) #2

declare dso_local i64 @ieee80211_data_to_8023(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
