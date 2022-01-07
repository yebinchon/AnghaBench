; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_status_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_status_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.req_que** }
%struct.req_que = type { i64, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i64, i32 (%struct.qla_hw_data*, %struct.TYPE_22__*, i32)*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.rsp_que = type { i32* }
%struct.scsi_cmnd = type { i32, i32, i32*, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sts_entry_24xx = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@SS_MASK = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Invalid status handle (0x%x): Bad req pointer. req=%p, que=%u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid status handle (0x%x).\0A\00", align 1
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@BIT_1 = common dso_local global i64 0, align 8
@SRB_BIDI_CMD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Command already returned (0x%x/%p).\0A\00", align 1
@STATUS_MASK = common dso_local global i64 0, align 8
@SS_SENSE_LEN_VALID = common dso_local global i64 0, align 8
@SS_RESPONSE_INFO_LEN_VALID = common dso_local global i64 0, align 8
@SS_RESIDUAL_UNDER = common dso_local global i64 0, align 8
@SS_RESIDUAL_OVER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"FCP I/O protocol failure (0x%x/0x%x).\0A\00", align 1
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@CS_DATA_OVERRUN = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Mid-layer underflow detected (0x%x of 0x%x bytes).\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@SAM_STAT_TASK_SET_FULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"QUEUE FULL detected.\0A\00", align 1
@SS_CHECK_CONDITION = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Dropped frame(s) detected (0x%x of 0x%x bytes).\0A\00", align 1
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"scsi_status: 0x%x, lscsi_status: 0x%x\0A\00", align 1
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@SF_LOGOUT_SENT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Port down status: port-state=0x%x.\0A\00", align 1
@FCS_ONLINE = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Unsupported device '%s' found.\0A\00", align 1
@.str.10 = private unnamed_addr constant [178 x i8] c"FCP command status: 0x%x-0x%x (0x%x) nexus=%ld:%d:%d portid=%02x%02x%02x oxid=0x%x cdb=%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x len=0x%x rsp_info=0x%x resid=0x%x fw_resid=0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.rsp_que*, i8*)* @qla2x00_status_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_status_entry(%struct.TYPE_23__* %0, %struct.rsp_que* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.sts_entry_24xx*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.qla_hw_data*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.req_que*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store i8* %2, i8** %6, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %32, align 8
  store %struct.qla_hw_data* %33, %struct.qla_hw_data** %24, align 8
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i64 0, i64* %30, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to %struct.sts_entry_24xx*
  store %struct.sts_entry_24xx* %37, %struct.sts_entry_24xx** %11, align 8
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %39 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %3
  %42 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %43 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  store i64 %45, i64* %12, align 8
  %46 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %47 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le16_to_cpu(i32 %48)
  %50 = load i64, i64* @SS_MASK, align 8
  %51 = and i64 %49, %50
  store i64 %51, i64* %13, align 8
  %52 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %53 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le16_to_cpu(i32 %54)
  store i64 %55, i64* %30, align 8
  br label %67

56:                                               ; preds = %3
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @le16_to_cpu(i32 %59)
  store i64 %60, i64* %12, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le16_to_cpu(i32 %63)
  %65 = load i64, i64* @SS_MASK, align 8
  %66 = and i64 %64, %65
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %56, %41
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @LSW(i32 %70)
  store i64 %71, i64* %25, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @MSW(i32 %74)
  store i64 %75, i64* %26, align 8
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 2
  %78 = load %struct.req_que**, %struct.req_que*** %77, align 8
  %79 = load i64, i64* %26, align 8
  %80 = getelementptr inbounds %struct.req_que*, %struct.req_que** %78, i64 %79
  %81 = load %struct.req_que*, %struct.req_que** %80, align 8
  store %struct.req_que* %81, %struct.req_que** %27, align 8
  %82 = load %struct.req_que*, %struct.req_que** %27, align 8
  %83 = icmp eq %struct.req_que* %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %67
  %85 = load i64, i64* %26, align 8
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %90 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @find_first_zero_bit(i32 %88, i32 %91)
  %93 = icmp uge i64 %85, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %84, %67
  %95 = load i32, i32* @ql_dbg_io, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.req_que*, %struct.req_que** %27, align 8
  %101 = load i64, i64* %26, align 8
  %102 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %95, %struct.TYPE_23__* %96, i32 12377, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %99, %struct.req_que* %100, i64 %101)
  br label %767

103:                                              ; preds = %84
  %104 = load i64, i64* %25, align 8
  %105 = load %struct.req_que*, %struct.req_que** %27, align 8
  %106 = getelementptr inbounds %struct.req_que, %struct.req_que* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.req_que*, %struct.req_que** %27, align 8
  %111 = getelementptr inbounds %struct.req_que, %struct.req_que* %110, i32 0, i32 1
  %112 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %111, align 8
  %113 = load i64, i64* %25, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %112, i64 %113
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  store %struct.TYPE_22__* %115, %struct.TYPE_22__** %7, align 8
  br label %117

116:                                              ; preds = %103
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %117

117:                                              ; preds = %116, %109
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = icmp eq %struct.TYPE_22__* %118, null
  br i1 %119, label %120, label %143

120:                                              ; preds = %117
  %121 = load i32, i32* @ql_dbg_io, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %121, %struct.TYPE_23__* %122, i32 12311, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %128 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %120
  %131 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  br label %140

135:                                              ; preds = %120
  %136 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = call i32 @set_bit(i32 %136, i32* %138)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %142 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_23__* %141)
  br label %767

143:                                              ; preds = %117
  %144 = load i64, i64* %30, align 8
  %145 = load i64, i64* @BIT_1, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SRB_BIDI_CMD, align 8
  %153 = icmp eq i64 %151, %152
  br label %154

154:                                              ; preds = %148, %143
  %155 = phi i1 [ false, %143 ], [ %153, %148 ]
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load %struct.req_que*, %struct.req_que** %27, align 8
  %163 = load i64, i64* %25, align 8
  %164 = call i32 @qla25xx_process_bidir_status_iocb(%struct.TYPE_23__* %160, i8* %161, %struct.req_que* %162, i64 %163)
  br label %767

165:                                              ; preds = %154
  %166 = load i64, i64* %12, align 8
  %167 = icmp eq i64 %166, 139
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i64, i64* %13, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %173 = load %struct.req_que*, %struct.req_que** %27, align 8
  %174 = load i64, i64* %25, align 8
  %175 = call i32 @qla2x00_process_completed_request(%struct.TYPE_23__* %172, %struct.req_que* %173, i64 %174)
  br label %767

176:                                              ; preds = %168, %165
  %177 = load %struct.req_que*, %struct.req_que** %27, align 8
  %178 = getelementptr inbounds %struct.req_que, %struct.req_que* %177, i32 0, i32 1
  %179 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %178, align 8
  %180 = load i64, i64* %25, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %179, i64 %180
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %181, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %183 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_22__* %182)
  store %struct.scsi_cmnd* %183, %struct.scsi_cmnd** %9, align 8
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %185 = icmp eq %struct.scsi_cmnd* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %176
  %187 = load i32, i32* @ql_dbg_io, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %193 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %187, %struct.TYPE_23__* %188, i32 12312, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %191, %struct.TYPE_22__* %192)
  br label %767

194:                                              ; preds = %176
  %195 = load i64, i64* %13, align 8
  %196 = load i64, i64* @STATUS_MASK, align 8
  %197 = and i64 %195, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %15, align 4
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  store %struct.TYPE_24__* %201, %struct.TYPE_24__** %8, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  %202 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %203 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %260

205:                                              ; preds = %194
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %208 = and i64 %206, %207
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %212 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @le32_to_cpu(i32 %213)
  store i64 %214, i64* %17, align 8
  br label %215

215:                                              ; preds = %210, %205
  %216 = load i64, i64* %13, align 8
  %217 = load i64, i64* @SS_RESPONSE_INFO_LEN_VALID, align 8
  %218 = and i64 %216, %217
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %222 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @le32_to_cpu(i32 %223)
  store i64 %224, i64* %19, align 8
  br label %225

225:                                              ; preds = %220, %215
  %226 = load i64, i64* %13, align 8
  %227 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %228 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %229 = or i64 %227, %228
  %230 = and i64 %226, %229
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %234 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = call i64 @le32_to_cpu(i32 %235)
  store i64 %236, i64* %20, align 8
  br label %237

237:                                              ; preds = %232, %225
  %238 = load i64, i64* %12, align 8
  %239 = icmp eq i64 %238, 138
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %242 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @le32_to_cpu(i32 %243)
  store i64 %244, i64* %21, align 8
  br label %245

245:                                              ; preds = %240, %237
  %246 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %247 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  store i32* %248, i32** %22, align 8
  %249 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %250 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  store i32* %251, i32** %23, align 8
  %252 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %253 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @host_to_fcp_swap(i32* %254, i32 8)
  %256 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %257 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i64 @le16_to_cpu(i32 %258)
  store i64 %259, i64* %14, align 8
  store i64 8, i64* %18, align 8
  br label %291

260:                                              ; preds = %194
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %263 = and i64 %261, %262
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = call i64 @le16_to_cpu(i32 %268)
  store i64 %269, i64* %17, align 8
  br label %270

270:                                              ; preds = %265, %260
  %271 = load i64, i64* %13, align 8
  %272 = load i64, i64* @SS_RESPONSE_INFO_LEN_VALID, align 8
  %273 = and i64 %271, %272
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %270
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @le16_to_cpu(i32 %278)
  store i64 %279, i64* %19, align 8
  br label %280

280:                                              ; preds = %275, %270
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @le32_to_cpu(i32 %283)
  store i64 %284, i64* %20, align 8
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  store i32* %287, i32** %22, align 8
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  store i32* %290, i32** %23, align 8
  store i64 8, i64* %18, align 8
  br label %291

291:                                              ; preds = %280, %245
  %292 = load i64, i64* %13, align 8
  %293 = load i64, i64* @SS_RESPONSE_INFO_LEN_VALID, align 8
  %294 = and i64 %292, %293
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %330

296:                                              ; preds = %291
  %297 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %298 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %296
  %301 = load i64, i64* %19, align 8
  %302 = load i32*, i32** %23, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 %301
  store i32* %303, i32** %23, align 8
  %304 = load i64, i64* %19, align 8
  %305 = load i64, i64* %18, align 8
  %306 = sub i64 %305, %304
  store i64 %306, i64* %18, align 8
  br label %307

307:                                              ; preds = %300, %296
  %308 = load i64, i64* %19, align 8
  %309 = icmp ugt i64 %308, 3
  br i1 %309, label %310, label %329

310:                                              ; preds = %307
  %311 = load i32*, i32** %22, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 3
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %310
  %316 = load i32, i32* @ql_dbg_io, align 4
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = inttoptr i64 %320 to %struct.TYPE_23__*
  %322 = load i64, i64* %19, align 8
  %323 = load i32*, i32** %22, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 3
  %325 = load i32, i32* %324, align 4
  %326 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %316, %struct.TYPE_23__* %321, i32 12313, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %322, i32 %325)
  %327 = load i32, i32* @DID_BUS_BUSY, align 4
  %328 = shl i32 %327, 16
  store i32 %328, i32* %29, align 4
  br label %656

329:                                              ; preds = %310, %307
  br label %330

330:                                              ; preds = %329, %291
  %331 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %332 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %344

334:                                              ; preds = %330
  %335 = load i64, i64* %12, align 8
  %336 = icmp eq i64 %335, 139
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load i64, i64* %13, align 8
  %339 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %340 = and i64 %338, %339
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load i64, i64* @CS_DATA_OVERRUN, align 8
  store i64 %343, i64* %12, align 8
  br label %344

344:                                              ; preds = %342, %337, %334, %330
  %345 = load i64, i64* %12, align 8
  switch i64 %345, label %652 [
    i64 139, label %346
    i64 131, label %346
    i64 138, label %430
    i64 133, label %576
    i64 134, label %576
    i64 135, label %576
    i64 136, label %576
    i64 132, label %576
    i64 129, label %576
    i64 130, label %576
    i64 140, label %620
    i64 137, label %623
    i64 128, label %630
  ]

346:                                              ; preds = %344, %344
  %347 = load i64, i64* %13, align 8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* @DID_OK, align 4
  %351 = shl i32 %350, 16
  store i32 %351, i32* %29, align 4
  br label %655

352:                                              ; preds = %346
  %353 = load i64, i64* %13, align 8
  %354 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %355 = load i64, i64* @SS_RESIDUAL_OVER, align 8
  %356 = or i64 %354, %355
  %357 = and i64 %353, %356
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %390

359:                                              ; preds = %352
  %360 = load i64, i64* %20, align 8
  store i64 %360, i64* %16, align 8
  %361 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %362 = load i64, i64* %16, align 8
  %363 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %361, i64 %362)
  %364 = load i32, i32* %15, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %389, label %366

366:                                              ; preds = %359
  %367 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %368 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %367)
  %369 = load i64, i64* %16, align 8
  %370 = sub i64 %368, %369
  %371 = trunc i64 %370 to i32
  %372 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %373 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp ult i32 %371, %374
  br i1 %375, label %376, label %389

376:                                              ; preds = %366
  %377 = load i32, i32* @ql_dbg_io, align 4
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = inttoptr i64 %381 to %struct.TYPE_23__*
  %383 = load i64, i64* %16, align 8
  %384 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %385 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %384)
  %386 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %377, %struct.TYPE_23__* %382, i32 12314, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %383, i64 %385)
  %387 = load i32, i32* @DID_ERROR, align 4
  %388 = shl i32 %387, 16
  store i32 %388, i32* %29, align 4
  br label %655

389:                                              ; preds = %366, %359
  br label %390

390:                                              ; preds = %389, %352
  %391 = load i32, i32* @DID_OK, align 4
  %392 = shl i32 %391, 16
  %393 = load i32, i32* %15, align 4
  %394 = or i32 %392, %393
  store i32 %394, i32* %29, align 4
  %395 = load i32, i32* %15, align 4
  %396 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %406

398:                                              ; preds = %390
  %399 = load i32, i32* @ql_dbg_io, align 4
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to %struct.TYPE_23__*
  %405 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %399, %struct.TYPE_23__* %404, i32 12315, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %655

406:                                              ; preds = %390
  store i32 0, i32* %28, align 4
  %407 = load i32, i32* %15, align 4
  %408 = load i32, i32* @SS_CHECK_CONDITION, align 4
  %409 = icmp ne i32 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  br label %655

411:                                              ; preds = %406
  %412 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %413 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %416 = call i32 @memset(i32 %414, i32 0, i32 %415)
  %417 = load i64, i64* %13, align 8
  %418 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %419 = and i64 %417, %418
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %411
  br label %655

422:                                              ; preds = %411
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %424 = load i32*, i32** %23, align 8
  %425 = load i64, i64* %18, align 8
  %426 = load i64, i64* %17, align 8
  %427 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %428 = load i32, i32* %29, align 4
  %429 = call i32 @qla2x00_handle_sense(%struct.TYPE_22__* %423, i32* %424, i64 %425, i64 %426, %struct.rsp_que* %427, i32 %428)
  br label %655

430:                                              ; preds = %344
  %431 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %432 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %430
  %435 = load i64, i64* %21, align 8
  br label %438

436:                                              ; preds = %430
  %437 = load i64, i64* %20, align 8
  br label %438

438:                                              ; preds = %436, %434
  %439 = phi i64 [ %435, %434 ], [ %437, %436 ]
  store i64 %439, i64* %16, align 8
  %440 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %441 = load i64, i64* %16, align 8
  %442 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %440, i64 %441)
  %443 = load i64, i64* %13, align 8
  %444 = load i64, i64* @SS_RESIDUAL_UNDER, align 8
  %445 = and i64 %443, %444
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %497

447:                                              ; preds = %438
  %448 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %449 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %470

451:                                              ; preds = %447
  %452 = load i64, i64* %21, align 8
  %453 = load i64, i64* %20, align 8
  %454 = icmp ne i64 %452, %453
  br i1 %454, label %455, label %470

455:                                              ; preds = %451
  %456 = load i32, i32* @ql_dbg_io, align 4
  %457 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = sext i32 %459 to i64
  %461 = inttoptr i64 %460 to %struct.TYPE_23__*
  %462 = load i64, i64* %16, align 8
  %463 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %464 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %463)
  %465 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %456, %struct.TYPE_23__* %461, i32 12317, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %462, i64 %464)
  %466 = load i32, i32* @DID_ERROR, align 4
  %467 = shl i32 %466, 16
  %468 = load i32, i32* %15, align 4
  %469 = or i32 %467, %468
  store i32 %469, i32* %29, align 4
  br label %536

470:                                              ; preds = %451, %447
  %471 = load i32, i32* %15, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %496, label %473

473:                                              ; preds = %470
  %474 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %475 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %474)
  %476 = load i64, i64* %16, align 8
  %477 = sub i64 %475, %476
  %478 = trunc i64 %477 to i32
  %479 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %480 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = icmp ult i32 %478, %481
  br i1 %482, label %483, label %496

483:                                              ; preds = %473
  %484 = load i32, i32* @ql_dbg_io, align 4
  %485 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = sext i32 %487 to i64
  %489 = inttoptr i64 %488 to %struct.TYPE_23__*
  %490 = load i64, i64* %16, align 8
  %491 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %492 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %491)
  %493 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %484, %struct.TYPE_23__* %489, i32 12318, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %490, i64 %492)
  %494 = load i32, i32* @DID_ERROR, align 4
  %495 = shl i32 %494, 16
  store i32 %495, i32* %29, align 4
  br label %655

496:                                              ; preds = %473, %470
  br label %531

497:                                              ; preds = %438
  %498 = load i32, i32* %15, align 4
  %499 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %500 = icmp ne i32 %498, %499
  br i1 %500, label %501, label %520

501:                                              ; preds = %497
  %502 = load i32, i32* %15, align 4
  %503 = load i32, i32* @SAM_STAT_BUSY, align 4
  %504 = icmp ne i32 %502, %503
  br i1 %504, label %505, label %520

505:                                              ; preds = %501
  %506 = load i32, i32* @ql_dbg_io, align 4
  %507 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %508 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = sext i32 %509 to i64
  %511 = inttoptr i64 %510 to %struct.TYPE_23__*
  %512 = load i64, i64* %16, align 8
  %513 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %514 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %513)
  %515 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %506, %struct.TYPE_23__* %511, i32 12319, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %512, i64 %514)
  %516 = load i32, i32* @DID_ERROR, align 4
  %517 = shl i32 %516, 16
  %518 = load i32, i32* %15, align 4
  %519 = or i32 %517, %518
  store i32 %519, i32* %29, align 4
  br label %536

520:                                              ; preds = %501, %497
  %521 = load i32, i32* @ql_dbg_io, align 4
  %522 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %523 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 4
  %525 = sext i32 %524 to i64
  %526 = inttoptr i64 %525 to %struct.TYPE_23__*
  %527 = load i64, i64* %13, align 8
  %528 = load i32, i32* %15, align 4
  %529 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %521, %struct.TYPE_23__* %526, i32 12336, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %527, i32 %528)
  br label %530

530:                                              ; preds = %520
  br label %531

531:                                              ; preds = %530, %496
  %532 = load i32, i32* @DID_OK, align 4
  %533 = shl i32 %532, 16
  %534 = load i32, i32* %15, align 4
  %535 = or i32 %533, %534
  store i32 %535, i32* %29, align 4
  store i32 0, i32* %28, align 4
  br label %536

536:                                              ; preds = %531, %505, %455
  %537 = load i32, i32* %15, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %575

539:                                              ; preds = %536
  %540 = load i32, i32* %15, align 4
  %541 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %542 = icmp eq i32 %540, %541
  br i1 %542, label %543, label %551

543:                                              ; preds = %539
  %544 = load i32, i32* @ql_dbg_io, align 4
  %545 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = sext i32 %547 to i64
  %549 = inttoptr i64 %548 to %struct.TYPE_23__*
  %550 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %544, %struct.TYPE_23__* %549, i32 12320, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %28, align 4
  br label %655

551:                                              ; preds = %539
  %552 = load i32, i32* %15, align 4
  %553 = load i32, i32* @SS_CHECK_CONDITION, align 4
  %554 = icmp ne i32 %552, %553
  br i1 %554, label %555, label %556

555:                                              ; preds = %551
  br label %655

556:                                              ; preds = %551
  %557 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %558 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %557, i32 0, i32 4
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %561 = call i32 @memset(i32 %559, i32 0, i32 %560)
  %562 = load i64, i64* %13, align 8
  %563 = load i64, i64* @SS_SENSE_LEN_VALID, align 8
  %564 = and i64 %562, %563
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %567, label %566

566:                                              ; preds = %556
  br label %655

567:                                              ; preds = %556
  %568 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %569 = load i32*, i32** %23, align 8
  %570 = load i64, i64* %18, align 8
  %571 = load i64, i64* %17, align 8
  %572 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %573 = load i32, i32* %29, align 4
  %574 = call i32 @qla2x00_handle_sense(%struct.TYPE_22__* %568, i32* %569, i64 %570, i64 %571, %struct.rsp_que* %572, i32 %573)
  br label %575

575:                                              ; preds = %567, %536
  br label %655

576:                                              ; preds = %344, %344, %344, %344, %344, %344, %344
  %577 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %578 = shl i32 %577, 16
  store i32 %578, i32* %29, align 4
  %579 = load i64, i64* %12, align 8
  %580 = icmp eq i64 %579, 129
  br i1 %580, label %581, label %597

581:                                              ; preds = %576
  %582 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %583 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %582)
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %581
  br label %655

586:                                              ; preds = %581
  %587 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %588 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %587, i32 0, i32 2
  %589 = load i32, i32* %588, align 8
  %590 = call i64 @le16_to_cpu(i32 %589)
  %591 = load i64, i64* @SF_LOGOUT_SENT, align 8
  %592 = and i64 %590, %591
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %586
  br label %655

595:                                              ; preds = %586
  br label %596

596:                                              ; preds = %595
  br label %597

597:                                              ; preds = %596, %576
  %598 = load i32, i32* @ql_dbg_io, align 4
  %599 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %600 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = sext i32 %601 to i64
  %603 = inttoptr i64 %602 to %struct.TYPE_23__*
  %604 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %605 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %604, i32 0, i32 2
  %606 = call i32 @atomic_read(i32* %605)
  %607 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %598, %struct.TYPE_23__* %603, i32 12321, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %606)
  %608 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %609 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %608, i32 0, i32 2
  %610 = call i32 @atomic_read(i32* %609)
  %611 = load i32, i32* @FCS_ONLINE, align 4
  %612 = icmp eq i32 %610, %611
  br i1 %612, label %613, label %619

613:                                              ; preds = %597
  %614 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %615 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %614, i32 0, i32 1
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %618 = call i32 @qla2x00_mark_device_lost(i32 %616, %struct.TYPE_24__* %617, i32 1, i32 1)
  br label %619

619:                                              ; preds = %613, %597
  br label %655

620:                                              ; preds = %344
  %621 = load i32, i32* @DID_RESET, align 4
  %622 = shl i32 %621, 16
  store i32 %622, i32* %29, align 4
  br label %655

623:                                              ; preds = %344
  %624 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %625 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %11, align 8
  %626 = call i32 @qla2x00_handle_dif_error(%struct.TYPE_22__* %624, %struct.sts_entry_24xx* %625)
  store i32 %626, i32* %28, align 4
  %627 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %628 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  store i32 %629, i32* %29, align 4
  br label %655

630:                                              ; preds = %344
  %631 = load i32, i32* @DID_ERROR, align 4
  %632 = shl i32 %631, 16
  store i32 %632, i32* %29, align 4
  %633 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %634 = call i32 @IS_PI_SPLIT_DET_CAPABLE(%struct.qla_hw_data* %633)
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %630
  br label %655

637:                                              ; preds = %630
  %638 = load i64, i64* %30, align 8
  %639 = load i64, i64* @BIT_4, align 8
  %640 = and i64 %638, %639
  %641 = icmp ne i64 %640, 0
  br i1 %641, label %642, label %651

642:                                              ; preds = %637
  %643 = load i32, i32* @KERN_WARNING, align 4
  %644 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %645 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %646 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %645, i32 0, i32 3
  %647 = load %struct.TYPE_18__*, %struct.TYPE_18__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 4
  %650 = call i32 @scmd_printk(i32 %643, %struct.scsi_cmnd* %644, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %649)
  br label %651

651:                                              ; preds = %642, %637
  br label %655

652:                                              ; preds = %344
  %653 = load i32, i32* @DID_ERROR, align 4
  %654 = shl i32 %653, 16
  store i32 %654, i32* %29, align 4
  br label %655

655:                                              ; preds = %652, %651, %636, %623, %620, %619, %594, %585, %575, %566, %555, %543, %483, %422, %421, %410, %398, %376, %349
  br label %656

656:                                              ; preds = %655, %315
  %657 = load i32, i32* %28, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %754

659:                                              ; preds = %656
  %660 = load i32, i32* @ql_dbg_io, align 4
  %661 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %662 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = sext i32 %663 to i64
  %665 = inttoptr i64 %664 to %struct.TYPE_23__*
  %666 = load i64, i64* %12, align 8
  %667 = load i64, i64* %13, align 8
  %668 = load i32, i32* %29, align 4
  %669 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %670 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %669, i32 0, i32 0
  %671 = load i32, i32* %670, align 8
  %672 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %673 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %672, i32 0, i32 3
  %674 = load %struct.TYPE_18__*, %struct.TYPE_18__** %673, align 8
  %675 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %674, i32 0, i32 1
  %676 = load i32, i32* %675, align 4
  %677 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %678 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %677, i32 0, i32 3
  %679 = load %struct.TYPE_18__*, %struct.TYPE_18__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 4
  %682 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %683 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %683, i32 0, i32 0
  %685 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %684, i32 0, i32 2
  %686 = load i32, i32* %685, align 4
  %687 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %688 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %687, i32 0, i32 0
  %689 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %688, i32 0, i32 0
  %690 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %689, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %693 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %694, i32 0, i32 0
  %696 = load i32, i32* %695, align 4
  %697 = load i64, i64* %14, align 8
  %698 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %699 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %698, i32 0, i32 2
  %700 = load i32*, i32** %699, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 0
  %702 = load i32, i32* %701, align 4
  %703 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %704 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %703, i32 0, i32 2
  %705 = load i32*, i32** %704, align 8
  %706 = getelementptr inbounds i32, i32* %705, i64 1
  %707 = load i32, i32* %706, align 4
  %708 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %709 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %708, i32 0, i32 2
  %710 = load i32*, i32** %709, align 8
  %711 = getelementptr inbounds i32, i32* %710, i64 2
  %712 = load i32, i32* %711, align 4
  %713 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %714 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %713, i32 0, i32 2
  %715 = load i32*, i32** %714, align 8
  %716 = getelementptr inbounds i32, i32* %715, i64 3
  %717 = load i32, i32* %716, align 4
  %718 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %719 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %718, i32 0, i32 2
  %720 = load i32*, i32** %719, align 8
  %721 = getelementptr inbounds i32, i32* %720, i64 4
  %722 = load i32, i32* %721, align 4
  %723 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %724 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %723, i32 0, i32 2
  %725 = load i32*, i32** %724, align 8
  %726 = getelementptr inbounds i32, i32* %725, i64 5
  %727 = load i32, i32* %726, align 4
  %728 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %729 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %728, i32 0, i32 2
  %730 = load i32*, i32** %729, align 8
  %731 = getelementptr inbounds i32, i32* %730, i64 6
  %732 = load i32, i32* %731, align 4
  %733 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %734 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %733, i32 0, i32 2
  %735 = load i32*, i32** %734, align 8
  %736 = getelementptr inbounds i32, i32* %735, i64 7
  %737 = load i32, i32* %736, align 4
  %738 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %739 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %738, i32 0, i32 2
  %740 = load i32*, i32** %739, align 8
  %741 = getelementptr inbounds i32, i32* %740, i64 8
  %742 = load i32, i32* %741, align 4
  %743 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %744 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %743, i32 0, i32 2
  %745 = load i32*, i32** %744, align 8
  %746 = getelementptr inbounds i32, i32* %745, i64 9
  %747 = load i32, i32* %746, align 4
  %748 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %749 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %748)
  %750 = load i64, i64* %19, align 8
  %751 = load i64, i64* %20, align 8
  %752 = load i64, i64* %21, align 8
  %753 = call i32 (i32, %struct.TYPE_23__*, i32, i8*, ...) @ql_dbg(i32 %660, %struct.TYPE_23__* %665, i32 12322, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.10, i64 0, i64 0), i64 %666, i64 %667, i32 %668, i32 %671, i32 %676, i32 %681, i32 %686, i32 %691, i32 %696, i64 %697, i32 %702, i32 %707, i32 %712, i32 %717, i32 %722, i32 %727, i32 %732, i32 %737, i32 %742, i32 %747, i64 %749, i64 %750, i64 %751, i64 %752)
  br label %754

754:                                              ; preds = %659, %656
  %755 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %756 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %755, i32 0, i32 0
  %757 = load i32*, i32** %756, align 8
  %758 = icmp eq i32* %757, null
  br i1 %758, label %759, label %767

759:                                              ; preds = %754
  %760 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %761 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %760, i32 0, i32 1
  %762 = load i32 (%struct.qla_hw_data*, %struct.TYPE_22__*, i32)*, i32 (%struct.qla_hw_data*, %struct.TYPE_22__*, i32)** %761, align 8
  %763 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  %764 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %765 = load i32, i32* %29, align 4
  %766 = call i32 %762(%struct.qla_hw_data* %763, %struct.TYPE_22__* %764, i32 %765)
  br label %767

767:                                              ; preds = %94, %140, %159, %171, %186, %759, %754
  ret void
}

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @LSW(i32) #1

declare dso_local i64 @MSW(i32) #1

declare dso_local i64 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_23__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qla25xx_process_bidir_status_iocb(%struct.TYPE_23__*, i8*, %struct.req_que*, i64) #1

declare dso_local i32 @qla2x00_process_completed_request(%struct.TYPE_23__*, %struct.req_que*, i64) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_22__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @host_to_fcp_swap(i32*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @qla2x00_handle_sense(%struct.TYPE_22__*, i32*, i64, i64, %struct.rsp_que*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qla2x00_mark_device_lost(i32, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @qla2x00_handle_dif_error(%struct.TYPE_22__*, %struct.sts_entry_24xx*) #1

declare dso_local i32 @IS_PI_SPLIT_DET_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
