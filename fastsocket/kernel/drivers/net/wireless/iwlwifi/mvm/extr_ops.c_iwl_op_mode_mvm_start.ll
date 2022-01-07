; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_op_mode_mvm_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_op_mode_mvm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.iwl_op_mode = type { %struct.iwl_trans*, i32* }
%struct.iwl_trans = type { i32, i32, i32, i32 }
%struct.iwl_cfg = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_fw = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_7__*, %struct.iwl_op_mode* }
%struct.TYPE_7__ = type { i32 }
%struct.iwl_mvm = type { %struct.ieee80211_hw*, i32, i32, %struct.iwl_fw*, %struct.iwl_trans*, i32, %struct.iwl_cfg*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_trans_config = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.iwl_op_mode* }

@iwl_op_mode_mvm_start.no_reclaim_cmds = internal constant [1 x i32] [i32 128], align 4
@iwl_mvm_hw_ops = common dso_local global i32 0, align 4
@iwl_mvm_ops = common dso_local global i32 0, align 4
@iwl_mvm_async_handlers_wk = common dso_local global i32 0, align 4
@iwl_mvm_roc_done_wk = common dso_local global i32 0, align 4
@iwl_mvm_sta_drained_wk = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@IWL_UCODE_TLV_FLAGS_DW_BC_TABLE = common dso_local global i32 0, align 4
@IWL_WATCHDOG_DISABLED = common dso_local global i32 0, align 4
@iwl_mvm_cmd_strings = common dso_local global i32 0, align 4
@IWL_MVM_CMD_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_CMD_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REPLY_RX_MPDU_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot init phy_db\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Detected %s, REV=0x%X\0A\00", align 1
@iwlmvm_mod_params = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to run INIT ucode: %d\0A\00", align 1
@MAX_NUM_SCAN_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_op_mode* (%struct.iwl_trans*, %struct.iwl_cfg*, %struct.iwl_fw*, %struct.dentry*)* @iwl_op_mode_mvm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_op_mode* @iwl_op_mode_mvm_start(%struct.iwl_trans* %0, %struct.iwl_cfg* %1, %struct.iwl_fw* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.iwl_op_mode*, align 8
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.iwl_cfg*, align 8
  %8 = alloca %struct.iwl_fw*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ieee80211_hw*, align 8
  %11 = alloca %struct.iwl_op_mode*, align 8
  %12 = alloca %struct.iwl_mvm*, align 8
  %13 = alloca %struct.iwl_trans_config, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %7, align 8
  store %struct.iwl_fw* %2, %struct.iwl_fw** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %16 = bitcast %struct.iwl_trans_config* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 104, i32* @iwl_mvm_hw_ops)
  store %struct.ieee80211_hw* %17, %struct.ieee80211_hw** %10, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %19 = icmp ne %struct.ieee80211_hw* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.iwl_op_mode* null, %struct.iwl_op_mode** %5, align 8
  br label %262

21:                                               ; preds = %4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 1
  %24 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %23, align 8
  store %struct.iwl_op_mode* %24, %struct.iwl_op_mode** %11, align 8
  %25 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %11, align 8
  %26 = getelementptr inbounds %struct.iwl_op_mode, %struct.iwl_op_mode* %25, i32 0, i32 1
  store i32* @iwl_mvm_ops, i32** %26, align 8
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %28 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %11, align 8
  %29 = getelementptr inbounds %struct.iwl_op_mode, %struct.iwl_op_mode* %28, i32 0, i32 0
  store %struct.iwl_trans* %27, %struct.iwl_trans** %29, align 8
  %30 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %11, align 8
  %31 = call %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode* %30)
  store %struct.iwl_mvm* %31, %struct.iwl_mvm** %12, align 8
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 4
  store %struct.iwl_trans* %37, %struct.iwl_trans** %39, align 8
  %40 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 6
  store %struct.iwl_cfg* %40, %struct.iwl_cfg** %42, align 8
  %43 = load %struct.iwl_fw*, %struct.iwl_fw** %8, align 8
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 3
  store %struct.iwl_fw* %43, %struct.iwl_fw** %45, align 8
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 0
  store %struct.ieee80211_hw* %46, %struct.ieee80211_hw** %48, align 8
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 5
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 14
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %55, i32 0, i32 13
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 12
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 11
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 10
  %66 = load i32, i32* @iwl_mvm_async_handlers_wk, align 4
  %67 = call i32 @INIT_WORK(i32* %65, i32 %66)
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 9
  %70 = load i32, i32* @iwl_mvm_roc_done_wk, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %72, i32 0, i32 8
  %74 = load i32, i32* @iwl_mvm_sta_drained_wk, align 4
  %75 = call i32 @INIT_WORK(i32* %73, i32 %74)
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 0
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %77, align 8
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %79, i32 0, i32 4
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %80, align 8
  %82 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %78, i32 %83)
  %85 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %11, align 8
  %86 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 8
  store %struct.iwl_op_mode* %85, %struct.iwl_op_mode** %86, align 8
  %87 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 7
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_op_mode_mvm_start.no_reclaim_cmds, i64 0, i64 0), i32** %87, align 8
  %88 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([1 x i32], [1 x i32]* @iwl_op_mode_mvm_start.no_reclaim_cmds, i64 0, i64 0))
  %89 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 6
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @iwlwifi_mod_params, i32 0, i32 1), align 4
  %91 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 5
  store i32 %90, i32* %91, align 4
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %92, i32 0, i32 3
  %94 = load %struct.iwl_fw*, %struct.iwl_fw** %93, align 8
  %95 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @IWL_UCODE_TLV_FLAGS_DW_BC_TABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %21
  %102 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %101, %21
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %108 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 4
  store i32 %111, i32* %112, align 8
  br label %116

113:                                              ; preds = %103
  %114 = load i32, i32* @IWL_WATCHDOG_DISABLED, align 4
  %115 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 4
  store i32 %114, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %106
  %117 = load i32, i32* @iwl_mvm_cmd_strings, align 4
  %118 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 3
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @IWL_MVM_CMD_QUEUE, align 4
  %120 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 2
  store i32 %119, i32* %120, align 8
  %121 = load i32, i32* @IWL_MVM_CMD_FIFO, align 4
  %122 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %13, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %123, i32 0, i32 0
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %124, align 8
  %126 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.iwl_fw*, %struct.iwl_fw** %8, align 8
  %131 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @snprintf(i32 %129, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %132)
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %134, i32 0, i32 4
  %136 = load %struct.iwl_trans*, %struct.iwl_trans** %135, align 8
  %137 = call i32 @iwl_trans_configure(%struct.iwl_trans* %136, %struct.iwl_trans_config* %13)
  %138 = load i32, i32* @REPLY_RX_MPDU_CMD, align 4
  %139 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %140 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %142 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %141, i32 0, i32 0
  store i32 4, i32* %142, align 4
  %143 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %144 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %143, i32 0, i32 7
  %145 = call i32 @iwl_notification_wait_init(i32* %144)
  %146 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %147 = call i32 @iwl_phy_db_init(%struct.iwl_trans* %146)
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %151 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %116
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %156 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %247

157:                                              ; preds = %116
  %158 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %159 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %160 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %159, i32 0, i32 6
  %161 = load %struct.iwl_cfg*, %struct.iwl_cfg** %160, align 8
  %162 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %165 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %164, i32 0, i32 4
  %166 = load %struct.iwl_trans*, %struct.iwl_trans** %165, align 8
  %167 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @IWL_INFO(%struct.iwl_mvm* %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %163, i32 %168)
  %170 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %171 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %170, i32 0, i32 4
  %172 = load %struct.iwl_trans*, %struct.iwl_trans** %171, align 8
  %173 = call i32 @iwl_trans_start_hw(%struct.iwl_trans* %172)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %157
  br label %247

177:                                              ; preds = %157
  %178 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %179 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %178, i32 0, i32 5
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %182 = call i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm* %181, i32 1)
  store i32 %182, i32* %14, align 4
  %183 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %184 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %183, i32 0, i32 5
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %177
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlmvm_mod_params, i32 0, i32 0), align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188
  %192 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %193 = load i32, i32* %14, align 4
  %194 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %192, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  br label %247

195:                                              ; preds = %188, %177
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlmvm_mod_params, i32 0, i32 0), align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %195
  %199 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %200 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %199, i32 0, i32 4
  %201 = load %struct.iwl_trans*, %struct.iwl_trans** %200, align 8
  %202 = call i32 @iwl_trans_stop_hw(%struct.iwl_trans* %201, i32 0)
  br label %203

203:                                              ; preds = %198, %195
  %204 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %205 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %204, i32 0, i32 3
  %206 = load %struct.iwl_fw*, %struct.iwl_fw** %205, align 8
  %207 = getelementptr inbounds %struct.iwl_fw, %struct.iwl_fw* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = add i64 4, %210
  %212 = load i32, i32* @MAX_NUM_SCAN_CHANNELS, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 4
  %215 = add i64 %211, %214
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* @GFP_KERNEL, align 4
  %219 = call i32 @kmalloc(i32 %217, i32 %218)
  %220 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %221 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %223 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %203
  br label %247

227:                                              ; preds = %203
  %228 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %229 = call i32 @iwl_mvm_mac_setup_register(%struct.iwl_mvm* %228)
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  br label %247

233:                                              ; preds = %227
  %234 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %235 = load %struct.dentry*, %struct.dentry** %9, align 8
  %236 = call i32 @iwl_mvm_dbgfs_register(%struct.iwl_mvm* %234, %struct.dentry* %235)
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %233
  br label %242

240:                                              ; preds = %233
  %241 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %11, align 8
  store %struct.iwl_op_mode* %241, %struct.iwl_op_mode** %5, align 8
  br label %262

242:                                              ; preds = %239
  %243 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %244 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %243, i32 0, i32 0
  %245 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %244, align 8
  %246 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %245)
  br label %247

247:                                              ; preds = %242, %232, %226, %191, %176, %154
  %248 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %249 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @iwl_phy_db_free(i32 %250)
  %252 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %253 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @kfree(i32 %254)
  %256 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %257 = call i32 @iwl_trans_stop_hw(%struct.iwl_trans* %256, i32 1)
  %258 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %259 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %258, i32 0, i32 0
  %260 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %259, align 8
  %261 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %260)
  store %struct.iwl_op_mode* null, %struct.iwl_op_mode** %5, align 8
  br label %262

262:                                              ; preds = %247, %240, %20
  %263 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %5, align 8
  ret %struct.iwl_op_mode* %263
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #2

declare dso_local %struct.iwl_mvm* @IWL_OP_MODE_GET_MVM(%struct.iwl_op_mode*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

declare dso_local i32 @iwl_trans_configure(%struct.iwl_trans*, %struct.iwl_trans_config*) #2

declare dso_local i32 @iwl_notification_wait_init(i32*) #2

declare dso_local i32 @iwl_phy_db_init(%struct.iwl_trans*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #2

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*, i32, i32) #2

declare dso_local i32 @iwl_trans_start_hw(%struct.iwl_trans*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @iwl_run_init_mvm_ucode(%struct.iwl_mvm*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @iwl_trans_stop_hw(%struct.iwl_trans*, i32) #2

declare dso_local i32 @kmalloc(i32, i32) #2

declare dso_local i32 @iwl_mvm_mac_setup_register(%struct.iwl_mvm*) #2

declare dso_local i32 @iwl_mvm_dbgfs_register(%struct.iwl_mvm*, %struct.dentry*) #2

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #2

declare dso_local i32 @iwl_phy_db_free(i32) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
