; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_ct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_22__, %struct.TYPE_32__, %struct.TYPE_29__*, %struct.Scsi_Host* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_23__ = type { i8*, i32, i32, %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { %struct.fc_bsg_job* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__, %struct.qla_hw_data* }
%struct.TYPE_25__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 }
%struct.fc_port = type { i32, %struct.TYPE_31__, %struct.TYPE_24__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32 }

@DRIVER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"FC_BSG_HST_CT\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dma_map_sg return %d for request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dma_map_sg return %d for reply\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt:%x dma_reply_sg_cnt: %x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Host is not online.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown loop id: %x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to allocate fcport.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"qla2x00_get_sp failed.\0A\00", align 1
@SRB_CT_CMD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"bsg_ct\00", align 1
@qla2x00_bsg_sp_free = common dso_local global i32 0, align 4
@qla2x00_bsg_job_done = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [67 x i8] c"bsg rqst type: %s else type: %x - loop-id=%x portid=%02x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"qla2x00_start_sp failed=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_process_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_process_ct(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fc_port*, align 8
  %13 = alloca i8*, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %14 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %15 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %14, i32 0, i32 3
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %5, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %18 = call %struct.TYPE_24__* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %6, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 2
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %7, align 8
  %22 = load i32, i32* @DRIVER_ERROR, align 4
  %23 = shl i32 %22, 16
  store i32 %23, i32* %8, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 0
  %28 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %29 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_map_sg(i32* %27, i32 %31, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* @ql_log_warn, align 4
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_log(i32 %41, %struct.TYPE_24__* %42, i32 28687, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %309

47:                                               ; preds = %1
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %53 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %57 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = call i32 @dma_map_sg(i32* %51, i32 %55, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %47
  %65 = load i32, i32* @ql_log_warn, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_log(i32 %65, %struct.TYPE_24__* %66, i32 28688, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %309

71:                                               ; preds = %47
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %74 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %72, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %81 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %79, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %78, %71
  %86 = load i32, i32* @ql_log_warn, align 4
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %88 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %89 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %94 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_log(i32 %86, %struct.TYPE_24__* %87, i32 28689, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %92, i32 %96, i32 %97)
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %280

101:                                              ; preds = %78
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @ql_log_warn, align 4
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %110 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_log(i32 %108, %struct.TYPE_24__* %109, i32 28690, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %280

113:                                              ; preds = %101
  %114 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %115 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %114, i32 0, i32 2
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, -16777216
  %122 = lshr i32 %121, 24
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  switch i32 %123, label %131 [
    i32 252, label %124
    i32 250, label %127
  ]

124:                                              ; preds = %113
  %125 = load i32, i32* @NPH_SNS, align 4
  %126 = call i32 @cpu_to_le16(i32 %125)
  store i32 %126, i32* %11, align 4
  br label %138

127:                                              ; preds = %113
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %11, align 4
  br label %138

131:                                              ; preds = %113
  %132 = load i32, i32* @ql_dbg_user, align 4
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i32 %132, %struct.TYPE_24__* %133, i32 28691, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %280

138:                                              ; preds = %127, %124
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call %struct.fc_port* @qla2x00_alloc_fcport(%struct.TYPE_24__* %139, i32 %140)
  store %struct.fc_port* %141, %struct.fc_port** %12, align 8
  %142 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %143 = icmp ne %struct.fc_port* %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @ql_log_warn, align 4
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %147 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_log(i32 %145, %struct.TYPE_24__* %146, i32 28692, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  br label %280

150:                                              ; preds = %138
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %152 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %153 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %152, i32 0, i32 2
  store %struct.TYPE_24__* %151, %struct.TYPE_24__** %153, align 8
  %154 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %155 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %154, i32 0, i32 2
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %164 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  store i32 %162, i32* %166, align 4
  %167 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %168 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %167, i32 0, i32 2
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %177 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 1
  store i32 %175, i32* %179, align 4
  %180 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %181 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %180, i32 0, i32 2
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %190 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 2
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %195 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %197 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call %struct.TYPE_23__* @qla2x00_get_sp(%struct.TYPE_24__* %196, %struct.fc_port* %197, i32 %198)
  store %struct.TYPE_23__* %199, %struct.TYPE_23__** %4, align 8
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %201 = icmp ne %struct.TYPE_23__* %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %150
  %203 = load i32, i32* @ql_log_warn, align 4
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %205 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_log(i32 %203, %struct.TYPE_24__* %204, i32 28693, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %8, align 4
  br label %277

208:                                              ; preds = %150
  %209 = load i32, i32* @SRB_CT_CMD, align 4
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 5
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %213, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %214, %215
  %217 = call i32 @qla24xx_calc_ct_iocbs(i32 %216)
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 8
  %220 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 0
  store %struct.fc_bsg_job* %220, %struct.fc_bsg_job** %223, align 8
  %224 = load i32, i32* @qla2x00_bsg_sp_free, align 4
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @qla2x00_bsg_job_done, align 4
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @ql_dbg_user, align 4
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %232 = load i8*, i8** %13, align 8
  %233 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %234 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %233, i32 0, i32 2
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = ashr i32 %239, 16
  %241 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %242 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %245 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %250 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %255 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_dbg(i32 %230, %struct.TYPE_24__* %231, i32 28694, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i8* %232, i32 %240, i32 %243, i32 %248, i32 %253, i32 %258)
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %261 = call i32 @qla2x00_start_sp(%struct.TYPE_23__* %260)
  store i32 %261, i32* %8, align 4
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @QLA_SUCCESS, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %208
  %266 = load i32, i32* @ql_log_warn, align 4
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call i32 (i32, %struct.TYPE_24__*, i32, i8*, ...) @ql_log(i32 %266, %struct.TYPE_24__* %267, i32 28695, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %268)
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %272 = call i32 @qla2x00_rel_sp(%struct.TYPE_24__* %270, %struct.TYPE_23__* %271)
  %273 = load i32, i32* @EIO, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %8, align 4
  br label %277

275:                                              ; preds = %208
  %276 = load i32, i32* %8, align 4
  store i32 %276, i32* %2, align 4
  br label %311

277:                                              ; preds = %265, %202
  %278 = load %struct.fc_port*, %struct.fc_port** %12, align 8
  %279 = call i32 @kfree(%struct.fc_port* %278)
  br label %280

280:                                              ; preds = %277, %144, %131, %107, %85
  %281 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %282 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %281, i32 0, i32 0
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 0
  %285 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %286 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %290 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @DMA_TO_DEVICE, align 4
  %294 = call i32 @dma_unmap_sg(i32* %284, i32 %288, i32 %292, i32 %293)
  %295 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %296 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %295, i32 0, i32 0
  %297 = load %struct.TYPE_33__*, %struct.TYPE_33__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %297, i32 0, i32 0
  %299 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %300 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %304 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %308 = call i32 @dma_unmap_sg(i32* %298, i32 %302, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %280, %64, %40
  %310 = load i32, i32* %8, align 4
  store i32 %310, i32* %2, align 4
  br label %311

311:                                              ; preds = %309, %275
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local %struct.TYPE_24__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_24__*, i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_24__*, i32, i8*, ...) #1

declare dso_local %struct.fc_port* @qla2x00_alloc_fcport(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_23__* @qla2x00_get_sp(%struct.TYPE_24__*, %struct.fc_port*, i32) #1

declare dso_local i32 @qla24xx_calc_ct_iocbs(i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_23__*) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @kfree(%struct.fc_port*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
