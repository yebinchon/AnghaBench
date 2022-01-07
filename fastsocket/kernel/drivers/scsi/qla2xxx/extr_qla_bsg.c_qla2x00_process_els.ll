; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_els.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_28__*, %struct.TYPE_37__, %struct.TYPE_36__, %struct.Scsi_Host*, %struct.fc_rport* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32*, i32 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_rport = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_33__, i32, %struct.TYPE_30__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_34__, %struct.qla_hw_data* }
%struct.TYPE_34__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_29__ = type { i8*, i32, i32, %struct.TYPE_38__, i32 }
%struct.TYPE_38__ = type { %struct.fc_bsg_job* }

@DRIVER_ERROR = common dso_local global i32 0, align 4
@FC_BSG_RPT_ELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"FC_BSG_RPT_ELS\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FC_BSG_HST_ELS_NOLOGIN\00", align 1
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"ELS passthru not supported for ISP23xx based adapters.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [85 x i8] c"Multiple SG's are not suppored for ELS requests, request_sg_cnt=%x reply_sg_cnt=%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to login port %06X for ELS passthru.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NPH_FABRIC_CONTROLLER = common dso_local global i32 0, align 4
@NPH_F_PORT = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Host not online.\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [124 x i8] c"dma mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt:%x reply_sg_cnt:%x dma_reply_sg_cnt:%x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SRB_ELS_CMD_RPT = common dso_local global i32 0, align 4
@SRB_ELS_CMD_HST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"bsg_els_rpt\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bsg_els_hst\00", align 1
@qla2x00_bsg_sp_free = common dso_local global i32 0, align 4
@qla2x00_bsg_job_done = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [66 x i8] c"bsg rqst type: %s els type: %x - loop-id=%x portid=%-2x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"qla2x00_start_sp failed = %d\0A\00", align 1
@FC_BSG_HST_ELS_NOLOGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla2x00_process_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_process_els(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.fc_rport*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %5, align 8
  %15 = load i32, i32* @DRIVER_ERROR, align 4
  %16 = shl i32 %15, 16
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %17, i32 0, i32 0
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %26 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %25, i32 0, i32 4
  %27 = load %struct.fc_rport*, %struct.fc_rport** %26, align 8
  store %struct.fc_rport* %27, %struct.fc_rport** %4, align 8
  %28 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %29 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_31__**
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %31, align 8
  store %struct.TYPE_31__* %32, %struct.TYPE_31__** %5, align 8
  %33 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %34 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %33)
  store %struct.Scsi_Host* %34, %struct.Scsi_Host** %6, align 8
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %36 = call %struct.TYPE_30__* @shost_priv(%struct.Scsi_Host* %35)
  store %struct.TYPE_30__* %36, %struct.TYPE_30__** %7, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 1
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %38, align 8
  store %struct.qla_hw_data* %39, %struct.qla_hw_data** %8, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %49

40:                                               ; preds = %1
  %41 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %42 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %41, i32 0, i32 3
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %42, align 8
  store %struct.Scsi_Host* %43, %struct.Scsi_Host** %6, align 8
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %45 = call %struct.TYPE_30__* @shost_priv(%struct.Scsi_Host* %44)
  store %struct.TYPE_30__* %45, %struct.TYPE_30__** %7, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 1
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %47, align 8
  store %struct.qla_hw_data* %48, %struct.qla_hw_data** %8, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %49

49:                                               ; preds = %40, %24
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %51 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @ql_dbg_user, align 4
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %56 = call i32 (i32, %struct.TYPE_30__*, i32, i8*, ...) @ql_dbg(i32 %54, %struct.TYPE_30__* %55, i32 28673, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %13, align 4
  br label %391

59:                                               ; preds = %49
  %60 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %67 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %85

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @ql_dbg_user, align 4
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %74 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %75 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %79 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, %struct.TYPE_30__*, i32, i8*, ...) @ql_dbg(i32 %72, %struct.TYPE_30__* %73, i32 28674, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %81)
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  br label %391

85:                                               ; preds = %65
  %86 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %87 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %86, i32 0, i32 0
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %96 = call i64 @qla2x00_fabric_login(%struct.TYPE_30__* %94, %struct.TYPE_31__* %95, i32* %14)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i32, i32* @ql_dbg_user, align 4
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, %struct.TYPE_30__*, i32, i8*, ...) @ql_dbg(i32 %99, %struct.TYPE_30__* %100, i32 28675, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  br label %391

108:                                              ; preds = %93
  br label %175

109:                                              ; preds = %85
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.TYPE_31__* @qla2x00_alloc_fcport(%struct.TYPE_30__* %110, i32 %111)
  store %struct.TYPE_31__* %112, %struct.TYPE_31__** %5, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %114 = icmp ne %struct.TYPE_31__* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %13, align 4
  br label %391

118:                                              ; preds = %109
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 2
  store %struct.TYPE_30__* %119, %struct.TYPE_30__** %121, align 8
  %122 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %123 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %122, i32 0, i32 0
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 8
  %135 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %136 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %135, i32 0, i32 0
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  %148 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %149 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %148, i32 0, i32 0
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 8
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 253
  br i1 %166, label %167, label %169

167:                                              ; preds = %118
  %168 = load i32, i32* @NPH_FABRIC_CONTROLLER, align 4
  br label %171

169:                                              ; preds = %118
  %170 = load i32, i32* @NPH_F_PORT, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %108
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* @ql_log_warn, align 4
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %184 = call i32 (i32, %struct.TYPE_30__*, i32, i8*, ...) @ql_log(i32 %182, %struct.TYPE_30__* %183, i32 28677, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %13, align 4
  br label %391

187:                                              ; preds = %175
  %188 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %189 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %188, i32 0, i32 0
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %190, i32 0, i32 0
  %192 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %193 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %197 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @DMA_TO_DEVICE, align 4
  %201 = call i32 @dma_map_sg(i32* %191, i32 %195, i32 %199, i32 %200)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %187
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %13, align 4
  br label %379

207:                                              ; preds = %187
  %208 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %209 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %208, i32 0, i32 0
  %210 = load %struct.TYPE_35__*, %struct.TYPE_35__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %210, i32 0, i32 0
  %212 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %213 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %217 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %221 = call i32 @dma_map_sg(i32* %211, i32 %215, i32 %219, i32 %220)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %207
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %13, align 4
  br label %379

227:                                              ; preds = %207
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %230 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %228, %232
  br i1 %233, label %241, label %234

234:                                              ; preds = %227
  %235 = load i32, i32* %12, align 4
  %236 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %237 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %235, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %234, %227
  %242 = load i32, i32* @ql_log_warn, align 4
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %244 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %245 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %250 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = call i32 (i32, %struct.TYPE_30__*, i32, i8*, ...) @ql_log(i32 %242, %struct.TYPE_30__* %243, i32 28680, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0), i32 %247, i32 %248, i32 %252, i32 %253)
  %255 = load i32, i32* @EAGAIN, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %13, align 4
  br label %350

257:                                              ; preds = %234
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %260 = load i32, i32* @GFP_KERNEL, align 4
  %261 = call %struct.TYPE_29__* @qla2x00_get_sp(%struct.TYPE_30__* %258, %struct.TYPE_31__* %259, i32 %260)
  store %struct.TYPE_29__* %261, %struct.TYPE_29__** %9, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %263 = icmp ne %struct.TYPE_29__* %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %257
  %265 = load i32, i32* @ENOMEM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %13, align 4
  br label %350

267:                                              ; preds = %257
  %268 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %269 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %268, i32 0, i32 0
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %267
  %276 = load i32, i32* @SRB_ELS_CMD_RPT, align 4
  br label %279

277:                                              ; preds = %267
  %278 = load i32, i32* @SRB_ELS_CMD_HST, align 4
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i32 [ %276, %275 ], [ %278, %277 ]
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 8
  %283 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %284 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %283, i32 0, i32 0
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %289 = icmp eq i64 %287, %288
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %292, i32 0, i32 0
  store i8* %291, i8** %293, align 8
  %294 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %296, i32 0, i32 0
  store %struct.fc_bsg_job* %294, %struct.fc_bsg_job** %297, align 8
  %298 = load i32, i32* @qla2x00_bsg_sp_free, align 4
  %299 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 2
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* @qla2x00_bsg_job_done, align 4
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 8
  %304 = load i32, i32* @ql_dbg_user, align 4
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %306 = load i8*, i8** %10, align 8
  %307 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %308 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %307, i32 0, i32 0
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 (i32, %struct.TYPE_30__*, i32, i8*, ...) @ql_dbg(i32 %304, %struct.TYPE_30__* %305, i32 28682, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i8* %306, i32 %313, i32 %316, i32 %321, i32 %326, i32 %331)
  %333 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %334 = call i32 @qla2x00_start_sp(%struct.TYPE_29__* %333)
  store i32 %334, i32* %13, align 4
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* @QLA_SUCCESS, align 4
  %337 = icmp ne i32 %335, %336
  br i1 %337, label %338, label %348

338:                                              ; preds = %279
  %339 = load i32, i32* @ql_log_warn, align 4
  %340 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %341 = load i32, i32* %13, align 4
  %342 = call i32 (i32, %struct.TYPE_30__*, i32, i8*, ...) @ql_log(i32 %339, %struct.TYPE_30__* %340, i32 28686, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %341)
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %345 = call i32 @qla2x00_rel_sp(%struct.TYPE_30__* %343, %struct.TYPE_29__* %344)
  %346 = load i32, i32* @EIO, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %13, align 4
  br label %350

348:                                              ; preds = %279
  %349 = load i32, i32* %13, align 4
  store i32 %349, i32* %2, align 4
  br label %393

350:                                              ; preds = %338, %264, %241
  %351 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %352 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %351, i32 0, i32 0
  %353 = load %struct.TYPE_35__*, %struct.TYPE_35__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %353, i32 0, i32 0
  %355 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %356 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %360 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @DMA_TO_DEVICE, align 4
  %364 = call i32 @dma_unmap_sg(i32* %354, i32 %358, i32 %362, i32 %363)
  %365 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %366 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %365, i32 0, i32 0
  %367 = load %struct.TYPE_35__*, %struct.TYPE_35__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %367, i32 0, i32 0
  %369 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %370 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %374 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %378 = call i32 @dma_unmap_sg(i32* %368, i32 %372, i32 %376, i32 %377)
  br label %379

379:                                              ; preds = %350, %224, %204
  %380 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %381 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %380, i32 0, i32 0
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @FC_BSG_HST_ELS_NOLOGIN, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %379
  %388 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %389 = call i32 @kfree(%struct.TYPE_31__* %388)
  br label %390

390:                                              ; preds = %387, %379
  br label %391

391:                                              ; preds = %390, %181, %115, %98, %71, %53
  %392 = load i32, i32* %13, align 4
  store i32 %392, i32* %2, align 4
  br label %393

393:                                              ; preds = %391, %348
  %394 = load i32, i32* %2, align 4
  ret i32 %394
}

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.TYPE_30__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_30__*, i32, i8*, ...) #1

declare dso_local i64 @qla2x00_fabric_login(%struct.TYPE_30__*, %struct.TYPE_31__*, i32*) #1

declare dso_local %struct.TYPE_31__* @qla2x00_alloc_fcport(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_30__*, i32, i8*, ...) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_29__* @qla2x00_get_sp(%struct.TYPE_30__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_29__*) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
