; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i8*, void (%struct.scsi_cmnd*)*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.lpfc_rport_data*, %struct.Scsi_Host* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64, i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba*, i64 }
%struct.lpfc_hba = type { i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.lpfc_scsi_buf = type { i32, i32, i64, %struct.lpfc_rport_data*, %struct.scsi_cmnd* }
%struct.fc_rport = type { i32 }

@SCSI_PROT_NORMAL = common dso_local global i64 0, align 8
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"9058 BLKGRD: ERROR: rcvd protected cmd:%02x op:%02x str=%s without registering for BlockGuard - Rejecting command\0A\00", align 1
@dif_op_str = common dso_local global i32* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"0707 driver's buffer pool is empty, IO busied\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@LOG_SCSI_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"9033 BLKGRD: rcvd %s cmd:x%x sector x%llx cnt %u pt %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"9038 BLKGRD: rcvd PROT_NORMAL cmd: x%x sector x%llx cnt %u pt %x\0A\00", align 1
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@SLI_IOCB_RET_IOCB = common dso_local global i32 0, align 4
@ENABLE_FCP_RING_POLLING = common dso_local global i32 0, align 4
@HA_R0RE_REQ = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_TARGET_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @lpfc_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_rport_data*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.lpfc_scsi_buf*, align 8
  %12 = alloca %struct.fc_rport*, align 8
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %6, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %7, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 0
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %24, align 8
  store %struct.lpfc_hba* %25, %struct.lpfc_hba** %8, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %29, align 8
  store %struct.lpfc_rport_data* %30, %struct.lpfc_rport_data** %9, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 5
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i32 @scsi_target(%struct.TYPE_4__* %33)
  %35 = call %struct.fc_rport* @starget_to_rport(i32 %34)
  store %struct.fc_rport* %35, %struct.fc_rport** %12, align 8
  %36 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %37 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %276

44:                                               ; preds = %2
  %45 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %9, align 8
  %46 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %45, i32 0, i32 0
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %46, align 8
  store %struct.lpfc_nodelist* %47, %struct.lpfc_nodelist** %10, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %48)
  %50 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %44
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %52
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* @LOG_BG, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %69 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %68)
  %70 = load i32*, i32** @dif_op_str, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %71)
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %69, i32 %74)
  br label %276

76:                                               ; preds = %52, %44
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %78 = icmp ne %struct.lpfc_nodelist* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %81 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79, %76
  br label %274

84:                                               ; preds = %79
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 1
  %92 = call i64 @atomic_read(i32* %91)
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %94 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %274

98:                                               ; preds = %89, %84
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %101 = call %struct.lpfc_scsi_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba* %99, %struct.lpfc_nodelist* %100)
  store %struct.lpfc_scsi_buf* %101, %struct.lpfc_scsi_buf** %11, align 8
  %102 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %103 = icmp eq %struct.lpfc_scsi_buf* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %106 = call i32 @lpfc_rampdown_queue_depth(%struct.lpfc_hba* %105)
  %107 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load i32, i32* @LOG_FCP, align 4
  %110 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %272

111:                                              ; preds = %98
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %113 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %114 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %113, i32 0, i32 4
  store %struct.scsi_cmnd* %112, %struct.scsi_cmnd** %114, align 8
  %115 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %9, align 8
  %116 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %117 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %116, i32 0, i32 3
  store %struct.lpfc_rport_data* %115, %struct.lpfc_rport_data** %117, align 8
  %118 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %119 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %118, i32 0, i32 2
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* @jiffies, align 4
  %121 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %122 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %124 = bitcast %struct.lpfc_scsi_buf* %123 to i8*
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 3
  store void (%struct.scsi_cmnd*)* %127, void (%struct.scsi_cmnd*)** %129, align 8
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %131 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %130)
  %132 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %172

134:                                              ; preds = %111
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %136 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %135, i32 0, i32 0
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %136, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %134
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %143 = load i32, i32* @KERN_INFO, align 4
  %144 = load i32, i32* @LOG_SCSI_CMD, align 4
  %145 = load i32*, i32** @dif_op_str, align 8
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %147 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %146)
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %156 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %155)
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %158 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @blk_rq_sectors(i32 %159)
  %161 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %162 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = ashr i32 %165, 5
  %167 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %142, i32 %143, i32 %144, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %154, i64 %156, i32 %160, i32 %166)
  br label %168

168:                                              ; preds = %141, %134
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %170 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %171 = call i32 @lpfc_bg_scsi_prep_dma_buf(%struct.lpfc_hba* %169, %struct.lpfc_scsi_buf* %170)
  store i32 %171, i32* %13, align 4
  br label %205

172:                                              ; preds = %111
  %173 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %174 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %173, i32 0, i32 0
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %174, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %172
  %180 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %181 = load i32, i32* @KERN_INFO, align 4
  %182 = load i32, i32* @LOG_SCSI_CMD, align 4
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %184 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %189 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %188)
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %191 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @blk_rq_sectors(i32 %192)
  %194 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %195 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = ashr i32 %198, 5
  %200 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %180, i32 %181, i32 %182, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %187, i64 %189, i32 %193, i32 %199)
  br label %201

201:                                              ; preds = %179, %172
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %203 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %204 = call i32 @lpfc_scsi_prep_dma_buf(%struct.lpfc_hba* %202, %struct.lpfc_scsi_buf* %203)
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %201, %168
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %265

209:                                              ; preds = %205
  %210 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %211 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %212 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %213 = call i32 @lpfc_scsi_prep_cmnd(%struct.lpfc_vport* %210, %struct.lpfc_scsi_buf* %211, %struct.lpfc_nodelist* %212)
  %214 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %215 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %214, i32 0, i32 1
  %216 = call i32 @atomic_inc(i32* %215)
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %218 = load i64, i64* @LPFC_FCP_RING, align 8
  %219 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %220 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %219, i32 0, i32 0
  %221 = load i32, i32* @SLI_IOCB_RET_IOCB, align 4
  %222 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %217, i64 %218, i32* %220, i32 %221)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %209
  %226 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %227 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %226, i32 0, i32 1
  %228 = call i32 @atomic_dec(i32* %227)
  br label %265

229:                                              ; preds = %209
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @ENABLE_FCP_RING_POLLING, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %264

236:                                              ; preds = %229
  %237 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %238 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @spin_unlock(i32 %239)
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %242 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %243 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @LPFC_FCP_RING, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* @HA_R0RE_REQ, align 4
  %249 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %241, i32* %247, i32 %248)
  %250 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %251 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @spin_lock(i32 %252)
  %254 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %255 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %236
  %261 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %262 = call i32 @lpfc_poll_rearm_timer(%struct.lpfc_hba* %261)
  br label %263

263:                                              ; preds = %260, %236
  br label %264

264:                                              ; preds = %263, %229
  store i32 0, i32* %3, align 4
  br label %279

265:                                              ; preds = %225, %208
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %267 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %268 = call i32 @lpfc_scsi_unprep_dma_buf(%struct.lpfc_hba* %266, %struct.lpfc_scsi_buf* %267)
  %269 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %270 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %11, align 8
  %271 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %269, %struct.lpfc_scsi_buf* %270)
  br label %272

272:                                              ; preds = %265, %104
  %273 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %273, i32* %3, align 4
  br label %279

274:                                              ; preds = %97, %83
  %275 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  store i32 %275, i32* %3, align 4
  br label %279

276:                                              ; preds = %59, %40
  %277 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %278 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %277(%struct.scsi_cmnd* %278)
  store i32 0, i32* %3, align 4
  br label %279

279:                                              ; preds = %276, %274, %272, %264
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_4__*) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i64 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.lpfc_scsi_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_rampdown_queue_depth(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i64 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @blk_rq_sectors(i32) #1

declare dso_local i32 @lpfc_bg_scsi_prep_dma_buf(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

declare dso_local i32 @lpfc_scsi_prep_dma_buf(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

declare dso_local i32 @lpfc_scsi_prep_cmnd(%struct.lpfc_vport*, %struct.lpfc_scsi_buf*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i64, i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @lpfc_poll_rearm_timer(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_scsi_unprep_dma_buf(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

declare dso_local i32 @lpfc_release_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_scsi_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
