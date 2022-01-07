; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_process_bidir_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_process_bidir_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, {}*, %struct.TYPE_41__*, %struct.TYPE_33__, %struct.TYPE_34__, %struct.TYPE_45__*, %struct.Scsi_Host* }
%struct.TYPE_41__ = type { i32, i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64* }
%struct.TYPE_33__ = type { i64, i64, i32 }
%struct.TYPE_34__ = type { i64, i64, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_36__ = type { i32, i64, i64, %struct.TYPE_38__, %struct.TYPE_30__, %struct.TYPE_42__, i32, %struct.qla_hw_data* }
%struct.TYPE_38__ = type { i64, %struct.TYPE_31__, %struct.TYPE_36__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_42__ = type { i32 }
%struct.qla_hw_data = type { i64, i64, %struct.TYPE_32__*, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, i32, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.fc_bsg_job* }

@EXT_STATUS_OK = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"This adapter is not supported\0A\00", align 1
@EXT_STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@ISP_ABORT_RETRY = common dso_local global i32 0, align 4
@EXT_STATUS_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Host is not online\0A\00", align 1
@EXT_STATUS_DEVICE_OFFLINE = common dso_local global i64 0, align 8
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Cable is unplugged...\0A\00", align 1
@EXT_STATUS_INVALID_CFG = common dso_local global i64 0, align 8
@ISP_CFG_F = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Host is not connected to the switch\0A\00", align 1
@P2P = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Host is operating mode is not P2p\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Failed to login port %06X for bidirectional IOCB\0A\00", align 1
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [127 x i8] c"Dma mapping resulted in different sg counts [request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt: %x dma_reply_sg_cnt: %x]\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"req_data_len != rsp_data_len\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Alloc SRB structure failed\0A\00", align 1
@qla2x00_bsg_sp_free = common dso_local global i32 0, align 4
@SRB_BIDI_CMD = common dso_local global i32 0, align 4
@qla2x00_bsg_job_done = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla24xx_process_bidir_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_process_bidir_cmd(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %16, i32 0, i32 6
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %4, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = call %struct.TYPE_36__* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.TYPE_36__* %20, %struct.TYPE_36__** %5, align 8
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 7
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %6, align 8
  %24 = load i64, i64* @EXT_STATUS_OK, align 8
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %26 = call i32 @IS_BIDI_CAPABLE(%struct.qla_hw_data* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ql_log_warn, align 4
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %31 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_log(i32 %29, %struct.TYPE_36__* %30, i32 28832, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @EXT_STATUS_NOT_SUPPORTED, align 8
  store i64 %32, i64* %8, align 8
  br label %349

33:                                               ; preds = %1
  %34 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 6
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 6
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 6
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %39, %33
  %52 = load i64, i64* @EXT_STATUS_BUSY, align 8
  store i64 %52, i64* %8, align 8
  br label %349

53:                                               ; preds = %45
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ql_log_warn, align 4
  %61 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %62 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_log(i32 %60, %struct.TYPE_36__* %61, i32 28833, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i64, i64* @EXT_STATUS_DEVICE_OFFLINE, align 8
  store i64 %63, i64* %8, align 8
  br label %349

64:                                               ; preds = %53
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DFLG_NO_CABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @ql_log_warn, align 4
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %74 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_log(i32 %72, %struct.TYPE_36__* %73, i32 28834, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i64, i64* @EXT_STATUS_INVALID_CFG, align 8
  store i64 %75, i64* %8, align 8
  br label %349

76:                                               ; preds = %64
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ISP_CFG_F, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* @ql_log_warn, align 4
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %85 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_log(i32 %83, %struct.TYPE_36__* %84, i32 28835, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i64, i64* @EXT_STATUS_INVALID_CFG, align 8
  store i64 %86, i64* %8, align 8
  br label %349

87:                                               ; preds = %76
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @P2P, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32, i32* @ql_log_warn, align 4
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %96 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_log(i32 %94, %struct.TYPE_36__* %95, i32 28836, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i64, i64* @EXT_STATUS_INVALID_CFG, align 8
  store i64 %97, i64* %8, align 8
  br label %349

98:                                               ; preds = %87
  %99 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %100 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %99, i32 0, i32 5
  %101 = load %struct.TYPE_45__*, %struct.TYPE_45__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %7, align 8
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 4
  %110 = call i32 @mutex_lock(i32* %109)
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %179

115:                                              ; preds = %98
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 2
  store %struct.TYPE_36__* %116, %struct.TYPE_36__** %119, align 8
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %128, i32 0, i32 2
  store i32 %124, i32* %129, align 4
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %138, i32 0, i32 1
  store i32 %134, i32* %139, align 4
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 4
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 0
  store i64 %152, i64* %155, align 8
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 3
  %159 = call i64 @qla2x00_fabric_login(%struct.TYPE_36__* %156, %struct.TYPE_38__* %158, i64* %11)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %115
  %162 = load i32, i32* @ql_log_warn, align 4
  %163 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_log(i32 %162, %struct.TYPE_36__* %163, i32 28839, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  %170 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %171 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %170, i32 0, i32 4
  %172 = call i32 @mutex_unlock(i32* %171)
  %173 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  store i64 %173, i64* %8, align 8
  br label %349

174:                                              ; preds = %115
  %175 = load i64, i64* %11, align 8
  %176 = sub nsw i64 %175, 1
  %177 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %174, %98
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %181 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %180, i32 0, i32 4
  %182 = call i32 @mutex_unlock(i32* %181)
  %183 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  %189 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %190 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %189, i32 0, i32 2
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 0
  %193 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %194 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %198 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* @DMA_TO_DEVICE, align 4
  %202 = call i64 @dma_map_sg(i32* %192, i32 %196, i64 %200, i32 %201)
  store i64 %202, i64* %9, align 8
  %203 = load i64, i64* %9, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %179
  %206 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %206, i64* %8, align 8
  br label %349

207:                                              ; preds = %179
  %208 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %209 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %208, i32 0, i32 2
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 0
  %212 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %213 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %217 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %221 = call i64 @dma_map_sg(i32* %211, i32 %215, i64 %219, i32 %220)
  store i64 %221, i64* %10, align 8
  %222 = load i64, i64* %10, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %207
  %225 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %225, i64* %8, align 8
  br label %334

226:                                              ; preds = %207
  %227 = load i64, i64* %9, align 8
  %228 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %229 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %227, %231
  br i1 %232, label %240, label %233

233:                                              ; preds = %226
  %234 = load i64, i64* %10, align 8
  %235 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %236 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %234, %238
  br i1 %239, label %240, label %255

240:                                              ; preds = %233, %226
  %241 = load i32, i32* @ql_dbg_user, align 4
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %243 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %244 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %9, align 8
  %248 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %249 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %10, align 8
  %253 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_dbg(i32 %241, %struct.TYPE_36__* %242, i32 28841, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0), i64 %246, i64 %247, i64 %251, i64 %252)
  %254 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %254, i64* %8, align 8
  br label %319

255:                                              ; preds = %233
  %256 = load i64, i64* %14, align 8
  %257 = load i64, i64* %15, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %255
  %260 = load i64, i64* @EXT_STATUS_BUSY, align 8
  store i64 %260, i64* %8, align 8
  %261 = load i32, i32* @ql_log_warn, align 4
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %263 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_log(i32 %261, %struct.TYPE_36__* %262, i32 28842, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %319

264:                                              ; preds = %255
  %265 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %266 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %14, align 8
  %269 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %270 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %15, align 8
  %273 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %274, i32 0, i32 3
  %276 = load i32, i32* @GFP_KERNEL, align 4
  %277 = call %struct.TYPE_35__* @qla2x00_get_sp(%struct.TYPE_36__* %273, %struct.TYPE_38__* %275, i32 %276)
  store %struct.TYPE_35__* %277, %struct.TYPE_35__** %13, align 8
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %279 = icmp ne %struct.TYPE_35__* %278, null
  br i1 %279, label %285, label %280

280:                                              ; preds = %264
  %281 = load i32, i32* @ql_dbg_user, align 4
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %283 = call i32 (i32, %struct.TYPE_36__*, i32, i8*, ...) @ql_dbg(i32 %281, %struct.TYPE_36__* %282, i32 28844, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %284 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %284, i64* %8, align 8
  br label %319

285:                                              ; preds = %264
  %286 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %288, i32 0, i32 0
  store %struct.fc_bsg_job* %286, %struct.fc_bsg_job** %289, align 8
  %290 = load i32, i32* @qla2x00_bsg_sp_free, align 4
  %291 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* @SRB_BIDI_CMD, align 4
  %294 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* @qla2x00_bsg_job_done, align 4
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  %299 = load i64, i64* %10, align 8
  %300 = load i64, i64* %9, align 8
  %301 = add nsw i64 %299, %300
  store i64 %301, i64* %12, align 8
  %302 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %303 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %304 = load i64, i64* %12, align 8
  %305 = call i64 @qla2x00_start_bidir(%struct.TYPE_35__* %302, %struct.TYPE_36__* %303, i64 %304)
  store i64 %305, i64* %8, align 8
  %306 = load i64, i64* %8, align 8
  %307 = load i64, i64* @EXT_STATUS_OK, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %285
  br label %313

310:                                              ; preds = %285
  %311 = load i64, i64* %8, align 8
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %2, align 4
  br label %377

313:                                              ; preds = %309
  %314 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %315 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %316 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @mempool_free(%struct.TYPE_35__* %314, i32 %317)
  br label %319

319:                                              ; preds = %313, %280, %259, %240
  %320 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %321 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %320, i32 0, i32 2
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 0
  %324 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %325 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %324, i32 0, i32 4
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %329 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %328, i32 0, i32 4
  %330 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %333 = call i32 @dma_unmap_sg(i32* %323, i32 %327, i64 %331, i32 %332)
  br label %334

334:                                              ; preds = %319, %224
  %335 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %336 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %335, i32 0, i32 2
  %337 = load %struct.TYPE_32__*, %struct.TYPE_32__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %337, i32 0, i32 0
  %339 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %340 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %344 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* @DMA_TO_DEVICE, align 4
  %348 = call i32 @dma_unmap_sg(i32* %338, i32 %342, i64 %346, i32 %347)
  br label %349

349:                                              ; preds = %334, %205, %161, %93, %82, %71, %59, %51, %28
  %350 = load i64, i64* %8, align 8
  %351 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %352 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %351, i32 0, i32 2
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %355, i32 0, i32 0
  %357 = load i64*, i64** %356, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 0
  store i64 %350, i64* %358, align 8
  %359 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %360 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %359, i32 0, i32 0
  store i32 4, i32* %360, align 8
  %361 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %362 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %361, i32 0, i32 2
  %363 = load %struct.TYPE_41__*, %struct.TYPE_41__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %363, i32 0, i32 1
  store i64 0, i64* %364, align 8
  %365 = load i32, i32* @DID_OK, align 4
  %366 = shl i32 %365, 16
  %367 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %368 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %367, i32 0, i32 2
  %369 = load %struct.TYPE_41__*, %struct.TYPE_41__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %369, i32 0, i32 0
  store i32 %366, i32* %370, align 8
  %371 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %372 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %371, i32 0, i32 1
  %373 = bitcast {}** %372 to i32 (%struct.fc_bsg_job*)**
  %374 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %373, align 8
  %375 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %376 = call i32 %374(%struct.fc_bsg_job* %375)
  store i32 0, i32* %2, align 4
  br label %377

377:                                              ; preds = %349, %310
  %378 = load i32, i32* %2, align 4
  ret i32 %378
}

declare dso_local %struct.TYPE_36__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_BIDI_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_36__*, i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qla2x00_fabric_login(%struct.TYPE_36__*, %struct.TYPE_38__*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_36__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_35__* @qla2x00_get_sp(%struct.TYPE_36__*, %struct.TYPE_38__*, i32) #1

declare dso_local i64 @qla2x00_start_bidir(%struct.TYPE_35__*, %struct.TYPE_36__*, i64) #1

declare dso_local i32 @mempool_free(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
