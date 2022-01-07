; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qlafx00_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qlafx00_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_23__*, %struct.Scsi_Host* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_24__, %struct.qla_hw_data* }
%struct.TYPE_24__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.qla_mt_iocb_rqst_fx00 = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i8*, i32, i32, %struct.TYPE_25__, i32, i32 }
%struct.TYPE_25__ = type { %struct.fc_bsg_job* }
%struct.fc_port = type { i32, %struct.TYPE_20__* }

@DRIVER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"FC_BSG_HST_FX_MGMT\00", align 1
@ql_dbg_user = common dso_local global i64 0, align 8
@ql_dbg_verbose = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Host is not online.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SRB_FXDISC_REQ_DMA_VALID = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"dma_map_sg return %d for request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SRB_FXDISC_RESP_DMA_VALID = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"dma_map_sg return %d for reply\0A\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt:%x dma_reply_sg_cnt: %x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to allocate fcport.\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"qla2x00_get_sp failed.\0A\00", align 1
@SRB_FXIOCB_BCMD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"bsg_fx_mgmt\00", align 1
@qla2x00_bsg_sp_free = common dso_local global i32 0, align 4
@qla2x00_bsg_job_done = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"bsg rqst type: %s fx_mgmt_type: %x id=%x\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"qla2x00_start_sp failed=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qlafx00_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlafx00_mgmt_cmd(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_mt_iocb_rqst_fx00*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fc_port*, align 8
  %13 = alloca i8*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %15 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %14, i32 0, i32 3
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %4, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call %struct.TYPE_20__* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %5, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %6, align 8
  %22 = load i32, i32* @DRIVER_ERROR, align 4
  %23 = shl i32 %22, 16
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %24 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %25 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %24, i32 0, i32 2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = bitcast i32* %31 to %struct.qla_mt_iocb_rqst_fx00*
  store %struct.qla_mt_iocb_rqst_fx00* %32, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %33 = load i64, i64* @ql_dbg_user, align 8
  %34 = load i64, i64* @ql_dbg_verbose, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %38 = bitcast %struct.qla_mt_iocb_rqst_fx00* %37 to i32*
  %39 = call i32 @ql_dump_buffer(i64 %35, %struct.TYPE_20__* %36, i32 28879, i32* %38, i32 12)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %1
  %46 = load i32, i32* @ql_log_warn, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ql_log(i32 %46, %struct.TYPE_20__* %47, i32 28880, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %263

51:                                               ; preds = %1
  %52 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %53 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SRB_FXDISC_REQ_DMA_VALID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %51
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %64 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %68 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_map_sg(i32* %62, i32 %66, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* @ql_log_warn, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ql_log(i32 %76, %struct.TYPE_20__* %77, i32 28871, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %263

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82, %51
  %84 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %85 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SRB_FXDISC_RESP_DMA_VALID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %83
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 0
  %95 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %96 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %100 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %104 = call i32 @dma_map_sg(i32* %94, i32 %98, i32 %102, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %90
  %108 = load i32, i32* @ql_log_warn, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ql_log(i32 %108, %struct.TYPE_20__* %109, i32 28872, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %240

114:                                              ; preds = %90
  br label %115

115:                                              ; preds = %114, %83
  %116 = load i64, i64* @ql_dbg_user, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %118 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %119 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (i64, %struct.TYPE_20__*, i32, i8*, i8*, i32, i32, ...) @ql_dbg(i64 %116, %struct.TYPE_20__* %117, i32 28873, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i8* %123, i32 %124, i32 %128, i32 %129)
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.fc_port* @qla2x00_alloc_fcport(%struct.TYPE_20__* %131, i32 %132)
  store %struct.fc_port* %133, %struct.fc_port** %12, align 8
  %134 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %135 = icmp ne %struct.fc_port* %134, null
  br i1 %135, label %142, label %136

136:                                              ; preds = %115
  %137 = load i32, i32* @ql_log_warn, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ql_log(i32 %137, %struct.TYPE_20__* %138, i32 28874, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %217

142:                                              ; preds = %115
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call %struct.TYPE_29__* @qla2x00_get_sp(%struct.TYPE_20__* %143, %struct.fc_port* %144, i32 %145)
  store %struct.TYPE_29__* %146, %struct.TYPE_29__** %9, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %148 = icmp ne %struct.TYPE_29__* %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* @ql_log_warn, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ql_log(i32 %150, %struct.TYPE_20__* %151, i32 28875, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %214

155:                                              ; preds = %142
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %158 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %157, i32 0, i32 1
  store %struct.TYPE_20__* %156, %struct.TYPE_20__** %158, align 8
  %159 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %160 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %163 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @SRB_FXIOCB_BCMD, align 4
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %168, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %169, %170
  %172 = call i32 @qla24xx_calc_ct_iocbs(i32 %171)
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  store %struct.fc_bsg_job* %175, %struct.fc_bsg_job** %178, align 8
  %179 = load i32, i32* @qla2x00_bsg_sp_free, align 4
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @qla2x00_bsg_job_done, align 4
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load i64, i64* @ql_dbg_user, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %189 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %192 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i64, %struct.TYPE_20__*, i32, i8*, i8*, i32, i32, ...) @ql_dbg(i64 %185, %struct.TYPE_20__* %186, i32 28876, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* %187, i32 %190, i32 %193)
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %196 = call i32 @qla2x00_start_sp(%struct.TYPE_29__* %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @QLA_SUCCESS, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %155
  %201 = load i32, i32* @ql_log_warn, align 4
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i32 (i32, %struct.TYPE_20__*, i32, i8*, ...) @ql_log(i32 %201, %struct.TYPE_20__* %202, i32 28877, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %203)
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %206 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %207 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @mempool_free(%struct.TYPE_29__* %205, i32 %208)
  %210 = load i32, i32* @EIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %7, align 4
  br label %214

212:                                              ; preds = %155
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %2, align 4
  br label %265

214:                                              ; preds = %200, %149
  %215 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %216 = call i32 @kfree(%struct.fc_port* %215)
  br label %217

217:                                              ; preds = %214, %136
  %218 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %219 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SRB_FXDISC_RESP_DMA_VALID, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %217
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %226 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %225, i32 0, i32 0
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 0
  %229 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %230 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %234 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %238 = call i32 @dma_unmap_sg(i32* %228, i32 %232, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %224, %217
  br label %240

240:                                              ; preds = %239, %107
  %241 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %8, align 8
  %242 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @SRB_FXDISC_REQ_DMA_VALID, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %240
  %248 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %249 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %248, i32 0, i32 0
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %253 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %257 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @DMA_TO_DEVICE, align 4
  %261 = call i32 @dma_unmap_sg(i32* %251, i32 %255, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %247, %240
  br label %263

263:                                              ; preds = %262, %75, %45
  %264 = load i32, i32* %7, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %263, %212
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.TYPE_20__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_20__*, i32, i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_20__*, i32, i8*, i8*, i32, i32, ...) #1

declare dso_local %struct.fc_port* @qla2x00_alloc_fcport(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_29__* @qla2x00_get_sp(%struct.TYPE_20__*, %struct.fc_port*, i32) #1

declare dso_local i32 @qla24xx_calc_ct_iocbs(i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_29__*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @kfree(%struct.fc_port*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
