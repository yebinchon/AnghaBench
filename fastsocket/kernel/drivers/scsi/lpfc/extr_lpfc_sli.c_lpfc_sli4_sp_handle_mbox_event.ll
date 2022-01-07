; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_mbox_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_mbox_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_16__, i32, %struct.TYPE_15__, i32, %struct.TYPE_14__*, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_dmabuf*, i64, %struct.TYPE_12__ }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_dmabuf = type { i32 }
%struct.TYPE_12__ = type { %struct.lpfc_mqe }
%struct.lpfc_mqe = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.lpfc_mcqe = type opaque

@lpfc_trailer_completed = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"1832 No pending MBOX command to handle\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@lpfc_mcqe_status = common dso_local global i32 0, align 4
@MB_CQE_STATUS_SUCCESS = common dso_local global i32 0, align 4
@lpfc_mqe_status = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i64 0, align 8
@LPFC_MBX_ERROR_RANGE = common dso_local global i32 0, align 4
@LPFC_MBX_IMED_UNREG = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_MBOX_VPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"MBOX dflt rpi: status:x%x rpi:x%x\00", align 1
@lpfc_mbx_cmpl_dflt_rpi = common dso_local global i64 0, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"0385 rc should have been MBX_BUSY\0A\00", align 1
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@WORKER_MBOX_TMO = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@LPFC_SLI_MBOX_ACTIVE = common dso_local global i32 0, align 4
@lpfc_trailer_consumed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_mcqe*)* @lpfc_sli4_sp_handle_mbox_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_mbox_event(%struct.lpfc_hba* %0, %struct.lpfc_mcqe* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_mcqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.lpfc_mqe*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_mcqe* %1, %struct.lpfc_mcqe** %4, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @lpfc_trailer_completed, align 4
  %17 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %4, align 8
  %18 = bitcast %struct.lpfc_mcqe* %17 to %struct.lpfc_mqe*
  %19 = call i64 @bf_get(i32 %16, %struct.lpfc_mqe* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %242

22:                                               ; preds = %2
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %13, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %32 = icmp ne %struct.TYPE_18__* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %22
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load i32, i32* @LOG_MBOX, align 4
  %41 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 1
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %242

46:                                               ; preds = %22
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 1
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store %struct.lpfc_mqe* %53, %struct.lpfc_mqe** %8, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = bitcast %struct.lpfc_mqe* %56 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %7, align 8
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 6
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %6, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %62, align 8
  store %struct.lpfc_vport* %63, %struct.lpfc_vport** %9, align 8
  %64 = load i32, i32* @jiffies, align 4
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = call i32 @del_timer(i32* %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %46
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %77 = icmp ne %struct.TYPE_17__* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %8, align 8
  %81 = call i32 @lpfc_sli_pcimem_bcopy(%struct.TYPE_17__* %79, %struct.lpfc_mqe* %80, i32 4)
  br label %82

82:                                               ; preds = %78, %75, %46
  %83 = load i32, i32* @lpfc_mcqe_status, align 4
  %84 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %4, align 8
  %85 = bitcast %struct.lpfc_mcqe* %84 to %struct.lpfc_mqe*
  %86 = call i64 @bf_get(i32 %83, %struct.lpfc_mqe* %85)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @MB_CQE_STATUS_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = load i32, i32* @lpfc_mqe_status, align 4
  %93 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %8, align 8
  %94 = call i64 @bf_get(i32 %92, %struct.lpfc_mqe* %93)
  %95 = load i64, i64* @MBX_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* @lpfc_mqe_status, align 4
  %99 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %8, align 8
  %100 = load i32, i32* @LPFC_MBX_ERROR_RANGE, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @bf_set(i32 %98, %struct.lpfc_mqe* %99, i32 %102)
  br label %104

104:                                              ; preds = %97, %91
  br label %105

105:                                              ; preds = %104, %82
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @LPFC_MBX_IMED_UNREG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %184

112:                                              ; preds = %105
  %113 = load i32, i32* @LPFC_MBX_IMED_UNREG, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %120 = load i32, i32* @LPFC_DISC_TRC_MBOX_VPORT, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %119, i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %127, i32 0)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @MB_CQE_STATUS_SUCCESS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %183

132:                                              ; preds = %112
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %134, align 8
  store %struct.lpfc_dmabuf* %135, %struct.lpfc_dmabuf** %11, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  %138 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %137, align 8
  store %struct.lpfc_nodelist* %138, %struct.lpfc_nodelist** %10, align 8
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %141 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %150 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %139, i32 %142, i32 %148, %struct.TYPE_18__* %149)
  %151 = load i64, i64* @lpfc_mbx_cmpl_dflt_rpi, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  %154 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  store %struct.lpfc_dmabuf* %154, %struct.lpfc_dmabuf** %156, align 8
  %157 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  store %struct.lpfc_nodelist* %157, %struct.lpfc_nodelist** %159, align 8
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  store %struct.lpfc_vport* %160, %struct.lpfc_vport** %162, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %165 = load i32, i32* @MBX_NOWAIT, align 4
  %166 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %163, %struct.TYPE_18__* %164, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @MBX_BUSY, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %132
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = load i32, i32* @KERN_ERR, align 4
  %173 = load i32, i32* @LOG_MBOX, align 4
  %174 = load i32, i32* @LOG_SLI, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %171, i32 %172, i32 %175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %170, %132
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %221

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182, %112
  br label %184

184:                                              ; preds = %183, %105
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i64, i64* %12, align 8
  %190 = call i32 @spin_lock_irqsave(i32* %188, i64 %189)
  %191 = load i32, i32* @WORKER_MBOX_TMO, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %192
  store i32 %198, i32* %196, align 4
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i64, i64* %12, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* %202, i64 %203)
  %205 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %206 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %205, i32 0, i32 1
  %207 = load i64, i64* %12, align 8
  %208 = call i32 @spin_lock_irqsave(i32* %206, i64 %207)
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %211 = call i32 @__lpfc_mbox_cmpl_put(%struct.lpfc_hba* %209, %struct.TYPE_18__* %210)
  %212 = load i32, i32* @HA_MBATT, align 4
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 1
  %219 = load i64, i64* %12, align 8
  %220 = call i32 @spin_unlock_irqrestore(i32* %218, i64 %219)
  store i32 1, i32* %14, align 4
  br label %221

221:                                              ; preds = %184, %181
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 1
  %224 = load i64, i64* %12, align 8
  %225 = call i32 @spin_lock_irqsave(i32* %223, i64 %224)
  %226 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %229 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, %227
  store i32 %232, i32* %230, align 8
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %234 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %235, align 8
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 1
  %238 = load i64, i64* %12, align 8
  %239 = call i32 @spin_unlock_irqrestore(i32* %237, i64 %238)
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %241 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %240)
  br label %242

242:                                              ; preds = %221, %37, %21
  %243 = load i32, i32* @lpfc_trailer_consumed, align 4
  %244 = load %struct.lpfc_mcqe*, %struct.lpfc_mcqe** %4, align 8
  %245 = bitcast %struct.lpfc_mcqe* %244 to %struct.lpfc_mqe*
  %246 = call i64 @bf_get(i32 %243, %struct.lpfc_mqe* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @lpfc_sli4_mq_release(i32 %252)
  br label %254

254:                                              ; preds = %248, %242
  %255 = load i32, i32* %14, align 4
  ret i32 %255
}

declare dso_local i64 @bf_get(i32, %struct.lpfc_mqe*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.TYPE_17__*, %struct.lpfc_mqe*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_mqe*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @__lpfc_mbox_cmpl_put(%struct.lpfc_hba*, %struct.TYPE_18__*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_mq_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
