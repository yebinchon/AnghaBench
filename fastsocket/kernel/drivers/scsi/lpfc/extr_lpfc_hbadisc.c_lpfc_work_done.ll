; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_work_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_4__, %struct.lpfc_vport*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.lpfc_vport = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@LPFC_PCI_DEV_OC = common dso_local global i64 0, align 8
@HA_ERATT = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@HBA_RRQ_ACTIVE = common dso_local global i32 0, align 4
@FCP_XRI_ABORT_EVENT = common dso_local global i32 0, align 4
@ELS_XRI_ABORT_EVENT = common dso_local global i32 0, align 4
@ASYNC_EVENT = common dso_local global i32 0, align 4
@HBA_POST_RECEIVE_BUFFER = common dso_local global i32 0, align 4
@LPFC_ELS_HBQ = common dso_local global i32 0, align 4
@FCF_REDISC_EVT = common dso_local global i32 0, align 4
@WORKER_DISC_TMO = common dso_local global i32 0, align 4
@WORKER_ELS_TMO = common dso_local global i32 0, align 4
@WORKER_HB_TMO = common dso_local global i32 0, align 4
@WORKER_MBOX_TMO = common dso_local global i32 0, align 4
@WORKER_FABRIC_BLOCK_TMO = common dso_local global i32 0, align 4
@WORKER_FDMI_TMO = common dso_local global i32 0, align 4
@WORKER_RAMP_DOWN_QUEUE = common dso_local global i32 0, align 4
@WORKER_RAMP_UP_QUEUE = common dso_local global i32 0, align 4
@WORKER_DELAYED_DISC_TMO = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_DEFERRED_RING_EVENT = common dso_local global i32 0, align 4
@HBA_SP_QUEUE_EVT = common dso_local global i32 0, align 4
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_DATA_READY = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@HC_R0INT_ENA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"WRK Enable ring: cntl:x%x hacopy:x%x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"WRK Ring ok:     cntl:x%x hacopy:x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_work_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_work_done(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_vport**, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 6
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 6
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPFC_PCI_DEV_OC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = call i32 @lpfc_sli4_post_async_mbox(%struct.lpfc_hba* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @HA_ERATT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = call i32 @lpfc_handle_eratt(%struct.lpfc_hba* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @HA_MBATT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = call i32 @lpfc_sli_handle_mb_event(%struct.lpfc_hba* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HA_LATT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = call i32 @lpfc_handle_latt(%struct.lpfc_hba* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LPFC_PCI_DEV_OC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %135

60:                                               ; preds = %54
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = call i32 @lpfc_handle_rrq_active(%struct.lpfc_hba* %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FCP_XRI_ABORT_EVENT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %79 = call i32 @lpfc_sli4_fcp_xri_abort_event_proc(%struct.lpfc_hba* %78)
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ELS_XRI_ABORT_EVENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %89 = call i32 @lpfc_sli4_els_xri_abort_event_proc(%struct.lpfc_hba* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ASYNC_EVENT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = call i32 @lpfc_sli4_async_event_proc(%struct.lpfc_hba* %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @HBA_POST_RECEIVE_BUFFER, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %100
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 6
  %110 = call i32 @spin_lock_irq(i32* %109)
  %111 = load i32, i32* @HBA_POST_RECEIVE_BUFFER, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 6
  %119 = call i32 @spin_unlock_irq(i32* %118)
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %121 = load i32, i32* @LPFC_ELS_HBQ, align 4
  %122 = call i32 @lpfc_sli_hbqbuf_add_hbqs(%struct.lpfc_hba* %120, i32 %121)
  br label %123

123:                                              ; preds = %107, %100
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @FCF_REDISC_EVT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %133 = call i32 @lpfc_sli4_fcf_redisc_event_proc(%struct.lpfc_hba* %132)
  br label %134

134:                                              ; preds = %131, %123
  br label %135

135:                                              ; preds = %134, %54
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %137 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %136)
  store %struct.lpfc_vport** %137, %struct.lpfc_vport*** %8, align 8
  %138 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %139 = icmp ne %struct.lpfc_vport** %138, null
  br i1 %139, label %140, label %263

140:                                              ; preds = %135
  store i32 0, i32* %10, align 4
  br label %141

141:                                              ; preds = %259, %140
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp sle i32 %142, %145
  br i1 %146, label %147, label %262

147:                                              ; preds = %141
  %148 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %148, i64 %150
  %152 = load %struct.lpfc_vport*, %struct.lpfc_vport** %151, align 8
  %153 = icmp eq %struct.lpfc_vport* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 10
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %159, align 8
  store %struct.lpfc_vport* %160, %struct.lpfc_vport** %9, align 8
  br label %167

161:                                              ; preds = %154, %147
  %162 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %162, i64 %164
  %166 = load %struct.lpfc_vport*, %struct.lpfc_vport** %165, align 8
  store %struct.lpfc_vport* %166, %struct.lpfc_vport** %9, align 8
  br label %167

167:                                              ; preds = %161, %157
  %168 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %169 = icmp eq %struct.lpfc_vport* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %262

171:                                              ; preds = %167
  %172 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %173 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %172, i32 0, i32 1
  %174 = call i32 @spin_lock_irq(i32* %173)
  %175 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %176 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %181 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %185 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %184, i32 0, i32 1
  %186 = call i32 @spin_unlock_irq(i32* %185)
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @WORKER_DISC_TMO, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %171
  %192 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %193 = call i32 @lpfc_disc_timeout_handler(%struct.lpfc_vport* %192)
  br label %194

194:                                              ; preds = %191, %171
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @WORKER_ELS_TMO, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %201 = call i32 @lpfc_els_timeout_handler(%struct.lpfc_vport* %200)
  br label %202

202:                                              ; preds = %199, %194
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @WORKER_HB_TMO, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %209 = call i32 @lpfc_hb_timeout_handler(%struct.lpfc_hba* %208)
  br label %210

210:                                              ; preds = %207, %202
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @WORKER_MBOX_TMO, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %217 = call i32 @lpfc_mbox_timeout_handler(%struct.lpfc_hba* %216)
  br label %218

218:                                              ; preds = %215, %210
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @WORKER_FABRIC_BLOCK_TMO, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %225 = call i32 @lpfc_unblock_fabric_iocbs(%struct.lpfc_hba* %224)
  br label %226

226:                                              ; preds = %223, %218
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @WORKER_FDMI_TMO, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %233 = call i32 @lpfc_fdmi_timeout_handler(%struct.lpfc_vport* %232)
  br label %234

234:                                              ; preds = %231, %226
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @WORKER_RAMP_DOWN_QUEUE, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %241 = call i32 @lpfc_ramp_down_queue_handler(%struct.lpfc_hba* %240)
  br label %242

242:                                              ; preds = %239, %234
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @WORKER_RAMP_UP_QUEUE, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %249 = call i32 @lpfc_ramp_up_queue_handler(%struct.lpfc_hba* %248)
  br label %250

250:                                              ; preds = %247, %242
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @WORKER_DELAYED_DISC_TMO, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %257 = call i32 @lpfc_delayed_disc_timeout_handler(%struct.lpfc_vport* %256)
  br label %258

258:                                              ; preds = %255, %250
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %10, align 4
  br label %141

262:                                              ; preds = %170, %141
  br label %263

263:                                              ; preds = %262, %135
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %265 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %266 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %264, %struct.lpfc_vport** %265)
  %267 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %268 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %267, i32 0, i32 9
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %269, align 8
  %271 = load i64, i64* @LPFC_ELS_RING, align 8
  %272 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %270, i64 %271
  store %struct.lpfc_sli_ring* %272, %struct.lpfc_sli_ring** %3, align 8
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @HA_RXMASK, align 4
  %275 = load i64, i64* @LPFC_ELS_RING, align 8
  %276 = mul i64 4, %275
  %277 = trunc i64 %276 to i32
  %278 = shl i32 %274, %277
  %279 = and i32 %273, %278
  store i32 %279, i32* %5, align 4
  %280 = load i64, i64* @LPFC_ELS_RING, align 8
  %281 = mul i64 4, %280
  %282 = load i32, i32* %5, align 4
  %283 = trunc i64 %281 to i32
  %284 = ashr i32 %282, %283
  store i32 %284, i32* %5, align 4
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @HA_RXMASK, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %303, label %289

289:                                              ; preds = %263
  %290 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %291 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @LPFC_DEFERRED_RING_EVENT, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %289
  %297 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %298 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @HBA_SP_QUEUE_EVT, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %410

303:                                              ; preds = %296, %289, %263
  %304 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %305 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %303
  %311 = load i32, i32* @LPFC_DEFERRED_RING_EVENT, align 4
  %312 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %313 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  %316 = load i32, i32* @LPFC_DATA_READY, align 4
  %317 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %318 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %317, i32 0, i32 8
  %319 = call i32 @set_bit(i32 %316, i32* %318)
  br label %340

320:                                              ; preds = %303
  %321 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %322 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @LPFC_LINK_UP, align 8
  %325 = icmp sge i64 %323, %324
  br i1 %325, label %326, label %339

326:                                              ; preds = %320
  %327 = load i32, i32* @LPFC_DEFERRED_RING_EVENT, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %330 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, %328
  store i32 %332, i32* %330, align 4
  %333 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %334 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* @HA_RXMASK, align 4
  %337 = and i32 %335, %336
  %338 = call i32 @lpfc_sli_handle_slow_ring_event(%struct.lpfc_hba* %333, %struct.lpfc_sli_ring* %334, i32 %337)
  br label %339

339:                                              ; preds = %326, %320
  br label %340

340:                                              ; preds = %339, %310
  %341 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %342 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %341, i32 0, i32 5
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @LPFC_SLI_REV4, align 8
  %345 = icmp eq i64 %343, %344
  %346 = zext i1 %345 to i32
  %347 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %348 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %347, i32 0, i32 1
  %349 = call i32 @list_empty(i32* %348)
  %350 = icmp ne i32 %349, 0
  %351 = xor i1 %350, true
  %352 = zext i1 %351 to i32
  %353 = and i32 %346, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %340
  %356 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %357 = call i32 @lpfc_drain_txq(%struct.lpfc_hba* %356)
  br label %358

358:                                              ; preds = %355, %340
  %359 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %360 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %359, i32 0, i32 5
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @LPFC_SLI_REV3, align 8
  %363 = icmp sle i64 %361, %362
  br i1 %363, label %364, label %409

364:                                              ; preds = %358
  %365 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %366 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %365, i32 0, i32 6
  %367 = call i32 @spin_lock_irq(i32* %366)
  %368 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %369 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @readl(i32 %370)
  store i32 %371, i32* %6, align 4
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = load i64, i64* @HC_R0INT_ENA, align 8
  %375 = load i64, i64* @LPFC_ELS_RING, align 8
  %376 = shl i64 %374, %375
  %377 = and i64 %373, %376
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %400, label %379

379:                                              ; preds = %364
  %380 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %381 = load i32, i32* %6, align 4
  %382 = load i32, i32* %4, align 4
  %383 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %380, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %381, i32 %382, i32 0)
  %384 = load i64, i64* @HC_R0INT_ENA, align 8
  %385 = load i64, i64* @LPFC_ELS_RING, align 8
  %386 = shl i64 %384, %385
  %387 = load i32, i32* %6, align 4
  %388 = sext i32 %387 to i64
  %389 = or i64 %388, %386
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %6, align 4
  %391 = load i32, i32* %6, align 4
  %392 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %393 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %392, i32 0, i32 7
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @writel(i32 %391, i32 %394)
  %396 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %397 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %396, i32 0, i32 7
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @readl(i32 %398)
  br label %405

400:                                              ; preds = %364
  %401 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* %4, align 4
  %404 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %401, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %402, i32 %403, i32 0)
  br label %405

405:                                              ; preds = %400, %379
  %406 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %407 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %406, i32 0, i32 6
  %408 = call i32 @spin_unlock_irq(i32* %407)
  br label %409

409:                                              ; preds = %405, %358
  br label %410

410:                                              ; preds = %409, %296
  %411 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %412 = call i32 @lpfc_work_list_done(%struct.lpfc_hba* %411)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_post_async_mbox(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_eratt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_handle_mb_event(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_latt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_rrq_active(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_fcp_xri_abort_event_proc(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_els_xri_abort_event_proc(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_async_event_proc(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_hbqbuf_add_hbqs(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_fcf_redisc_event_proc(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_disc_timeout_handler(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_timeout_handler(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_hb_timeout_handler(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_mbox_timeout_handler(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_fabric_iocbs(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_fdmi_timeout_handler(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_ramp_down_queue_handler(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_ramp_up_queue_handler(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_delayed_disc_timeout_handler(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lpfc_sli_handle_slow_ring_event(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @lpfc_drain_txq(%struct.lpfc_hba*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @lpfc_work_list_done(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
