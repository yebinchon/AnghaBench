; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_status_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_status_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que** }
%struct.req_que = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i64, i32 (%struct.qla_hw_data*, %struct.TYPE_16__*, i32)*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.rsp_que = type { i32* }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.sts_entry_fx00 = type { i64, i32*, i32, i32, i32, i32 }

@SS_MASK = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid status handle (0x%x).\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@SRB_TM_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Command already returned (0x%x/%p).\0A\00", align 1
@STATUS_MASK = common dso_local global i64 0, align 8
@SS_SENSE_LEN_VALID = common dso_local global i64 0, align 8
@SS_RESIDUAL_UNDER = common dso_local global i64 0, align 8
@SS_RESIDUAL_OVER = common dso_local global i64 0, align 8
@CS_DATA_OVERRUN = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Mid-layer underflow detected (0x%x of 0x%x bytes).\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_TASK_SET_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"QUEUE FULL detected.\0A\00", align 1
@SS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Dropped frame(s) detected (0x%x of 0x%x bytes).\0A\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Mid-layer underflow detected (0x%x of 0x%x bytes, cp->underflow: 0x%x).\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"scsi_status: 0x%x, lscsi_status: 0x%x\0A\00", align 1
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Port down status: port-state=0x%x.\0A\00", align 1
@FCS_ONLINE = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [232 x i8] c"FCP command status: 0x%x-0x%x (0x%x) nexus=%ld:%d:%d tgt_id: 0x%x lscsi_status: 0x%xcdb=%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x len=0x%x rsp_info=0x%x resid=0x%x fw_resid=0x%x sense_len=0x%x, par_sense_len=0x%x, rsp_info_len=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.rsp_que*, i8*)* @qlafx00_status_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_status_entry(%struct.TYPE_17__* %0, %struct.rsp_que* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.sts_entry_fx00*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.qla_hw_data*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.req_que*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %31, align 8
  store %struct.qla_hw_data* %32, %struct.qla_hw_data** %23, align 8
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.sts_entry_fx00*
  store %struct.sts_entry_fx00* %34, %struct.sts_entry_fx00** %10, align 8
  %35 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %36 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le16_to_cpu(i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %40 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = load i64, i64* @SS_MASK, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %12, align 8
  %45 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %46 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %24, align 8
  %48 = load i64, i64* %24, align 8
  %49 = call i64 @LSW(i64 %48)
  store i64 %49, i64* %25, align 8
  %50 = load i64, i64* %24, align 8
  %51 = call i64 @MSW(i64 %50)
  store i64 %51, i64* %26, align 8
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 0
  %54 = load %struct.req_que**, %struct.req_que*** %53, align 8
  %55 = load i64, i64* %26, align 8
  %56 = getelementptr inbounds %struct.req_que*, %struct.req_que** %54, i64 %55
  %57 = load %struct.req_que*, %struct.req_que** %56, align 8
  store %struct.req_que* %57, %struct.req_que** %27, align 8
  %58 = load i64, i64* %25, align 8
  %59 = load %struct.req_que*, %struct.req_que** %27, align 8
  %60 = getelementptr inbounds %struct.req_que, %struct.req_que* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %3
  %64 = load %struct.req_que*, %struct.req_que** %27, align 8
  %65 = getelementptr inbounds %struct.req_que, %struct.req_que* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %65, align 8
  %67 = load i64, i64* %25, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %66, i64 %67
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %7, align 8
  br label %71

70:                                               ; preds = %3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %71

71:                                               ; preds = %70, %63
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = icmp eq %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* @ql_dbg_io, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = load i64, i64* %25, align 8
  %78 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %75, %struct.TYPE_17__* %76, i32 12340, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = call i32 @set_bit(i32 %79, i32* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_17__* %83)
  br label %556

85:                                               ; preds = %71
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SRB_TM_CMD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.req_que*, %struct.req_que** %27, align 8
  %93 = getelementptr inbounds %struct.req_que, %struct.req_que* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %93, align 8
  %95 = load i64, i64* %25, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %94, i64 %95
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %96, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = load %struct.req_que*, %struct.req_que** %27, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @qlafx00_tm_iocb_entry(%struct.TYPE_17__* %97, %struct.req_que* %98, i8* %99, %struct.TYPE_16__* %100, i64 %101, i64 %102)
  br label %556

104:                                              ; preds = %85
  %105 = load i64, i64* %11, align 8
  %106 = icmp eq i64 %105, 137
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = load %struct.req_que*, %struct.req_que** %27, align 8
  %113 = load i64, i64* %25, align 8
  %114 = call i32 @qla2x00_process_completed_request(%struct.TYPE_17__* %111, %struct.req_que* %112, i64 %113)
  br label %556

115:                                              ; preds = %107, %104
  %116 = load %struct.req_que*, %struct.req_que** %27, align 8
  %117 = getelementptr inbounds %struct.req_que, %struct.req_que* %116, i32 0, i32 1
  %118 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %117, align 8
  %119 = load i64, i64* %25, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %118, i64 %119
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_16__* %121)
  store %struct.scsi_cmnd* %122, %struct.scsi_cmnd** %9, align 8
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %124 = icmp eq %struct.scsi_cmnd* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load i32, i32* @ql_dbg_io, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = load i64, i64* %25, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %126, %struct.TYPE_17__* %127, i32 12360, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %128, %struct.TYPE_16__* %129)
  br label %556

131:                                              ; preds = %115
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* @STATUS_MASK, align 8
  %134 = and i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %14, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  store %struct.TYPE_18__* %138, %struct.TYPE_18__** %8, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %141 = and i64 %139, %140
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %131
  %144 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %145 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @le32_to_cpu(i32 %146)
  store i64 %147, i64* %16, align 8
  br label %148

148:                                              ; preds = %143, %131
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %151 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %152 = or i64 %150, %151
  %153 = and i64 %149, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %157 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @le32_to_cpu(i32 %158)
  store i64 %159, i64* %19, align 8
  br label %160

160:                                              ; preds = %155, %148
  %161 = load i64, i64* %11, align 8
  %162 = icmp eq i64 %161, 136
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %165 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @le32_to_cpu(i32 %166)
  store i64 %167, i64* %20, align 8
  br label %168

168:                                              ; preds = %163, %160
  %169 = load %struct.sts_entry_fx00*, %struct.sts_entry_fx00** %10, align 8
  %170 = getelementptr inbounds %struct.sts_entry_fx00, %struct.sts_entry_fx00* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  store i32* %171, i32** %22, align 8
  store i32* %171, i32** %21, align 8
  store i64 8, i64* %17, align 8
  %172 = load i64, i64* %11, align 8
  %173 = icmp eq i64 %172, 137
  br i1 %173, label %174, label %181

174:                                              ; preds = %168
  %175 = load i64, i64* %12, align 8
  %176 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %177 = and i64 %175, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i64, i64* @CS_DATA_OVERRUN, align 8
  store i64 %180, i64* %11, align 8
  br label %181

181:                                              ; preds = %179, %174, %168
  %182 = load i64, i64* %11, align 8
  switch i64 %182, label %451 [
    i64 137, label %183
    i64 130, label %183
    i64 136, label %267
    i64 132, label %423
    i64 133, label %423
    i64 134, label %423
    i64 135, label %423
    i64 131, label %423
    i64 128, label %423
    i64 129, label %423
    i64 138, label %448
  ]

183:                                              ; preds = %181, %181
  %184 = load i64, i64* %12, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* @DID_OK, align 4
  %188 = shl i32 %187, 16
  store i32 %188, i32* %29, align 4
  br label %454

189:                                              ; preds = %183
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %192 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %193 = or i64 %191, %192
  %194 = and i64 %190, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %227

196:                                              ; preds = %189
  %197 = load i64, i64* %19, align 8
  store i64 %197, i64* %15, align 8
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %199 = load i64, i64* %15, align 8
  %200 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %198, i64 %199)
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %226, label %203

203:                                              ; preds = %196
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %205 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %204)
  %206 = load i64, i64* %15, align 8
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ult i32 %208, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %203
  %214 = load i32, i32* @ql_dbg_io, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to %struct.TYPE_17__*
  %220 = load i64, i64* %15, align 8
  %221 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %222 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %221)
  %223 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %214, %struct.TYPE_17__* %219, i32 12368, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %220, i64 %222)
  %224 = load i32, i32* @DID_ERROR, align 4
  %225 = shl i32 %224, 16
  store i32 %225, i32* %29, align 4
  br label %454

226:                                              ; preds = %203, %196
  br label %227

227:                                              ; preds = %226, %189
  %228 = load i32, i32* @DID_OK, align 4
  %229 = shl i32 %228, 16
  %230 = load i32, i32* %14, align 4
  %231 = or i32 %229, %230
  store i32 %231, i32* %29, align 4
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %227
  %236 = load i32, i32* @ql_dbg_io, align 4
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = inttoptr i64 %240 to %struct.TYPE_17__*
  %242 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %236, %struct.TYPE_17__* %241, i32 12369, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %454

243:                                              ; preds = %227
  store i32 0, i32* %28, align 4
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* @SS_CHECK_CONDITION, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %454

248:                                              ; preds = %243
  %249 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %250 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %253 = call i32 @memset(i32 %251, i32 0, i32 %252)
  %254 = load i64, i64* %12, align 8
  %255 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %256 = and i64 %254, %255
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %248
  br label %454

259:                                              ; preds = %248
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %261 = load i32*, i32** %22, align 8
  %262 = load i64, i64* %17, align 8
  %263 = load i64, i64* %16, align 8
  %264 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %265 = load i32, i32* %29, align 4
  %266 = call i32 @qlafx00_handle_sense(%struct.TYPE_16__* %260, i32* %261, i64 %262, i64 %263, %struct.rsp_que* %264, i32 %265)
  br label %454

267:                                              ; preds = %181
  %268 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  %269 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %267
  %272 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  %273 = call i32 @IS_QLAFX00(%struct.qla_hw_data* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %271, %267
  %276 = load i64, i64* %20, align 8
  store i64 %276, i64* %15, align 8
  br label %279

277:                                              ; preds = %271
  %278 = load i64, i64* %19, align 8
  store i64 %278, i64* %15, align 8
  br label %279

279:                                              ; preds = %277, %275
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %281 = load i64, i64* %15, align 8
  %282 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %280, i64 %281)
  %283 = load i64, i64* %12, align 8
  %284 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %285 = and i64 %283, %284
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %344

287:                                              ; preds = %279
  %288 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  %289 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  %293 = call i32 @IS_QLAFX00(%struct.qla_hw_data* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %314

295:                                              ; preds = %291, %287
  %296 = load i64, i64* %20, align 8
  %297 = load i64, i64* %19, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %314

299:                                              ; preds = %295
  %300 = load i32, i32* @ql_dbg_io, align 4
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = inttoptr i64 %304 to %struct.TYPE_17__*
  %306 = load i64, i64* %15, align 8
  %307 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %308 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %307)
  %309 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %300, %struct.TYPE_17__* %305, i32 12370, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %306, i64 %308)
  %310 = load i32, i32* @DID_ERROR, align 4
  %311 = shl i32 %310, 16
  %312 = load i32, i32* %14, align 4
  %313 = or i32 %311, %312
  store i32 %313, i32* %29, align 4
  br label %383

314:                                              ; preds = %295, %291
  %315 = load i32, i32* %14, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %343, label %317

317:                                              ; preds = %314
  %318 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %319 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %318)
  %320 = load i64, i64* %15, align 8
  %321 = sub i64 %319, %320
  %322 = trunc i64 %321 to i32
  %323 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %324 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ult i32 %322, %325
  br i1 %326, label %327, label %343

327:                                              ; preds = %317
  %328 = load i32, i32* @ql_dbg_io, align 4
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = inttoptr i64 %332 to %struct.TYPE_17__*
  %334 = load i64, i64* %15, align 8
  %335 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %336 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %335)
  %337 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %338 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %328, %struct.TYPE_17__* %333, i32 12371, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i64 %334, i64 %336, i32 %339)
  %341 = load i32, i32* @DID_ERROR, align 4
  %342 = shl i32 %341, 16
  store i32 %342, i32* %29, align 4
  br label %454

343:                                              ; preds = %317, %314
  br label %378

344:                                              ; preds = %279
  %345 = load i32, i32* %14, align 4
  %346 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %348, label %367

348:                                              ; preds = %344
  %349 = load i32, i32* %14, align 4
  %350 = load i32, i32* @SAM_STAT_BUSY, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %367

352:                                              ; preds = %348
  %353 = load i32, i32* @ql_dbg_io, align 4
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = inttoptr i64 %357 to %struct.TYPE_17__*
  %359 = load i64, i64* %15, align 8
  %360 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %361 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %360)
  %362 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %353, %struct.TYPE_17__* %358, i32 12372, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %359, i64 %361)
  %363 = load i32, i32* @DID_ERROR, align 4
  %364 = shl i32 %363, 16
  %365 = load i32, i32* %14, align 4
  %366 = or i32 %364, %365
  store i32 %366, i32* %29, align 4
  br label %383

367:                                              ; preds = %348, %344
  %368 = load i32, i32* @ql_dbg_io, align 4
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = inttoptr i64 %372 to %struct.TYPE_17__*
  %374 = load i64, i64* %12, align 8
  %375 = load i32, i32* %14, align 4
  %376 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %368, %struct.TYPE_17__* %373, i32 12373, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %374, i32 %375)
  br label %377

377:                                              ; preds = %367
  br label %378

378:                                              ; preds = %377, %343
  %379 = load i32, i32* @DID_OK, align 4
  %380 = shl i32 %379, 16
  %381 = load i32, i32* %14, align 4
  %382 = or i32 %380, %381
  store i32 %382, i32* %29, align 4
  store i32 0, i32* %28, align 4
  br label %383

383:                                              ; preds = %378, %352, %299
  %384 = load i32, i32* %14, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %422

386:                                              ; preds = %383
  %387 = load i32, i32* %14, align 4
  %388 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %398

390:                                              ; preds = %386
  %391 = load i32, i32* @ql_dbg_io, align 4
  %392 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  %396 = inttoptr i64 %395 to %struct.TYPE_17__*
  %397 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %391, %struct.TYPE_17__* %396, i32 12374, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %28, align 4
  br label %454

398:                                              ; preds = %386
  %399 = load i32, i32* %14, align 4
  %400 = load i32, i32* @SS_CHECK_CONDITION, align 4
  %401 = icmp ne i32 %399, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %398
  br label %454

403:                                              ; preds = %398
  %404 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %405 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %408 = call i32 @memset(i32 %406, i32 0, i32 %407)
  %409 = load i64, i64* %12, align 8
  %410 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %411 = and i64 %409, %410
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %414, label %413

413:                                              ; preds = %403
  br label %454

414:                                              ; preds = %403
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %416 = load i32*, i32** %22, align 8
  %417 = load i64, i64* %17, align 8
  %418 = load i64, i64* %16, align 8
  %419 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %420 = load i32, i32* %29, align 4
  %421 = call i32 @qlafx00_handle_sense(%struct.TYPE_16__* %415, i32* %416, i64 %417, i64 %418, %struct.rsp_que* %419, i32 %420)
  br label %422

422:                                              ; preds = %414, %383
  br label %454

423:                                              ; preds = %181, %181, %181, %181, %181, %181, %181
  %424 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %425 = shl i32 %424, 16
  store i32 %425, i32* %29, align 4
  %426 = load i32, i32* @ql_dbg_io, align 4
  %427 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  %431 = inttoptr i64 %430 to %struct.TYPE_17__*
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 2
  %434 = call i32 @atomic_read(i32* %433)
  %435 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %426, %struct.TYPE_17__* %431, i32 12375, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %434)
  %436 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 2
  %438 = call i32 @atomic_read(i32* %437)
  %439 = load i32, i32* @FCS_ONLINE, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %447

441:                                              ; preds = %423
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %446 = call i32 @qla2x00_mark_device_lost(i32 %444, %struct.TYPE_18__* %445, i32 1, i32 1)
  br label %447

447:                                              ; preds = %441, %423
  br label %454

448:                                              ; preds = %181
  %449 = load i32, i32* @DID_RESET, align 4
  %450 = shl i32 %449, 16
  store i32 %450, i32* %29, align 4
  br label %454

451:                                              ; preds = %181
  %452 = load i32, i32* @DID_ERROR, align 4
  %453 = shl i32 %452, 16
  store i32 %453, i32* %29, align 4
  br label %454

454:                                              ; preds = %451, %448, %447, %422, %413, %402, %390, %327, %259, %258, %247, %235, %213, %186
  %455 = load i32, i32* %28, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %543

457:                                              ; preds = %454
  %458 = load i32, i32* @ql_dbg_io, align 4
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = sext i32 %461 to i64
  %463 = inttoptr i64 %462 to %struct.TYPE_17__*
  %464 = load i64, i64* %11, align 8
  %465 = load i64, i64* %12, align 8
  %466 = load i32, i32* %29, align 4
  %467 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %471 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %470, i32 0, i32 2
  %472 = load %struct.TYPE_15__*, %struct.TYPE_15__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %476 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %475, i32 0, i32 2
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %14, align 4
  %484 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %485 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %484, i32 0, i32 1
  %486 = load i32*, i32** %485, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 0
  %488 = load i32, i32* %487, align 4
  %489 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %490 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %489, i32 0, i32 1
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 1
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %495 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %494, i32 0, i32 1
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 2
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %500 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %499, i32 0, i32 1
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 3
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %505 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %504, i32 0, i32 1
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 4
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %510 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %509, i32 0, i32 1
  %511 = load i32*, i32** %510, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 5
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %515 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %514, i32 0, i32 1
  %516 = load i32*, i32** %515, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 6
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %520 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %519, i32 0, i32 1
  %521 = load i32*, i32** %520, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 7
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %525 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 8
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %530 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %529, i32 0, i32 1
  %531 = load i32*, i32** %530, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 9
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %535 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %534)
  %536 = load i64, i64* %18, align 8
  %537 = load i64, i64* %19, align 8
  %538 = load i64, i64* %20, align 8
  %539 = load i64, i64* %16, align 8
  %540 = load i64, i64* %17, align 8
  %541 = load i64, i64* %18, align 8
  %542 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_dbg(i32 %458, %struct.TYPE_17__* %463, i32 12376, i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.8, i64 0, i64 0), i64 %464, i64 %465, i32 %466, i32 %469, i32 %474, i32 %479, i32 %482, i32 %483, i32 %488, i32 %493, i32 %498, i32 %503, i32 %508, i32 %513, i32 %518, i32 %523, i32 %528, i32 %533, i64 %535, i64 %536, i64 %537, i64 %538, i64 %539, i64 %540, i64 %541)
  br label %543

543:                                              ; preds = %457, %454
  %544 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %545 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %544, i32 0, i32 0
  %546 = load i32*, i32** %545, align 8
  %547 = icmp eq i32* %546, null
  br i1 %547, label %548, label %556

548:                                              ; preds = %543
  %549 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %549, i32 0, i32 1
  %551 = load i32 (%struct.qla_hw_data*, %struct.TYPE_16__*, i32)*, i32 (%struct.qla_hw_data*, %struct.TYPE_16__*, i32)** %550, align 8
  %552 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  %553 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %554 = load i32, i32* %29, align 4
  %555 = call i32 %551(%struct.qla_hw_data* %552, %struct.TYPE_16__* %553, i32 %554)
  br label %556

556:                                              ; preds = %74, %91, %110, %125, %548, %543
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @LSW(i64) #1

declare dso_local i64 @MSW(i64) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_17__*) #1

declare dso_local i32 @qlafx00_tm_iocb_entry(%struct.TYPE_17__*, %struct.req_que*, i8*, %struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @qla2x00_process_completed_request(%struct.TYPE_17__*, %struct.req_que*, i64) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_16__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qlafx00_handle_sense(%struct.TYPE_16__*, i32*, i64, i64, %struct.rsp_que*, i32) #1

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qla2x00_mark_device_lost(i32, %struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
