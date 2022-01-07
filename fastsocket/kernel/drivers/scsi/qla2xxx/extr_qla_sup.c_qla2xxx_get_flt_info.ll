; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_flt_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_get_flt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.req_que** }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32*, i64, i32)* }
%struct.req_que = type { i64 }
%struct.qla_flt_header = type { i64, i64, i64 }
%struct.qla_flt_region = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"FLT\00", align 1
@__const.qla2xxx_get_flt_info.locations = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@FA_RISC_CODE_ADDR = common dso_local global i64 0, align 8
@FA_RISC_CODE_ADDR_81 = common dso_local global i64 0, align 8
@FA_BOOT_CODE_ADDR = common dso_local global i64 0, align 8
@FA_BOOT_CODE_ADDR_81 = common dso_local global i64 0, align 8
@FA_VPD_NVRAM_ADDR = common dso_local global i64 0, align 8
@FA_VPD_NVRAM_ADDR_81 = common dso_local global i64 0, align 8
@FA_VPD0_ADDR_81 = common dso_local global i64 0, align 8
@FA_VPD1_ADDR_81 = common dso_local global i64 0, align 8
@FA_NVRAM0_ADDR_81 = common dso_local global i64 0, align 8
@FA_NVRAM1_ADDR_81 = common dso_local global i64 0, align 8
@FA_FLASH_DESCR_ADDR_24 = common dso_local global i64 0, align 8
@FA_FLASH_DESCR_ADDR = common dso_local global i64 0, align 8
@FA_FLASH_DESCR_ADDR_81 = common dso_local global i64 0, align 8
@FA_NPIV_CONF0_ADDR_24 = common dso_local global i64 0, align 8
@FA_NPIV_CONF0_ADDR = common dso_local global i64 0, align 8
@FA_NPIV_CONF0_ADDR_81 = common dso_local global i64 0, align 8
@FA_NPIV_CONF1_ADDR_24 = common dso_local global i64 0, align 8
@FA_NPIV_CONF1_ADDR = common dso_local global i64 0, align 8
@FA_NPIV_CONF1_ADDR_81 = common dso_local global i64 0, align 8
@FA_FCP_PRIO0_ADDR = common dso_local global i64 0, align 8
@FA_FCP_PRIO0_ADDR_25 = common dso_local global i64 0, align 8
@FA_FCP_PRIO1_ADDR = common dso_local global i64 0, align 8
@FA_FCP_PRIO1_ADDR_25 = common dso_local global i64 0, align 8
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Unsupported FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"Inconsistent FLT detected: version=0x%x length=0x%x checksum=0x%x.\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"FLT[%02x]: start=0x%x end=0x%x size=0x%x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [110 x i8] c"FLT[%s]: boot=0x%x fw=0x%x vpd_nvram=0x%x vpd=0x%x nvram=0x%x fdt=0x%x flt=0x%x npiv=0x%x fcp_prif_cfg=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @qla2xxx_get_flt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2xxx_get_flt_info(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [3 x i64], align 16
  %8 = alloca [3 x i64], align 16
  %9 = alloca [3 x i64], align 16
  %10 = alloca [3 x i64], align 16
  %11 = alloca [3 x i64], align 16
  %12 = alloca [3 x i64], align 16
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i64], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x i64], align 16
  %17 = alloca [3 x i64], align 16
  %18 = alloca [3 x i64], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.qla_flt_header*, align 8
  %25 = alloca %struct.qla_flt_region*, align 8
  %26 = alloca %struct.qla_hw_data*, align 8
  %27 = alloca %struct.req_que*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %28 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([2 x i8*]* @__const.qla2xxx_get_flt_info.locations to i8*), i64 16, i1 false)
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %30 = load i64, i64* @FA_RISC_CODE_ADDR, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 1
  %32 = load i64, i64* @FA_RISC_CODE_ADDR, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 1
  %34 = load i64, i64* @FA_RISC_CODE_ADDR_81, align 8
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %36 = load i64, i64* @FA_BOOT_CODE_ADDR, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 1
  %38 = load i64, i64* @FA_BOOT_CODE_ADDR, align 8
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 1
  %40 = load i64, i64* @FA_BOOT_CODE_ADDR_81, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %42 = load i64, i64* @FA_VPD_NVRAM_ADDR, align 8
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 1
  %44 = load i64, i64* @FA_VPD_NVRAM_ADDR, align 8
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 1
  %46 = load i64, i64* @FA_VPD_NVRAM_ADDR_81, align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* @FA_VPD0_ADDR_81, align 8
  store i64 %50, i64* %49, align 8
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 0
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* @FA_VPD1_ADDR_81, align 8
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* @FA_NVRAM0_ADDR_81, align 8
  store i64 %58, i64* %57, align 8
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* @FA_NVRAM1_ADDR_81, align 8
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %64 = load i64, i64* @FA_FLASH_DESCR_ADDR_24, align 8
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 1
  %66 = load i64, i64* @FA_FLASH_DESCR_ADDR, align 8
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 1
  %68 = load i64, i64* @FA_FLASH_DESCR_ADDR_81, align 8
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %70 = load i64, i64* @FA_NPIV_CONF0_ADDR_24, align 8
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 1
  %72 = load i64, i64* @FA_NPIV_CONF0_ADDR, align 8
  store i64 %72, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 1
  %74 = load i64, i64* @FA_NPIV_CONF0_ADDR_81, align 8
  store i64 %74, i64* %73, align 8
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %76 = load i64, i64* @FA_NPIV_CONF1_ADDR_24, align 8
  store i64 %76, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 1
  %78 = load i64, i64* @FA_NPIV_CONF1_ADDR, align 8
  store i64 %78, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 1
  %80 = load i64, i64* @FA_NPIV_CONF1_ADDR_81, align 8
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %82 = load i64, i64* @FA_FCP_PRIO0_ADDR, align 8
  store i64 %82, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 1
  %84 = load i64, i64* @FA_FCP_PRIO0_ADDR_25, align 8
  store i64 %84, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %87 = load i64, i64* @FA_FCP_PRIO1_ADDR, align 8
  store i64 %87, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 1
  %89 = load i64, i64* @FA_FCP_PRIO1_ADDR_25, align 8
  store i64 %89, i64* %88, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %92, align 8
  store %struct.qla_hw_data* %93, %struct.qla_hw_data** %26, align 8
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 13
  %96 = load %struct.req_que**, %struct.req_que*** %95, align 8
  %97 = getelementptr inbounds %struct.req_que*, %struct.req_que** %96, i64 0
  %98 = load %struct.req_que*, %struct.req_que** %97, align 8
  store %struct.req_que* %98, %struct.req_que** %27, align 8
  store i64 0, i64* %19, align 8
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %100 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %2
  store i64 1, i64* %19, align 8
  br label %109

103:                                              ; preds = %2
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %105 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i64 2, i64* %19, align 8
  br label %108

108:                                              ; preds = %107, %103
  br label %109

109:                                              ; preds = %108, %102
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i64, i64* %19, align 8
  %117 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  br label %123

119:                                              ; preds = %109
  %120 = load i64, i64* %19, align 8
  %121 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 %120
  %122 = load i64, i64* %121, align 8
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i64 [ %118, %115 ], [ %122, %119 ]
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %126 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.req_que*, %struct.req_que** %27, align 8
  %131 = getelementptr inbounds %struct.req_que, %struct.req_que* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i64*
  store i64* %133, i64** %20, align 8
  %134 = load %struct.req_que*, %struct.req_que** %27, align 8
  %135 = getelementptr inbounds %struct.req_que, %struct.req_que* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.qla_flt_header*
  store %struct.qla_flt_header* %137, %struct.qla_flt_header** %24, align 8
  %138 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %139 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %138, i64 1
  %140 = bitcast %struct.qla_flt_header* %139 to %struct.qla_flt_region*
  store %struct.qla_flt_region* %140, %struct.qla_flt_region** %25, align 8
  %141 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %142 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %141, i32 0, i32 12
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32 (%struct.TYPE_10__*, i32*, i64, i32)*, i32 (%struct.TYPE_10__*, i32*, i64, i32)** %144, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %147 = load %struct.req_que*, %struct.req_que** %27, align 8
  %148 = getelementptr inbounds %struct.req_que, %struct.req_que* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to i32*
  %151 = load i64, i64* %4, align 8
  %152 = shl i64 %151, 2
  %153 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %154 = call i32 %145(%struct.TYPE_10__* %146, i32* %150, i64 %152, i32 %153)
  %155 = load i64*, i64** %20, align 8
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @__constant_cpu_to_le16(i32 65535)
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %123
  br label %478

160:                                              ; preds = %123
  %161 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %162 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @__constant_cpu_to_le16(i32 1)
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %160
  %167 = load i32, i32* @ql_log_warn, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %170 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @le16_to_cpu(i64 %171)
  %173 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %174 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @le16_to_cpu(i64 %175)
  %177 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %178 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @le16_to_cpu(i64 %179)
  %181 = call i32 @ql_log(i32 %167, %struct.TYPE_10__* %168, i32 71, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %176, i32 %180)
  br label %478

182:                                              ; preds = %160
  %183 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %184 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @le16_to_cpu(i64 %185)
  %187 = sext i32 %186 to i64
  %188 = add i64 24, %187
  %189 = lshr i64 %188, 1
  store i64 %189, i64* %21, align 8
  store i64 0, i64* %22, align 8
  br label %190

190:                                              ; preds = %201, %182
  %191 = load i64, i64* %21, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load i64*, i64** %20, align 8
  %195 = getelementptr inbounds i64, i64* %194, i32 1
  store i64* %195, i64** %20, align 8
  %196 = load i64, i64* %194, align 8
  %197 = call i32 @le16_to_cpu(i64 %196)
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %22, align 8
  %200 = add nsw i64 %199, %198
  store i64 %200, i64* %22, align 8
  br label %201

201:                                              ; preds = %193
  %202 = load i64, i64* %21, align 8
  %203 = add nsw i64 %202, -1
  store i64 %203, i64* %21, align 8
  br label %190

204:                                              ; preds = %190
  %205 = load i64, i64* %22, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %204
  %208 = load i32, i32* @ql_log_fatal, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %210 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %211 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @le16_to_cpu(i64 %212)
  %214 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %215 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @le16_to_cpu(i64 %216)
  %218 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %219 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @le16_to_cpu(i64 %220)
  %222 = call i32 @ql_log(i32 %208, %struct.TYPE_10__* %209, i32 72, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %213, i32 %217, i32 %221)
  br label %478

223:                                              ; preds = %204
  %224 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %225 = load i8*, i8** %224, align 8
  store i8* %225, i8** %5, align 8
  %226 = load %struct.qla_flt_header*, %struct.qla_flt_header** %24, align 8
  %227 = getelementptr inbounds %struct.qla_flt_header, %struct.qla_flt_header* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @le16_to_cpu(i64 %228)
  %230 = sext i32 %229 to i64
  %231 = udiv i64 %230, 16
  store i64 %231, i64* %21, align 8
  br label %232

232:                                              ; preds = %472, %223
  %233 = load i64, i64* %21, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %477

235:                                              ; preds = %232
  %236 = load %struct.qla_flt_region*, %struct.qla_flt_region** %25, align 8
  %237 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @le32_to_cpu(i32 %238)
  %240 = ashr i32 %239, 2
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %23, align 8
  %242 = load i32, i32* @ql_dbg_init, align 4
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %244 = load %struct.qla_flt_region*, %struct.qla_flt_region** %25, align 8
  %245 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @le32_to_cpu(i32 %246)
  %248 = load i64, i64* %23, align 8
  %249 = load %struct.qla_flt_region*, %struct.qla_flt_region** %25, align 8
  %250 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @le32_to_cpu(i32 %251)
  %253 = ashr i32 %252, 2
  %254 = load %struct.qla_flt_region*, %struct.qla_flt_region** %25, align 8
  %255 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @le32_to_cpu(i32 %256)
  %258 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_dbg(i32 %242, %struct.TYPE_10__* %243, i32 73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %247, i64 %248, i32 %253, i32 %257)
  %259 = load %struct.qla_flt_region*, %struct.qla_flt_region** %25, align 8
  %260 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @le32_to_cpu(i32 %261)
  %263 = and i32 %262, 255
  switch i32 %263, label %471 [
    i32 144, label %264
    i32 138, label %273
    i32 146, label %282
    i32 130, label %286
    i32 129, label %310
    i32 132, label %330
    i32 131, label %346
    i32 139, label %362
    i32 134, label %366
    i32 133, label %377
    i32 136, label %388
    i32 141, label %392
    i32 140, label %403
    i32 145, label %414
    i32 137, label %418
    i32 135, label %422
    i32 147, label %426
    i32 128, label %430
    i32 143, label %439
    i32 142, label %455
  ]

264:                                              ; preds = %235
  %265 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %266 = call i32 @IS_QLA8031(%struct.qla_hw_data* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  br label %471

269:                                              ; preds = %264
  %270 = load i64, i64* %23, align 8
  %271 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %272 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %271, i32 0, i32 2
  store i64 %270, i64* %272, align 8
  br label %471

273:                                              ; preds = %235
  %274 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %275 = call i32 @IS_QLA8031(%struct.qla_hw_data* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  br label %471

278:                                              ; preds = %273
  %279 = load i64, i64* %23, align 8
  %280 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %281 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %280, i32 0, i32 2
  store i64 %279, i64* %281, align 8
  br label %471

282:                                              ; preds = %235
  %283 = load i64, i64* %23, align 8
  %284 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %285 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %284, i32 0, i32 3
  store i64 %283, i64* %285, align 8
  br label %471

286:                                              ; preds = %235
  %287 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %288 = call i32 @IS_QLA8031(%struct.qla_hw_data* %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %471

291:                                              ; preds = %286
  %292 = load i64, i64* %23, align 8
  %293 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %294 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %293, i32 0, i32 4
  store i64 %292, i64* %294, align 8
  %295 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %296 = call i32 @IS_QLA82XX(%struct.qla_hw_data* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %291
  br label %471

299:                                              ; preds = %291
  %300 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %301 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %300, i32 0, i32 11
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %299
  %306 = load i64, i64* %23, align 8
  %307 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %308 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %307, i32 0, i32 5
  store i64 %306, i64* %308, align 8
  br label %309

309:                                              ; preds = %305, %299
  br label %471

310:                                              ; preds = %235
  %311 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %312 = call i32 @IS_QLA82XX(%struct.qla_hw_data* %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %310
  %315 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %316 = call i32 @IS_QLA8031(%struct.qla_hw_data* %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %314, %310
  br label %471

319:                                              ; preds = %314
  %320 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %321 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %320, i32 0, i32 11
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %319
  %326 = load i64, i64* %23, align 8
  %327 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %328 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %327, i32 0, i32 5
  store i64 %326, i64* %328, align 8
  br label %329

329:                                              ; preds = %325, %319
  br label %471

330:                                              ; preds = %235
  %331 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %332 = call i32 @IS_QLA8031(%struct.qla_hw_data* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  br label %471

335:                                              ; preds = %330
  %336 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %337 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %336, i32 0, i32 11
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %335
  %342 = load i64, i64* %23, align 8
  %343 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %344 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %343, i32 0, i32 6
  store i64 %342, i64* %344, align 8
  br label %345

345:                                              ; preds = %341, %335
  br label %471

346:                                              ; preds = %235
  %347 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %348 = call i32 @IS_QLA8031(%struct.qla_hw_data* %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  br label %471

351:                                              ; preds = %346
  %352 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %353 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %352, i32 0, i32 11
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %351
  %358 = load i64, i64* %23, align 8
  %359 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %360 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %359, i32 0, i32 6
  store i64 %358, i64* %360, align 8
  br label %361

361:                                              ; preds = %357, %351
  br label %471

362:                                              ; preds = %235
  %363 = load i64, i64* %23, align 8
  %364 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %365 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %364, i32 0, i32 7
  store i64 %363, i64* %365, align 8
  br label %471

366:                                              ; preds = %235
  %367 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %368 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %367, i32 0, i32 11
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %366
  %373 = load i64, i64* %23, align 8
  %374 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %375 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %374, i32 0, i32 8
  store i64 %373, i64* %375, align 8
  br label %376

376:                                              ; preds = %372, %366
  br label %471

377:                                              ; preds = %235
  %378 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %379 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %378, i32 0, i32 11
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %377
  %384 = load i64, i64* %23, align 8
  %385 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %386 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %385, i32 0, i32 8
  store i64 %384, i64* %386, align 8
  br label %387

387:                                              ; preds = %383, %377
  br label %471

388:                                              ; preds = %235
  %389 = load i64, i64* %23, align 8
  %390 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %391 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %390, i32 0, i32 9
  store i64 %389, i64* %391, align 8
  br label %471

392:                                              ; preds = %235
  %393 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %394 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %393, i32 0, i32 11
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %392
  %399 = load i64, i64* %23, align 8
  %400 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %401 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %400, i32 0, i32 0
  store i64 %399, i64* %401, align 8
  br label %402

402:                                              ; preds = %398, %392
  br label %471

403:                                              ; preds = %235
  %404 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %405 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %404, i32 0, i32 11
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %413, label %409

409:                                              ; preds = %403
  %410 = load i64, i64* %23, align 8
  %411 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %412 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %411, i32 0, i32 0
  store i64 %410, i64* %412, align 8
  br label %413

413:                                              ; preds = %409, %403
  br label %471

414:                                              ; preds = %235
  %415 = load i64, i64* %23, align 8
  %416 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %417 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %416, i32 0, i32 3
  store i64 %415, i64* %417, align 8
  br label %471

418:                                              ; preds = %235
  %419 = load i64, i64* %23, align 8
  %420 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %421 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %420, i32 0, i32 2
  store i64 %419, i64* %421, align 8
  br label %471

422:                                              ; preds = %235
  %423 = load i64, i64* %23, align 8
  %424 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %425 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %424, i32 0, i32 9
  store i64 %423, i64* %425, align 8
  br label %471

426:                                              ; preds = %235
  %427 = load i64, i64* %23, align 8
  %428 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %429 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %428, i32 0, i32 10
  store i64 %427, i64* %429, align 8
  br label %471

430:                                              ; preds = %235
  %431 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %432 = call i32 @IS_CNA_CAPABLE(%struct.qla_hw_data* %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %430
  %435 = load i64, i64* %23, align 8
  %436 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %437 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %436, i32 0, i32 5
  store i64 %435, i64* %437, align 8
  br label %438

438:                                              ; preds = %434, %430
  br label %471

439:                                              ; preds = %235
  %440 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %441 = call i32 @IS_QLA8031(%struct.qla_hw_data* %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %439
  br label %471

444:                                              ; preds = %439
  %445 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %446 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %445, i32 0, i32 11
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %444
  %451 = load i64, i64* %23, align 8
  %452 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %453 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %452, i32 0, i32 6
  store i64 %451, i64* %453, align 8
  br label %454

454:                                              ; preds = %450, %444
  br label %471

455:                                              ; preds = %235
  %456 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %457 = call i32 @IS_QLA8031(%struct.qla_hw_data* %456)
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %460, label %459

459:                                              ; preds = %455
  br label %471

460:                                              ; preds = %455
  %461 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %462 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %461, i32 0, i32 11
  %463 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %470, label %466

466:                                              ; preds = %460
  %467 = load i64, i64* %23, align 8
  %468 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %469 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %468, i32 0, i32 6
  store i64 %467, i64* %469, align 8
  br label %470

470:                                              ; preds = %466, %460
  br label %471

471:                                              ; preds = %235, %470, %459, %454, %443, %438, %426, %422, %418, %414, %413, %402, %388, %387, %376, %362, %361, %350, %345, %334, %329, %318, %309, %298, %290, %282, %278, %277, %269, %268
  br label %472

472:                                              ; preds = %471
  %473 = load i64, i64* %21, align 8
  %474 = add nsw i64 %473, -1
  store i64 %474, i64* %21, align 8
  %475 = load %struct.qla_flt_region*, %struct.qla_flt_region** %25, align 8
  %476 = getelementptr inbounds %struct.qla_flt_region, %struct.qla_flt_region* %475, i32 1
  store %struct.qla_flt_region* %476, %struct.qla_flt_region** %25, align 8
  br label %232

477:                                              ; preds = %232
  br label %552

478:                                              ; preds = %207, %166, %159
  %479 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %480 = load i8*, i8** %479, align 16
  store i8* %480, i8** %5, align 8
  %481 = load i64, i64* %19, align 8
  %482 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %485 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %484, i32 0, i32 2
  store i64 %483, i64* %485, align 8
  %486 = load i64, i64* %19, align 8
  %487 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 %486
  %488 = load i64, i64* %487, align 8
  %489 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %490 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %489, i32 0, i32 3
  store i64 %488, i64* %490, align 8
  %491 = load i64, i64* %19, align 8
  %492 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 %491
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %495 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %494, i32 0, i32 4
  store i64 %493, i64* %495, align 8
  %496 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %497 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %496, i32 0, i32 11
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %478
  %502 = load i64, i64* %19, align 8
  %503 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %502
  %504 = load i64, i64* %503, align 8
  br label %509

505:                                              ; preds = %478
  %506 = load i64, i64* %19, align 8
  %507 = getelementptr inbounds [3 x i64], [3 x i64]* %11, i64 0, i64 %506
  %508 = load i64, i64* %507, align 8
  br label %509

509:                                              ; preds = %505, %501
  %510 = phi i64 [ %504, %501 ], [ %508, %505 ]
  %511 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %512 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %511, i32 0, i32 5
  store i64 %510, i64* %512, align 8
  %513 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %514 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %513, i32 0, i32 11
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %522

518:                                              ; preds = %509
  %519 = load i64, i64* %19, align 8
  %520 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 %519
  %521 = load i64, i64* %520, align 8
  br label %526

522:                                              ; preds = %509
  %523 = load i64, i64* %19, align 8
  %524 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 %523
  %525 = load i64, i64* %524, align 8
  br label %526

526:                                              ; preds = %522, %518
  %527 = phi i64 [ %521, %518 ], [ %525, %522 ]
  %528 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %529 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %528, i32 0, i32 6
  store i64 %527, i64* %529, align 8
  %530 = load i64, i64* %19, align 8
  %531 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %530
  %532 = load i64, i64* %531, align 8
  %533 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %534 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %533, i32 0, i32 7
  store i64 %532, i64* %534, align 8
  %535 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %536 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %535, i32 0, i32 11
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %544

540:                                              ; preds = %526
  %541 = load i64, i64* %19, align 8
  %542 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %541
  %543 = load i64, i64* %542, align 8
  br label %548

544:                                              ; preds = %526
  %545 = load i64, i64* %19, align 8
  %546 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 %545
  %547 = load i64, i64* %546, align 8
  br label %548

548:                                              ; preds = %544, %540
  %549 = phi i64 [ %543, %540 ], [ %547, %544 ]
  %550 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %551 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %550, i32 0, i32 8
  store i64 %549, i64* %551, align 8
  br label %552

552:                                              ; preds = %548, %477
  %553 = load i32, i32* @ql_dbg_init, align 4
  %554 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %555 = load i8*, i8** %5, align 8
  %556 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %557 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %556, i32 0, i32 3
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %560 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %559, i32 0, i32 2
  %561 = load i64, i64* %560, align 8
  %562 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %563 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %562, i32 0, i32 4
  %564 = load i64, i64* %563, align 8
  %565 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %566 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %565, i32 0, i32 5
  %567 = load i64, i64* %566, align 8
  %568 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %569 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %568, i32 0, i32 6
  %570 = load i64, i64* %569, align 8
  %571 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %572 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %571, i32 0, i32 7
  %573 = load i64, i64* %572, align 8
  %574 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %575 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %574, i32 0, i32 1
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %578 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %577, i32 0, i32 8
  %579 = load i64, i64* %578, align 8
  %580 = load %struct.qla_hw_data*, %struct.qla_hw_data** %26, align 8
  %581 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_dbg(i32 %553, %struct.TYPE_10__* %554, i32 74, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i8* %555, i64 %558, i64 %561, i64 %564, i64 %567, i64 %570, i64 %573, i64 %576, i64 %579, i64 %582)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #2

declare dso_local i64 @__constant_cpu_to_le16(i32) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i64) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*, ...) #2

declare dso_local i32 @IS_QLA8031(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_QLA82XX(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_CNA_CAPABLE(%struct.qla_hw_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
