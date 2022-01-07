; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_process_bidir_status_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla25xx_process_bidir_status_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.req_que = type { i64, i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32)*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.fc_bsg_job* }
%struct.fc_bsg_job = type { i32, %struct.TYPE_26__*, %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.sts_entry_24xx = type { i32, i32 }

@EXT_STATUS_OK = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid SCSI completion handle 0x%x.\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Req:%d: Invalid ISP SCSI completion handle(0x%x)\0A\00", align 1
@SS_MASK = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Command completed with date overrun thread_id=%d\0A\00", align 1
@EXT_STATUS_DATA_OVERRUN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"Command completed with date underrun thread_id=%d\0A\00", align 1
@EXT_STATUS_DATA_UNDERRUN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"Command completed with read data overrun thread_id=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Command completed with read and write data overrun thread_id=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Command completed with read data over and write data underrun thread_id=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Command completed with read data data underrun thread_id=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"Command completed with read data under and write data overrun thread_id=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Command completed with read and write data underrun thread_id=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Command completed with data DMA error thread_id=%d\0A\00", align 1
@EXT_STATUS_DMA_ERR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"Command completed with timeout thread_id=%d\0A\00", align 1
@EXT_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [60 x i8] c"Command completed with completion status=0x%x thread_id=%d\0A\00", align 1
@EXT_STATUS_ERR = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i8*, %struct.req_que*, i64)* @qla25xx_process_bidir_status_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_process_bidir_status_iocb(%struct.TYPE_18__* %0, i8* %1, %struct.req_que* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.req_que*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.fc_bsg_job*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.sts_entry_24xx*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.req_que* %2, %struct.req_que** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  store %struct.qla_hw_data* %20, %struct.qla_hw_data** %9, align 8
  %21 = load i64, i64* @EXT_STATUS_OK, align 8
  store i64 %21, i64* %14, align 8
  store %struct.fc_bsg_job* null, %struct.fc_bsg_job** %15, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %16, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to %struct.sts_entry_24xx*
  store %struct.sts_entry_24xx* %25, %struct.sts_entry_24xx** %17, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.req_que*, %struct.req_que** %7, align 8
  %28 = getelementptr inbounds %struct.req_que, %struct.req_que* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load i32, i32* @ql_log_warn, align 4
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i64, ...) @ql_log(i32 %32, %struct.TYPE_18__* %33, i32 28847, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  br label %215

40:                                               ; preds = %4
  %41 = load %struct.req_que*, %struct.req_que** %7, align 8
  %42 = getelementptr inbounds %struct.req_que, %struct.req_que* %41, i32 0, i32 2
  %43 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %43, i64 %44
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %10, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.req_que*, %struct.req_que** %7, align 8
  %51 = getelementptr inbounds %struct.req_que, %struct.req_que* %50, i32 0, i32 2
  %52 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %52, i64 %53
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %54, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %57, align 8
  store %struct.fc_bsg_job* %58, %struct.fc_bsg_job** %15, align 8
  br label %72

59:                                               ; preds = %40
  %60 = load i32, i32* @ql_log_warn, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = load %struct.req_que*, %struct.req_que** %7, align 8
  %63 = getelementptr inbounds %struct.req_que, %struct.req_que* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i64, ...) @ql_log(i32 %60, %struct.TYPE_18__* %61, i32 28848, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %66)
  %68 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  br label %215

72:                                               ; preds = %49
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %74 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %17, align 8
  %78 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.sts_entry_24xx*, %struct.sts_entry_24xx** %17, align 8
  %82 = getelementptr inbounds %struct.sts_entry_24xx, %struct.sts_entry_24xx* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = load i32, i32* @SS_MASK, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %12, align 4
  br label %98

87:                                               ; preds = %72
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le16_to_cpu(i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  %96 = load i32, i32* @SS_MASK, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %87, %76
  %99 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %15, align 8
  %100 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %99, i32 0, i32 3
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %11, align 4
  switch i32 %108, label %183 [
    i32 131, label %109
    i32 130, label %123
    i32 129, label %129
    i32 137, label %135
    i32 133, label %141
    i32 136, label %147
    i32 135, label %153
    i32 134, label %159
    i32 132, label %165
    i32 138, label %171
    i32 128, label %177
  ]

109:                                              ; preds = %98
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %15, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %15, align 8
  %118 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %117, i32 0, i32 1
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  store i64 %116, i64* %120, align 8
  %121 = load i64, i64* @EXT_STATUS_OK, align 8
  store i64 %121, i64* %14, align 8
  br label %122

122:                                              ; preds = %112, %109
  br label %195

123:                                              ; preds = %98
  %124 = load i32, i32* @ql_dbg_user, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %124, %struct.TYPE_18__* %125, i32 28849, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %128, i64* %14, align 8
  br label %190

129:                                              ; preds = %98
  %130 = load i32, i32* @ql_dbg_user, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %130, %struct.TYPE_18__* %131, i32 28850, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  %134 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %134, i64* %14, align 8
  br label %190

135:                                              ; preds = %98
  %136 = load i32, i32* @ql_dbg_user, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %136, %struct.TYPE_18__* %137, i32 28851, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %140, i64* %14, align 8
  br label %190

141:                                              ; preds = %98
  %142 = load i32, i32* @ql_dbg_user, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %142, %struct.TYPE_18__* %143, i32 28852, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %146, i64* %14, align 8
  br label %190

147:                                              ; preds = %98
  %148 = load i32, i32* @ql_dbg_user, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %148, %struct.TYPE_18__* %149, i32 28853, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %150)
  %152 = load i64, i64* @EXT_STATUS_DATA_OVERRUN, align 8
  store i64 %152, i64* %14, align 8
  br label %190

153:                                              ; preds = %98
  %154 = load i32, i32* @ql_dbg_user, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %154, %struct.TYPE_18__* %155, i32 28854, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %158, i64* %14, align 8
  br label %190

159:                                              ; preds = %98
  %160 = load i32, i32* @ql_dbg_user, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %160, %struct.TYPE_18__* %161, i32 28855, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  %164 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %164, i64* %14, align 8
  br label %190

165:                                              ; preds = %98
  %166 = load i32, i32* @ql_dbg_user, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %166, %struct.TYPE_18__* %167, i32 28856, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load i64, i64* @EXT_STATUS_DATA_UNDERRUN, align 8
  store i64 %170, i64* %14, align 8
  br label %190

171:                                              ; preds = %98
  %172 = load i32, i32* @ql_dbg_user, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %174 = load i32, i32* %13, align 4
  %175 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %172, %struct.TYPE_18__* %173, i32 28857, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  %176 = load i64, i64* @EXT_STATUS_DMA_ERR, align 8
  store i64 %176, i64* %14, align 8
  br label %190

177:                                              ; preds = %98
  %178 = load i32, i32* @ql_dbg_user, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %178, %struct.TYPE_18__* %179, i32 28858, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %180)
  %182 = load i64, i64* @EXT_STATUS_TIMEOUT, align 8
  store i64 %182, i64* %14, align 8
  br label %190

183:                                              ; preds = %98
  %184 = load i32, i32* @ql_dbg_user, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %13, align 4
  %188 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, i32, ...) @ql_dbg(i32 %184, %struct.TYPE_18__* %185, i32 28859, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load i64, i64* @EXT_STATUS_ERR, align 8
  store i64 %189, i64* %14, align 8
  br label %190

190:                                              ; preds = %183, %177, %171, %165, %159, %153, %147, %141, %135, %129, %123
  %191 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %15, align 8
  %192 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %191, i32 0, i32 1
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %190, %122
  %196 = load i64, i64* %14, align 8
  %197 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %15, align 8
  %198 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %197, i32 0, i32 1
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  store i64 %196, i64* %204, align 8
  %205 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %15, align 8
  %206 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %205, i32 0, i32 0
  store i32 4, i32* %206, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32)** %208, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %212 = load i32, i32* @DID_OK, align 4
  %213 = shl i32 %212, 6
  %214 = call i32 %209(%struct.TYPE_18__* %210, %struct.TYPE_17__* %211, i32 %213)
  br label %215

215:                                              ; preds = %195, %59, %31
  ret void
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_18__*, i32, i8*, i64, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_18__*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
