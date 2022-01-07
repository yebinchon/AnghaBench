; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_reprogram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_d3_reprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.ieee80211_vif = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_vif = type { i32, i64, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ieee80211_chanctx_conf = type { i32, i32, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32 }
%struct.iwl_binding_cmd = type { i8**, i8*, i8*, i8* }
%struct.iwl_time_quota_cmd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@MAX_MACS_IN_BINDING = common dso_local global i32 0, align 4
@FW_CTXT_INVALID = common dso_local global i32 0, align 4
@BINDING_CONTEXT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to add binding: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Binding command failed: %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MAX_BINDINGS = common dso_local global i32 0, align 4
@TIME_QUOTA_CMD = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to send quota: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @iwl_mvm_d3_reprogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_d3_reprogram(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg80211_chan_def, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_binding_cmd, align 8
  %16 = alloca %struct.iwl_time_quota_cmd, align 8
  %17 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %18)
  store %struct.iwl_mvm_vif* %19, %struct.iwl_mvm_vif** %8, align 8
  %20 = bitcast %struct.iwl_binding_cmd* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = bitcast %struct.iwl_time_quota_cmd* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 8, i1 false)
  %22 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %258

33:                                               ; preds = %3
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %37)
  store %struct.ieee80211_chanctx_conf* %38, %struct.ieee80211_chanctx_conf** %9, align 8
  %39 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %40 = icmp ne %struct.ieee80211_chanctx_conf* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = call i32 (...) @rcu_read_unlock()
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %258

49:                                               ; preds = %33
  %50 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %50, i32 0, i32 2
  %52 = bitcast %struct.cfg80211_chan_def* %12 to i8*
  %53 = bitcast %struct.cfg80211_chan_def* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm* %61, %struct.TYPE_6__* %64, %struct.cfg80211_chan_def* %12, i32 %65, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %49
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %258

72:                                               ; preds = %49
  %73 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @WARN_ON(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %258

87:                                               ; preds = %72
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %89 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %92 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %93 = call i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm* %91, %struct.ieee80211_vif* %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %95 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %258

101:                                              ; preds = %87
  %102 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FW_CMD_ID_AND_COLOR(i32 %106, i32 %111)
  %113 = call i8* @cpu_to_le32(i32 %112)
  %114 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %15, i32 0, i32 3
  store i8* %113, i8** %114, align 8
  %115 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %15, i32 0, i32 2
  store i8* %116, i8** %117, align 8
  %118 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %119 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @FW_CMD_ID_AND_COLOR(i32 %122, i32 %127)
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %15, i32 0, i32 1
  store i8* %129, i8** %130, align 8
  %131 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @FW_CMD_ID_AND_COLOR(i32 %133, i32 %136)
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %15, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  store i8* %138, i8** %141, align 8
  store i32 1, i32* %14, align 4
  br label %142

142:                                              ; preds = %154, %101
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @MAX_MACS_IN_BINDING, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = load i32, i32* @FW_CTXT_INVALID, align 4
  %148 = call i8* @cpu_to_le32(i32 %147)
  %149 = getelementptr inbounds %struct.iwl_binding_cmd, %struct.iwl_binding_cmd* %15, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  store i8* %148, i8** %153, align 8
  br label %154

154:                                              ; preds = %146
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %142

157:                                              ; preds = %142
  store i32 0, i32* %17, align 4
  %158 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %159 = load i32, i32* @BINDING_CONTEXT_CMD, align 4
  %160 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %158, i32 %159, i32 32, %struct.iwl_binding_cmd* %15, i32* %17)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @IWL_ERR(%struct.iwl_mvm* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* %4, align 4
  br label %258

168:                                              ; preds = %157
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %173 = load i32, i32* %17, align 4
  %174 = call i32 @IWL_ERR(%struct.iwl_mvm* %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @EIO, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %4, align 4
  br label %258

177:                                              ; preds = %168
  %178 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %179 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %180 = call i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm* %178, %struct.ieee80211_sta* %179, i32 0)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %13, align 4
  store i32 %184, i32* %4, align 4
  br label %258

185:                                              ; preds = %177
  %186 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %187 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %190 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %195 = call i32 @rcu_assign_pointer(i32 %193, %struct.ieee80211_sta* %194)
  %196 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %197 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %198 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %196, %struct.ieee80211_vif* %197)
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %185
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %4, align 4
  br label %258

203:                                              ; preds = %185
  %204 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %205 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %210 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %209, i32 0, i32 2
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @FW_CMD_ID_AND_COLOR(i32 %208, i32 %213)
  %215 = call i8* @cpu_to_le32(i32 %214)
  %216 = getelementptr inbounds %struct.iwl_time_quota_cmd, %struct.iwl_time_quota_cmd* %16, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  store i8* %215, i8** %219, align 8
  %220 = call i8* @cpu_to_le32(i32 100)
  %221 = getelementptr inbounds %struct.iwl_time_quota_cmd, %struct.iwl_time_quota_cmd* %16, i32 0, i32 0
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 2
  store i8* %220, i8** %224, align 8
  %225 = call i8* @cpu_to_le32(i32 1000)
  %226 = getelementptr inbounds %struct.iwl_time_quota_cmd, %struct.iwl_time_quota_cmd* %16, i32 0, i32 0
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  store i8* %225, i8** %229, align 8
  store i32 1, i32* %14, align 4
  br label %230

230:                                              ; preds = %243, %203
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* @MAX_BINDINGS, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %230
  %235 = load i32, i32* @FW_CTXT_INVALID, align 4
  %236 = call i8* @cpu_to_le32(i32 %235)
  %237 = getelementptr inbounds %struct.iwl_time_quota_cmd, %struct.iwl_time_quota_cmd* %16, i32 0, i32 0
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  store i8* %236, i8** %242, align 8
  br label %243

243:                                              ; preds = %234
  %244 = load i32, i32* %14, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %14, align 4
  br label %230

246:                                              ; preds = %230
  %247 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %248 = load i32, i32* @TIME_QUOTA_CMD, align 4
  %249 = load i32, i32* @CMD_SYNC, align 4
  %250 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %247, i32 %248, i32 %249, i32 8, %struct.iwl_time_quota_cmd* %16)
  store i32 %250, i32* %13, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %246
  %254 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @IWL_ERR(%struct.iwl_mvm* %254, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %253, %246
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %257, %201, %183, %171, %163, %99, %84, %70, %45, %30
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @iwl_mvm_phy_ctxt_add(%struct.iwl_mvm*, %struct.TYPE_6__*, %struct.cfg80211_chan_def*, i32, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_binding_cmd*, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_time_quota_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
