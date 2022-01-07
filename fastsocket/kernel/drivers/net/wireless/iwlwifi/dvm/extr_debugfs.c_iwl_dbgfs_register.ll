; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_debugfs.c_iwl_dbgfs_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_debugfs.c_iwl_dbgfs_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_5__*, i64, %struct.dentry* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { %struct.TYPE_6__, %struct.dentry* }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@nvm = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@sram = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@wowlan_sram = common dso_local global i32 0, align 4
@stations = common dso_local global i32 0, align 4
@channels = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@rx_handlers = common dso_local global i32 0, align 4
@qos = common dso_local global i32 0, align 4
@sleep_level_override = common dso_local global i32 0, align 4
@current_sleep_command = common dso_local global i32 0, align 4
@thermal_throttling = common dso_local global i32 0, align 4
@disable_ht40 = common dso_local global i32 0, align 4
@temperature = common dso_local global i32 0, align 4
@power_save_status = common dso_local global i32 0, align 4
@clear_ucode_statistics = common dso_local global i32 0, align 4
@missed_beacon = common dso_local global i32 0, align 4
@plcp_delta = common dso_local global i32 0, align 4
@rf_reset = common dso_local global i32 0, align 4
@ucode_rx_stats = common dso_local global i32 0, align 4
@ucode_tx_stats = common dso_local global i32 0, align 4
@ucode_general_stats = common dso_local global i32 0, align 4
@txfifo_flush = common dso_local global i32 0, align 4
@protection_mode = common dso_local global i32 0, align 4
@sensitivity = common dso_local global i32 0, align 4
@chain_noise = common dso_local global i32 0, align 4
@ucode_tracing = common dso_local global i32 0, align 4
@ucode_bt_stats = common dso_local global i32 0, align 4
@reply_tx_error = common dso_local global i32 0, align 4
@rxon_flags = common dso_local global i32 0, align 4
@rxon_filter_flags = common dso_local global i32 0, align 4
@echo_test = common dso_local global i32 0, align 4
@fw_restart = common dso_local global i32 0, align 4
@bt_traffic = common dso_local global i32 0, align 4
@calib_disabled = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"../../%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"iwlwifi\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"failed to create the dvm debugfs entries\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@log_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_dbgfs_register(%struct.iwl_priv* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %14, i32 0, i32 2
  store %struct.dentry* %13, %struct.dentry** %15, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %16)
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %228

21:                                               ; preds = %2
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %22)
  store %struct.dentry* %23, %struct.dentry** %7, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = icmp ne %struct.dentry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %228

27:                                               ; preds = %21
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %28)
  store %struct.dentry* %29, %struct.dentry** %8, align 8
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = icmp ne %struct.dentry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %228

33:                                               ; preds = %27
  %34 = load i32, i32* @nvm, align 4
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = load i32, i32* @S_IRUSR, align 4
  %37 = call i32 @DEBUGFS_ADD_FILE(i32 %34, %struct.dentry* %35, i32 %36)
  %38 = load i32, i32* @sram, align 4
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = load i32, i32* @S_IWUSR, align 4
  %41 = load i32, i32* @S_IRUSR, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @DEBUGFS_ADD_FILE(i32 %38, %struct.dentry* %39, i32 %42)
  %44 = load i32, i32* @wowlan_sram, align 4
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = load i32, i32* @S_IRUSR, align 4
  %47 = call i32 @DEBUGFS_ADD_FILE(i32 %44, %struct.dentry* %45, i32 %46)
  %48 = load i32, i32* @stations, align 4
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = load i32, i32* @S_IRUSR, align 4
  %51 = call i32 @DEBUGFS_ADD_FILE(i32 %48, %struct.dentry* %49, i32 %50)
  %52 = load i32, i32* @channels, align 4
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = load i32, i32* @S_IRUSR, align 4
  %55 = call i32 @DEBUGFS_ADD_FILE(i32 %52, %struct.dentry* %53, i32 %54)
  %56 = load i32, i32* @status, align 4
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = load i32, i32* @S_IRUSR, align 4
  %59 = call i32 @DEBUGFS_ADD_FILE(i32 %56, %struct.dentry* %57, i32 %58)
  %60 = load i32, i32* @rx_handlers, align 4
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = load i32, i32* @S_IWUSR, align 4
  %63 = load i32, i32* @S_IRUSR, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @DEBUGFS_ADD_FILE(i32 %60, %struct.dentry* %61, i32 %64)
  %66 = load i32, i32* @qos, align 4
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = load i32, i32* @S_IRUSR, align 4
  %69 = call i32 @DEBUGFS_ADD_FILE(i32 %66, %struct.dentry* %67, i32 %68)
  %70 = load i32, i32* @sleep_level_override, align 4
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = load i32, i32* @S_IWUSR, align 4
  %73 = load i32, i32* @S_IRUSR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @DEBUGFS_ADD_FILE(i32 %70, %struct.dentry* %71, i32 %74)
  %76 = load i32, i32* @current_sleep_command, align 4
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = load i32, i32* @S_IRUSR, align 4
  %79 = call i32 @DEBUGFS_ADD_FILE(i32 %76, %struct.dentry* %77, i32 %78)
  %80 = load i32, i32* @thermal_throttling, align 4
  %81 = load %struct.dentry*, %struct.dentry** %6, align 8
  %82 = load i32, i32* @S_IRUSR, align 4
  %83 = call i32 @DEBUGFS_ADD_FILE(i32 %80, %struct.dentry* %81, i32 %82)
  %84 = load i32, i32* @disable_ht40, align 4
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = load i32, i32* @S_IWUSR, align 4
  %87 = load i32, i32* @S_IRUSR, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @DEBUGFS_ADD_FILE(i32 %84, %struct.dentry* %85, i32 %88)
  %90 = load i32, i32* @temperature, align 4
  %91 = load %struct.dentry*, %struct.dentry** %6, align 8
  %92 = load i32, i32* @S_IRUSR, align 4
  %93 = call i32 @DEBUGFS_ADD_FILE(i32 %90, %struct.dentry* %91, i32 %92)
  %94 = load i32, i32* @power_save_status, align 4
  %95 = load %struct.dentry*, %struct.dentry** %8, align 8
  %96 = load i32, i32* @S_IRUSR, align 4
  %97 = call i32 @DEBUGFS_ADD_FILE(i32 %94, %struct.dentry* %95, i32 %96)
  %98 = load i32, i32* @clear_ucode_statistics, align 4
  %99 = load %struct.dentry*, %struct.dentry** %8, align 8
  %100 = load i32, i32* @S_IWUSR, align 4
  %101 = call i32 @DEBUGFS_ADD_FILE(i32 %98, %struct.dentry* %99, i32 %100)
  %102 = load i32, i32* @missed_beacon, align 4
  %103 = load %struct.dentry*, %struct.dentry** %8, align 8
  %104 = load i32, i32* @S_IWUSR, align 4
  %105 = call i32 @DEBUGFS_ADD_FILE(i32 %102, %struct.dentry* %103, i32 %104)
  %106 = load i32, i32* @plcp_delta, align 4
  %107 = load %struct.dentry*, %struct.dentry** %8, align 8
  %108 = load i32, i32* @S_IWUSR, align 4
  %109 = load i32, i32* @S_IRUSR, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @DEBUGFS_ADD_FILE(i32 %106, %struct.dentry* %107, i32 %110)
  %112 = load i32, i32* @rf_reset, align 4
  %113 = load %struct.dentry*, %struct.dentry** %8, align 8
  %114 = load i32, i32* @S_IWUSR, align 4
  %115 = load i32, i32* @S_IRUSR, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @DEBUGFS_ADD_FILE(i32 %112, %struct.dentry* %113, i32 %116)
  %118 = load i32, i32* @ucode_rx_stats, align 4
  %119 = load %struct.dentry*, %struct.dentry** %8, align 8
  %120 = load i32, i32* @S_IRUSR, align 4
  %121 = call i32 @DEBUGFS_ADD_FILE(i32 %118, %struct.dentry* %119, i32 %120)
  %122 = load i32, i32* @ucode_tx_stats, align 4
  %123 = load %struct.dentry*, %struct.dentry** %8, align 8
  %124 = load i32, i32* @S_IRUSR, align 4
  %125 = call i32 @DEBUGFS_ADD_FILE(i32 %122, %struct.dentry* %123, i32 %124)
  %126 = load i32, i32* @ucode_general_stats, align 4
  %127 = load %struct.dentry*, %struct.dentry** %8, align 8
  %128 = load i32, i32* @S_IRUSR, align 4
  %129 = call i32 @DEBUGFS_ADD_FILE(i32 %126, %struct.dentry* %127, i32 %128)
  %130 = load i32, i32* @txfifo_flush, align 4
  %131 = load %struct.dentry*, %struct.dentry** %8, align 8
  %132 = load i32, i32* @S_IWUSR, align 4
  %133 = call i32 @DEBUGFS_ADD_FILE(i32 %130, %struct.dentry* %131, i32 %132)
  %134 = load i32, i32* @protection_mode, align 4
  %135 = load %struct.dentry*, %struct.dentry** %8, align 8
  %136 = load i32, i32* @S_IWUSR, align 4
  %137 = load i32, i32* @S_IRUSR, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @DEBUGFS_ADD_FILE(i32 %134, %struct.dentry* %135, i32 %138)
  %140 = load i32, i32* @sensitivity, align 4
  %141 = load %struct.dentry*, %struct.dentry** %8, align 8
  %142 = load i32, i32* @S_IRUSR, align 4
  %143 = call i32 @DEBUGFS_ADD_FILE(i32 %140, %struct.dentry* %141, i32 %142)
  %144 = load i32, i32* @chain_noise, align 4
  %145 = load %struct.dentry*, %struct.dentry** %8, align 8
  %146 = load i32, i32* @S_IRUSR, align 4
  %147 = call i32 @DEBUGFS_ADD_FILE(i32 %144, %struct.dentry* %145, i32 %146)
  %148 = load i32, i32* @ucode_tracing, align 4
  %149 = load %struct.dentry*, %struct.dentry** %8, align 8
  %150 = load i32, i32* @S_IWUSR, align 4
  %151 = load i32, i32* @S_IRUSR, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @DEBUGFS_ADD_FILE(i32 %148, %struct.dentry* %149, i32 %152)
  %154 = load i32, i32* @ucode_bt_stats, align 4
  %155 = load %struct.dentry*, %struct.dentry** %8, align 8
  %156 = load i32, i32* @S_IRUSR, align 4
  %157 = call i32 @DEBUGFS_ADD_FILE(i32 %154, %struct.dentry* %155, i32 %156)
  %158 = load i32, i32* @reply_tx_error, align 4
  %159 = load %struct.dentry*, %struct.dentry** %8, align 8
  %160 = load i32, i32* @S_IRUSR, align 4
  %161 = call i32 @DEBUGFS_ADD_FILE(i32 %158, %struct.dentry* %159, i32 %160)
  %162 = load i32, i32* @rxon_flags, align 4
  %163 = load %struct.dentry*, %struct.dentry** %8, align 8
  %164 = load i32, i32* @S_IWUSR, align 4
  %165 = call i32 @DEBUGFS_ADD_FILE(i32 %162, %struct.dentry* %163, i32 %164)
  %166 = load i32, i32* @rxon_filter_flags, align 4
  %167 = load %struct.dentry*, %struct.dentry** %8, align 8
  %168 = load i32, i32* @S_IWUSR, align 4
  %169 = call i32 @DEBUGFS_ADD_FILE(i32 %166, %struct.dentry* %167, i32 %168)
  %170 = load i32, i32* @echo_test, align 4
  %171 = load %struct.dentry*, %struct.dentry** %8, align 8
  %172 = load i32, i32* @S_IWUSR, align 4
  %173 = call i32 @DEBUGFS_ADD_FILE(i32 %170, %struct.dentry* %171, i32 %172)
  %174 = load i32, i32* @fw_restart, align 4
  %175 = load %struct.dentry*, %struct.dentry** %8, align 8
  %176 = load i32, i32* @S_IWUSR, align 4
  %177 = call i32 @DEBUGFS_ADD_FILE(i32 %174, %struct.dentry* %175, i32 %176)
  %178 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %179 = call i64 @iwl_advanced_bt_coexist(%struct.iwl_priv* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %33
  %182 = load i32, i32* @bt_traffic, align 4
  %183 = load %struct.dentry*, %struct.dentry** %8, align 8
  %184 = load i32, i32* @S_IRUSR, align 4
  %185 = call i32 @DEBUGFS_ADD_FILE(i32 %182, %struct.dentry* %183, i32 %184)
  br label %186

186:                                              ; preds = %181, %33
  %187 = load i32, i32* @calib_disabled, align 4
  %188 = load %struct.dentry*, %struct.dentry** %7, align 8
  %189 = load i32, i32* @S_IWUSR, align 4
  %190 = load i32, i32* @S_IRUSR, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @DEBUGFS_ADD_FILE(i32 %187, %struct.dentry* %188, i32 %191)
  %193 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %194 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %227

197:                                              ; preds = %186
  %198 = load %struct.dentry*, %struct.dentry** %5, align 8
  %199 = getelementptr inbounds %struct.dentry, %struct.dentry* %198, i32 0, i32 1
  %200 = load %struct.dentry*, %struct.dentry** %199, align 8
  store %struct.dentry* %200, %struct.dentry** %11, align 8
  %201 = load %struct.dentry*, %struct.dentry** %11, align 8
  %202 = getelementptr inbounds %struct.dentry, %struct.dentry* %201, i32 0, i32 1
  %203 = load %struct.dentry*, %struct.dentry** %202, align 8
  store %struct.dentry* %203, %struct.dentry** %12, align 8
  %204 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %205 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %204, i32 0, i32 0
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load %struct.dentry*, %struct.dentry** %209, align 8
  store %struct.dentry* %210, %struct.dentry** %10, align 8
  %211 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %212 = load %struct.dentry*, %struct.dentry** %12, align 8
  %213 = getelementptr inbounds %struct.dentry, %struct.dentry* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.dentry*, %struct.dentry** %11, align 8
  %217 = getelementptr inbounds %struct.dentry, %struct.dentry* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @snprintf(i8* %211, i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %215, i8* %219)
  %221 = load %struct.dentry*, %struct.dentry** %10, align 8
  %222 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %223 = call i32 @debugfs_create_symlink(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.dentry* %221, i8* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %197
  br label %228

226:                                              ; preds = %197
  br label %227

227:                                              ; preds = %226, %186
  store i32 0, i32* %3, align 4
  br label %233

228:                                              ; preds = %225, %32, %26, %20
  %229 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %230 = call i32 @IWL_ERR(%struct.iwl_priv* %229, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %228, %227
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @DEBUGFS_ADD_FILE(i32, %struct.dentry*, i32) #1

declare dso_local i64 @iwl_advanced_bt_coexist(%struct.iwl_priv*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @debugfs_create_symlink(i8*, %struct.dentry*, i8*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
