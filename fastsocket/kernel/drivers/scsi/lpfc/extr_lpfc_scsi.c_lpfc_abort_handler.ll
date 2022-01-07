; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_abort_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_iocbq = type { i32, i32, %struct.lpfc_vport*, i32, i32, %struct.TYPE_10__, %struct.lpfc_scsi_buf* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.lpfc_scsi_buf = type { %struct.scsi_cmnd*, i32*, %struct.lpfc_iocbq }

@SUCCESS = common dso_local global i32 0, align 4
@waitq = common dso_local global i32 0, align 4
@HBA_FCP_IOQ_FLUSH = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"3168 SCSI Layer abort requested I/O has been flushed by LLD.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"2873 SCSI Layer I/O Abort Request IO CMPL Status x%x ID %d LUN %d\0A\00", align 1
@LPFC_IO_ON_TXCMPLQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"3169 SCSI Layer abort requested I/O has been cancelled by LLD.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"3170 SCSI Layer abort requested I/O has been completed by LLD.\0A\00", align 1
@ABORT_TYPE_ABTS = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@CMD_ABORT_XRI_CN = common dso_local global i32 0, align 4
@CMD_CLOSE_XRI_CN = common dso_local global i32 0, align 4
@lpfc_sli_abort_fcp_cmpl = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@IOCB_ERROR = common dso_local global i64 0, align 8
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@HA_R0RE_REQ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [100 x i8] c"0748 abort handler timed out waiting for abortng I/O (xri:x%x) to complete: ret %#x, ID %d, LUN %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"0749 SCSI Layer I/O Abort Request Status x%x ID %d LUN %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @lpfc_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_scsi_buf*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %4, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %23, %struct.lpfc_vport** %5, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 1
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %25, align 8
  store %struct.lpfc_hba* %26, %struct.lpfc_hba** %6, align 8
  %27 = load i32, i32* @SUCCESS, align 4
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* @waitq, align 4
  %29 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %2, align 4
  br label %311

40:                                               ; preds = %34, %1
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 3
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @HBA_FCP_IOQ_FLUSH, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 3
  %54 = load i64, i64* %14, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %57 = load i32, i32* @KERN_WARNING, align 4
  %58 = load i32, i32* @LOG_FCP, align 4
  %59 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @FAILED, align 4
  store i32 %60, i32* %2, align 4
  br label %311

61:                                               ; preds = %40
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.lpfc_scsi_buf*
  store %struct.lpfc_scsi_buf* %65, %struct.lpfc_scsi_buf** %9, align 8
  %66 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %67 = icmp ne %struct.lpfc_scsi_buf* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %70 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %69, i32 0, i32 0
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %70, align 8
  %72 = icmp ne %struct.scsi_cmnd* %71, null
  br i1 %72, label %94, label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 3
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = load i32, i32* @KERN_WARNING, align 4
  %80 = load i32, i32* @LOG_FCP, align 4
  %81 = load i32, i32* @SUCCESS, align 4
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %86, i32 %91)
  %93 = load i32, i32* @SUCCESS, align 4
  store i32 %93, i32* %2, align 4
  br label %311

94:                                               ; preds = %68
  %95 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %96 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %95, i32 0, i32 2
  store %struct.lpfc_iocbq* %96, %struct.lpfc_iocbq** %7, align 8
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %98 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %94
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 3
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %109 = load i32, i32* @KERN_WARNING, align 4
  %110 = load i32, i32* @LOG_FCP, align 4
  %111 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %108, i32 %109, i32 %110, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @FAILED, align 4
  store i32 %112, i32* %2, align 4
  br label %311

113:                                              ; preds = %94
  %114 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %115 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %114, i32 0, i32 0
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %115, align 8
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %118 = icmp ne %struct.scsi_cmnd* %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %121 = load i32, i32* @KERN_WARNING, align 4
  %122 = load i32, i32* @LOG_FCP, align 4
  %123 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %289

124:                                              ; preds = %113
  %125 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %126 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %125, i32 0, i32 6
  %127 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %126, align 8
  %128 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %129 = icmp ne %struct.lpfc_scsi_buf* %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %133 = call %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba* %132)
  store %struct.lpfc_iocbq* %133, %struct.lpfc_iocbq** %8, align 8
  %134 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %135 = icmp eq %struct.lpfc_iocbq* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* @FAILED, align 4
  store i32 %137, i32* %12, align 4
  br label %289

138:                                              ; preds = %124
  %139 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %140 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %139, i32 0, i32 5
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %10, align 8
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %142 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %141, i32 0, i32 5
  store %struct.TYPE_10__* %142, %struct.TYPE_10__** %11, align 8
  %143 = load i32, i32* @ABORT_TYPE_ABTS, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  store i32 %143, i32* %147, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @LPFC_SLI_REV4, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %138
  %161 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %162 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 4
  br label %176

168:                                              ; preds = %138
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 4
  br label %176

176:                                              ; preds = %168, %160
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 4
  %184 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %185 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %188 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %190 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %191 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %195 = call i64 @lpfc_is_link_up(%struct.lpfc_hba* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %176
  %198 = load i32, i32* @CMD_ABORT_XRI_CN, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  br label %205

201:                                              ; preds = %176
  %202 = load i32, i32* @CMD_CLOSE_XRI_CN, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = load i32, i32* @lpfc_sli_abort_fcp_cmpl, align 4
  %207 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %208 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  %209 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %210 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %211 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %210, i32 0, i32 2
  store %struct.lpfc_vport* %209, %struct.lpfc_vport** %211, align 8
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %213 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %212, i32 0, i32 3
  %214 = load i64, i64* %14, align 8
  %215 = call i32 @spin_unlock_irqrestore(i32* %213, i64 %214)
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %217 = load i64, i64* @LPFC_FCP_RING, align 8
  %218 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %219 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %216, i64 %217, %struct.lpfc_iocbq* %218, i32 0)
  %220 = load i64, i64* @IOCB_ERROR, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %205
  %223 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %224 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %225 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %223, %struct.lpfc_iocbq* %224)
  %226 = load i32, i32* @FAILED, align 4
  store i32 %226, i32* %12, align 4
  br label %294

227:                                              ; preds = %205
  %228 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %229 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %227
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @LPFC_FCP_RING, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* @HA_R0RE_REQ, align 4
  %243 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %235, i32* %241, i32 %242)
  br label %244

244:                                              ; preds = %234, %227
  %245 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %246 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %245, i32 0, i32 1
  store i32* @waitq, i32** %246, align 8
  %247 = load i32, i32* @waitq, align 4
  %248 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %249 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %248, i32 0, i32 0
  %250 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %249, align 8
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %252 = icmp ne %struct.scsi_cmnd* %250, %251
  %253 = zext i1 %252 to i32
  %254 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %255 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = mul nsw i32 2, %256
  %258 = mul nsw i32 %257, 1000
  %259 = call i32 @msecs_to_jiffies(i32 %258)
  %260 = call i32 @wait_event_timeout(i32 %247, i32 %253, i32 %259)
  %261 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %262 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %261, i32 0, i32 1
  store i32* null, i32** %262, align 8
  %263 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %9, align 8
  %264 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %263, i32 0, i32 0
  %265 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %264, align 8
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %267 = icmp eq %struct.scsi_cmnd* %265, %266
  br i1 %267, label %268, label %288

268:                                              ; preds = %244
  %269 = load i32, i32* @FAILED, align 4
  store i32 %269, i32* %12, align 4
  %270 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %271 = load i32, i32* @KERN_ERR, align 4
  %272 = load i32, i32* @LOG_FCP, align 4
  %273 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %274 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %278 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %277, i32 0, i32 0
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %283 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %282, i32 0, i32 0
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %270, i32 %271, i32 %272, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.4, i64 0, i64 0), i32 %275, i32 %276, i32 %281, i32 %286)
  br label %288

288:                                              ; preds = %268, %244
  br label %294

289:                                              ; preds = %136, %119
  %290 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %291 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %290, i32 0, i32 3
  %292 = load i64, i64* %14, align 8
  %293 = call i32 @spin_unlock_irqrestore(i32* %291, i64 %292)
  br label %294

294:                                              ; preds = %289, %288, %222
  %295 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %296 = load i32, i32* @KERN_WARNING, align 4
  %297 = load i32, i32* @LOG_FCP, align 4
  %298 = load i32, i32* %12, align 4
  %299 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %300 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %299, i32 0, i32 0
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %305 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %304, i32 0, i32 0
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %295, i32 %296, i32 %297, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %298, i32 %303, i32 %308)
  %310 = load i32, i32* %12, align 4
  store i32 %310, i32* %2, align 4
  br label %311

311:                                              ; preds = %294, %103, %73, %51, %38
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i64, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba*, i32*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
