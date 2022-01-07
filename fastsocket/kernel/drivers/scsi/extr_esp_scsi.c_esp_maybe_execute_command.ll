; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_maybe_execute_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_esp_scsi.c_esp_maybe_execute_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i32, i32, i64, i32, i32, %struct.TYPE_2__*, i32*, i32, i64*, i32*, %struct.esp_cmd_entry*, i32, %struct.esp_target_data* }
%struct.TYPE_2__ = type { i32 (%struct.esp*, i32, i32, i32, i32, i32)* }
%struct.esp_cmd_entry = type { i32, i64*, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32*, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, %struct.esp_lun_data* }
%struct.esp_lun_data = type { i32 }
%struct.esp_target_data = type { i32, i64, i64, i64, i32, i64 }

@ESP_FLAG_RESETTING = common dso_local global i32 0, align 4
@ESP_CMD_FLAG_AUTOSENSE = common dso_local global i32 0, align 4
@ESP_TGT_CHECK_NEGO = common dso_local global i32 0, align 4
@ESP_TGT_BROKEN = common dso_local global i32 0, align 4
@ESP_TGT_DISCONNECT = common dso_local global i32 0, align 4
@FASHME = common dso_local global i64 0, align 8
@ESP_TGT_NEGO_WIDE = common dso_local global i32 0, align 4
@ESP_TGT_NEGO_SYNC = common dso_local global i32 0, align 4
@ESP_FLAG_DOING_SLOWCMD = common dso_local global i32 0, align 4
@ESP100 = common dso_local global i64 0, align 8
@ESP_CMD_DMA = common dso_local global i32 0, align 4
@ESP_CMD_SELA = common dso_local global i32 0, align 4
@ESP_CMD_SA3 = common dso_local global i32 0, align 4
@ESP_SELECT_BASIC = common dso_local global i32 0, align 4
@ESP_CMD_SELAS = common dso_local global i32 0, align 4
@ESP_SELECT_MSGOUT = common dso_local global i32 0, align 4
@ESP_BUSID_RESELID = common dso_local global i32 0, align 4
@ESP_BUSID_CTR32BIT = common dso_local global i32 0, align 4
@ESP_BUSID = common dso_local global i32 0, align 4
@esp_debug = common dso_local global i32 0, align 4
@ESP_DEBUG_SCSICMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ESP: tgt[%d] lun[%d] scsi_cmd [ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@ESP_CMD_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp*)* @esp_maybe_execute_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_maybe_execute_command(%struct.esp* %0) #0 {
  %2 = alloca %struct.esp*, align 8
  %3 = alloca %struct.esp_target_data*, align 8
  %4 = alloca %struct.esp_lun_data*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.esp_cmd_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.esp* %0, %struct.esp** %2, align 8
  %14 = load %struct.esp*, %struct.esp** %2, align 8
  %15 = getelementptr inbounds %struct.esp, %struct.esp* %14, i32 0, i32 10
  %16 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %15, align 8
  %17 = icmp ne %struct.esp_cmd_entry* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.esp*, %struct.esp** %2, align 8
  %20 = getelementptr inbounds %struct.esp, %struct.esp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ESP_FLAG_RESETTING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  br label %492

26:                                               ; preds = %18
  %27 = load %struct.esp*, %struct.esp** %2, align 8
  %28 = call %struct.esp_cmd_entry* @find_and_prep_issuable_command(%struct.esp* %27)
  store %struct.esp_cmd_entry* %28, %struct.esp_cmd_entry** %7, align 8
  %29 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %30 = icmp ne %struct.esp_cmd_entry* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %492

32:                                               ; preds = %26
  %33 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %34 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ESP_CMD_FLAG_AUTOSENSE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.esp*, %struct.esp** %2, align 8
  %41 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %42 = call i32 @esp_autosense(%struct.esp* %40, %struct.esp_cmd_entry* %41)
  br label %492

43:                                               ; preds = %32
  %44 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %45 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %44, i32 0, i32 3
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %45, align 8
  store %struct.scsi_cmnd* %46, %struct.scsi_cmnd** %6, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 2
  %49 = load %struct.scsi_device*, %struct.scsi_device** %48, align 8
  store %struct.scsi_device* %49, %struct.scsi_device** %5, align 8
  %50 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  %53 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.esp*, %struct.esp** %2, align 8
  %57 = getelementptr inbounds %struct.esp, %struct.esp* %56, i32 0, i32 12
  %58 = load %struct.esp_target_data*, %struct.esp_target_data** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %58, i64 %60
  store %struct.esp_target_data* %61, %struct.esp_target_data** %3, align 8
  %62 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %62, i32 0, i32 2
  %64 = load %struct.esp_lun_data*, %struct.esp_lun_data** %63, align 8
  store %struct.esp_lun_data* %64, %struct.esp_lun_data** %4, align 8
  %65 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %66 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %65, i32 0, i32 2
  %67 = load %struct.esp*, %struct.esp** %2, align 8
  %68 = getelementptr inbounds %struct.esp, %struct.esp* %67, i32 0, i32 11
  %69 = call i32 @list_move(i32* %66, i32* %68)
  %70 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %71 = load %struct.esp*, %struct.esp** %2, align 8
  %72 = getelementptr inbounds %struct.esp, %struct.esp* %71, i32 0, i32 10
  store %struct.esp_cmd_entry* %70, %struct.esp_cmd_entry** %72, align 8
  %73 = load %struct.esp*, %struct.esp** %2, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %75 = call i32 @esp_map_dma(%struct.esp* %73, %struct.scsi_cmnd* %74)
  %76 = load %struct.esp*, %struct.esp** %2, align 8
  %77 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %78 = call i32 @esp_save_pointers(%struct.esp* %76, %struct.esp_cmd_entry* %77)
  %79 = load %struct.esp*, %struct.esp** %2, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %81 = call i32 @esp_check_command_len(%struct.esp* %79, %struct.scsi_cmnd* %80)
  %82 = load %struct.esp*, %struct.esp** %2, align 8
  %83 = getelementptr inbounds %struct.esp, %struct.esp* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %13, align 8
  %85 = load %struct.esp*, %struct.esp** %2, align 8
  %86 = getelementptr inbounds %struct.esp, %struct.esp* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %88 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %225

93:                                               ; preds = %43
  %94 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %95 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ESP_TGT_BROKEN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %93
  %101 = load i32, i32* @ESP_TGT_DISCONNECT, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %104 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %108 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %110 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %112 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %114 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %113, i32 0, i32 5
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %100, %93
  %116 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %117 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @spi_width(i32 %118)
  %120 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %121 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %115
  %125 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %126 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @spi_period(i32 %127)
  %129 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %130 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %124
  %134 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %135 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @spi_offset(i32 %136)
  %138 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %139 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %146 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %226

149:                                              ; preds = %133, %124, %115
  %150 = load %struct.esp*, %struct.esp** %2, align 8
  %151 = getelementptr inbounds %struct.esp, %struct.esp* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @FASHME, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %178

155:                                              ; preds = %149
  %156 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %157 = call i64 @esp_need_to_nego_wide(%struct.esp_target_data* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = load %struct.esp*, %struct.esp** %2, align 8
  %161 = getelementptr inbounds %struct.esp, %struct.esp* %160, i32 0, i32 8
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %165 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  %170 = call i32 @spi_populate_width_msg(i64* %163, i32 %169)
  %171 = load %struct.esp*, %struct.esp** %2, align 8
  %172 = getelementptr inbounds %struct.esp, %struct.esp* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @ESP_TGT_NEGO_WIDE, align 4
  %174 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %175 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %209

178:                                              ; preds = %155, %149
  %179 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %180 = call i64 @esp_need_to_nego_sync(%struct.esp_target_data* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %178
  %183 = load %struct.esp*, %struct.esp** %2, align 8
  %184 = getelementptr inbounds %struct.esp, %struct.esp* %183, i32 0, i32 8
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %188 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %191 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @spi_populate_sync_msg(i64* %186, i64 %189, i64 %192)
  %194 = load %struct.esp*, %struct.esp** %2, align 8
  %195 = getelementptr inbounds %struct.esp, %struct.esp* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %197 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %198 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %208

201:                                              ; preds = %178
  %202 = load i32, i32* @ESP_TGT_CHECK_NEGO, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %205 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %201, %182
  br label %209

209:                                              ; preds = %208, %159
  %210 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %211 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ESP_TGT_NEGO_WIDE, align 4
  %214 = load i32, i32* @ESP_TGT_NEGO_SYNC, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %209
  %219 = load i32, i32* @ESP_FLAG_DOING_SLOWCMD, align 4
  %220 = load %struct.esp*, %struct.esp** %2, align 8
  %221 = getelementptr inbounds %struct.esp, %struct.esp* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %218, %209
  br label %225

225:                                              ; preds = %224, %43
  br label %226

226:                                              ; preds = %225, %142
  %227 = load %struct.esp_lun_data*, %struct.esp_lun_data** %4, align 8
  %228 = icmp ne %struct.esp_lun_data* %227, null
  br i1 %228, label %229, label %249

229:                                              ; preds = %226
  %230 = load %struct.esp_target_data*, %struct.esp_target_data** %3, align 8
  %231 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @ESP_TGT_DISCONNECT, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %249

236:                                              ; preds = %229
  %237 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %238 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load i32, i32* %9, align 4
  %245 = call i8* @IDENTIFY(i32 1, i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load i32*, i32** %13, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %13, align 8
  store i32 %246, i32* %247, align 4
  br label %255

249:                                              ; preds = %236, %229, %226
  %250 = load i32, i32* %9, align 4
  %251 = call i8* @IDENTIFY(i32 0, i32 %250)
  %252 = ptrtoint i8* %251 to i32
  %253 = load i32*, i32** %13, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %13, align 8
  store i32 %252, i32* %253, align 4
  br label %255

255:                                              ; preds = %249, %243
  %256 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %257 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %256, i32 0, i32 1
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %255
  %263 = load %struct.esp*, %struct.esp** %2, align 8
  %264 = getelementptr inbounds %struct.esp, %struct.esp* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @ESP100, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %262
  %269 = load i32, i32* @ESP_FLAG_DOING_SLOWCMD, align 4
  %270 = load %struct.esp*, %struct.esp** %2, align 8
  %271 = getelementptr inbounds %struct.esp, %struct.esp* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %268, %262, %255
  %275 = load %struct.esp*, %struct.esp** %2, align 8
  %276 = getelementptr inbounds %struct.esp, %struct.esp* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @ESP_FLAG_DOING_SLOWCMD, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %335, label %281

281:                                              ; preds = %274
  %282 = load i32, i32* @ESP_CMD_DMA, align 4
  %283 = load i32, i32* @ESP_CMD_SELA, align 4
  %284 = or i32 %282, %283
  store i32 %284, i32* %12, align 4
  %285 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %286 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %311

291:                                              ; preds = %281
  %292 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %293 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %292, i32 0, i32 1
  %294 = load i64*, i64** %293, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 0
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = load i32*, i32** %13, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %13, align 8
  store i32 %297, i32* %298, align 4
  %300 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %301 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %300, i32 0, i32 1
  %302 = load i64*, i64** %301, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 1
  %304 = load i64, i64* %303, align 8
  %305 = trunc i64 %304 to i32
  %306 = load i32*, i32** %13, align 8
  %307 = getelementptr inbounds i32, i32* %306, i32 1
  store i32* %307, i32** %13, align 8
  store i32 %305, i32* %306, align 4
  %308 = load i32, i32* @ESP_CMD_DMA, align 4
  %309 = load i32, i32* @ESP_CMD_SA3, align 4
  %310 = or i32 %308, %309
  store i32 %310, i32* %12, align 4
  br label %311

311:                                              ; preds = %291, %281
  store i32 0, i32* %10, align 4
  br label %312

312:                                              ; preds = %328, %311
  %313 = load i32, i32* %10, align 4
  %314 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %315 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp slt i32 %313, %316
  br i1 %317, label %318, label %331

318:                                              ; preds = %312
  %319 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %320 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %13, align 8
  %327 = getelementptr inbounds i32, i32* %326, i32 1
  store i32* %327, i32** %13, align 8
  store i32 %325, i32* %326, align 4
  br label %328

328:                                              ; preds = %318
  %329 = load i32, i32* %10, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %10, align 4
  br label %312

331:                                              ; preds = %312
  %332 = load i32, i32* @ESP_SELECT_BASIC, align 4
  %333 = load %struct.esp*, %struct.esp** %2, align 8
  %334 = getelementptr inbounds %struct.esp, %struct.esp* %333, i32 0, i32 7
  store i32 %332, i32* %334, align 8
  br label %409

335:                                              ; preds = %274
  %336 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %337 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.esp*, %struct.esp** %2, align 8
  %340 = getelementptr inbounds %struct.esp, %struct.esp* %339, i32 0, i32 3
  store i32 %338, i32* %340, align 8
  %341 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %342 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load %struct.esp*, %struct.esp** %2, align 8
  %346 = getelementptr inbounds %struct.esp, %struct.esp* %345, i32 0, i32 9
  store i32* %344, i32** %346, align 8
  %347 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %348 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %347, i32 0, i32 1
  %349 = load i64*, i64** %348, align 8
  %350 = getelementptr inbounds i64, i64* %349, i64 0
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %402

353:                                              ; preds = %335
  %354 = load %struct.esp*, %struct.esp** %2, align 8
  %355 = getelementptr inbounds %struct.esp, %struct.esp* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  store i32 %357, i32* %10, align 4
  br label %358

358:                                              ; preds = %376, %353
  %359 = load i32, i32* %10, align 4
  %360 = icmp sge i32 %359, 0
  br i1 %360, label %361, label %379

361:                                              ; preds = %358
  %362 = load %struct.esp*, %struct.esp** %2, align 8
  %363 = getelementptr inbounds %struct.esp, %struct.esp* %362, i32 0, i32 8
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* %10, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.esp*, %struct.esp** %2, align 8
  %370 = getelementptr inbounds %struct.esp, %struct.esp* %369, i32 0, i32 8
  %371 = load i64*, i64** %370, align 8
  %372 = load i32, i32* %10, align 4
  %373 = add nsw i32 %372, 2
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i64, i64* %371, i64 %374
  store i64 %368, i64* %375, align 8
  br label %376

376:                                              ; preds = %361
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, -1
  store i32 %378, i32* %10, align 4
  br label %358

379:                                              ; preds = %358
  %380 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %381 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %380, i32 0, i32 1
  %382 = load i64*, i64** %381, align 8
  %383 = getelementptr inbounds i64, i64* %382, i64 0
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.esp*, %struct.esp** %2, align 8
  %386 = getelementptr inbounds %struct.esp, %struct.esp* %385, i32 0, i32 8
  %387 = load i64*, i64** %386, align 8
  %388 = getelementptr inbounds i64, i64* %387, i64 0
  store i64 %384, i64* %388, align 8
  %389 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %7, align 8
  %390 = getelementptr inbounds %struct.esp_cmd_entry, %struct.esp_cmd_entry* %389, i32 0, i32 1
  %391 = load i64*, i64** %390, align 8
  %392 = getelementptr inbounds i64, i64* %391, i64 1
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.esp*, %struct.esp** %2, align 8
  %395 = getelementptr inbounds %struct.esp, %struct.esp* %394, i32 0, i32 8
  %396 = load i64*, i64** %395, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 1
  store i64 %393, i64* %397, align 8
  %398 = load %struct.esp*, %struct.esp** %2, align 8
  %399 = getelementptr inbounds %struct.esp, %struct.esp* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 2
  store i32 %401, i32* %399, align 4
  br label %402

402:                                              ; preds = %379, %335
  %403 = load i32, i32* @ESP_CMD_DMA, align 4
  %404 = load i32, i32* @ESP_CMD_SELAS, align 4
  %405 = or i32 %403, %404
  store i32 %405, i32* %12, align 4
  %406 = load i32, i32* @ESP_SELECT_MSGOUT, align 4
  %407 = load %struct.esp*, %struct.esp** %2, align 8
  %408 = getelementptr inbounds %struct.esp, %struct.esp* %407, i32 0, i32 7
  store i32 %406, i32* %408, align 8
  br label %409

409:                                              ; preds = %402, %331
  %410 = load i32, i32* %8, align 4
  store i32 %410, i32* %11, align 4
  %411 = load %struct.esp*, %struct.esp** %2, align 8
  %412 = getelementptr inbounds %struct.esp, %struct.esp* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @FASHME, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %422

416:                                              ; preds = %409
  %417 = load i32, i32* @ESP_BUSID_RESELID, align 4
  %418 = load i32, i32* @ESP_BUSID_CTR32BIT, align 4
  %419 = or i32 %417, %418
  %420 = load i32, i32* %11, align 4
  %421 = or i32 %420, %419
  store i32 %421, i32* %11, align 4
  br label %422

422:                                              ; preds = %416, %409
  %423 = load i32, i32* %11, align 4
  %424 = load i32, i32* @ESP_BUSID, align 4
  %425 = call i32 @esp_write8(i32 %423, i32 %424)
  %426 = load %struct.esp*, %struct.esp** %2, align 8
  %427 = load i32, i32* %8, align 4
  %428 = call i32 @esp_write_tgt_sync(%struct.esp* %426, i32 %427)
  %429 = load %struct.esp*, %struct.esp** %2, align 8
  %430 = load i32, i32* %8, align 4
  %431 = call i32 @esp_write_tgt_config3(%struct.esp* %429, i32 %430)
  %432 = load i32*, i32** %13, align 8
  %433 = load %struct.esp*, %struct.esp** %2, align 8
  %434 = getelementptr inbounds %struct.esp, %struct.esp* %433, i32 0, i32 6
  %435 = load i32*, i32** %434, align 8
  %436 = ptrtoint i32* %432 to i64
  %437 = ptrtoint i32* %435 to i64
  %438 = sub i64 %436, %437
  %439 = sdiv exact i64 %438, 4
  %440 = trunc i64 %439 to i32
  store i32 %440, i32* %11, align 4
  %441 = load i32, i32* @esp_debug, align 4
  %442 = load i32, i32* @ESP_DEBUG_SCSICMD, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %469

445:                                              ; preds = %422
  %446 = load i32, i32* %8, align 4
  %447 = load i32, i32* %9, align 4
  %448 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %446, i32 %447)
  store i32 0, i32* %10, align 4
  br label %449

449:                                              ; preds = %464, %445
  %450 = load i32, i32* %10, align 4
  %451 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %452 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = icmp slt i32 %450, %453
  br i1 %454, label %455, label %467

455:                                              ; preds = %449
  %456 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %457 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %10, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %462)
  br label %464

464:                                              ; preds = %455
  %465 = load i32, i32* %10, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %10, align 4
  br label %449

467:                                              ; preds = %449
  %468 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %469

469:                                              ; preds = %467, %422
  %470 = load %struct.esp*, %struct.esp** %2, align 8
  %471 = getelementptr inbounds %struct.esp, %struct.esp* %470, i32 0, i32 2
  %472 = load i64, i64* %471, align 8
  %473 = load i64, i64* @FASHME, align 8
  %474 = icmp eq i64 %472, %473
  br i1 %474, label %475, label %479

475:                                              ; preds = %469
  %476 = load %struct.esp*, %struct.esp** %2, align 8
  %477 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %478 = call i32 @scsi_esp_cmd(%struct.esp* %476, i32 %477)
  br label %479

479:                                              ; preds = %475, %469
  %480 = load %struct.esp*, %struct.esp** %2, align 8
  %481 = getelementptr inbounds %struct.esp, %struct.esp* %480, i32 0, i32 5
  %482 = load %struct.TYPE_2__*, %struct.TYPE_2__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i32 0, i32 0
  %484 = load i32 (%struct.esp*, i32, i32, i32, i32, i32)*, i32 (%struct.esp*, i32, i32, i32, i32, i32)** %483, align 8
  %485 = load %struct.esp*, %struct.esp** %2, align 8
  %486 = load %struct.esp*, %struct.esp** %2, align 8
  %487 = getelementptr inbounds %struct.esp, %struct.esp* %486, i32 0, i32 4
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %11, align 4
  %490 = load i32, i32* %12, align 4
  %491 = call i32 %484(%struct.esp* %485, i32 %488, i32 %489, i32 16, i32 0, i32 %490)
  br label %492

492:                                              ; preds = %479, %39, %31, %25
  ret void
}

declare dso_local %struct.esp_cmd_entry* @find_and_prep_issuable_command(%struct.esp*) #1

declare dso_local i32 @esp_autosense(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @esp_map_dma(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i32 @esp_save_pointers(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_check_command_len(%struct.esp*, %struct.scsi_cmnd*) #1

declare dso_local i64 @spi_width(i32) #1

declare dso_local i64 @spi_period(i32) #1

declare dso_local i64 @spi_offset(i32) #1

declare dso_local i64 @esp_need_to_nego_wide(%struct.esp_target_data*) #1

declare dso_local i32 @spi_populate_width_msg(i64*, i32) #1

declare dso_local i64 @esp_need_to_nego_sync(%struct.esp_target_data*) #1

declare dso_local i32 @spi_populate_sync_msg(i64*, i64, i64) #1

declare dso_local i8* @IDENTIFY(i32, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local i32 @esp_write_tgt_sync(%struct.esp*, i32) #1

declare dso_local i32 @esp_write_tgt_config3(%struct.esp*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
