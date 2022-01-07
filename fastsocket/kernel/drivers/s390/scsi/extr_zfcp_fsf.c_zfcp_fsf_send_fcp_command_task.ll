; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_command_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_command_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_unit = type { %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.zfcp_qdio*, %struct.TYPE_9__ }
%struct.zfcp_qdio = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.scsi_cmnd = type { i64, i8*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.zfcp_fsf_req = type { i32, %struct.TYPE_14__*, i32, %struct.scsi_cmnd*, %struct.zfcp_unit*, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.fsf_qtcb_bottom_io }
%struct.fsf_qtcb_bottom_io = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.fcp_cmnd = type { i32 }

@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_UNBLOCKED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@SBAL_SFLAGS0_TYPE_WRITE = common dso_local global i32 0, align 4
@FSF_QTCB_FCP_CMND = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_CLEANUP = common dso_local global i32 0, align 4
@zfcp_fsf_send_fcp_command_handler = common dso_local global i32 0, align 4
@FSF_CLASS_3 = common dso_local global i32 0, align 4
@FCP_CMND_LEN = common dso_local global i32 0, align 4
@SCSI_PROT_NORMAL = common dso_local global i64 0, align 8
@FSF_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_fsf_send_fcp_command_task(%struct.zfcp_unit* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_unit*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca %struct.fcp_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zfcp_adapter*, align 8
  %11 = alloca %struct.zfcp_qdio*, align 8
  %12 = alloca %struct.fsf_qtcb_bottom_io*, align 8
  store %struct.zfcp_unit* %0, %struct.zfcp_unit** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %13 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %19, align 8
  store %struct.zfcp_adapter* %20, %struct.zfcp_adapter** %10, align 8
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 0
  %23 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %22, align 8
  store %struct.zfcp_qdio* %23, %struct.zfcp_qdio** %11, align 8
  %24 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %25 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %24, i32 0, i32 2
  %26 = call i32 @atomic_read(i32* %25)
  %27 = load i32, i32* @ZFCP_STATUS_COMMON_UNBLOCKED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %233

37:                                               ; preds = %2
  %38 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %39 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %42 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = call i32 @atomic_read(i32* %43)
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %48 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %47, i32 0, i32 1
  %49 = call i32 @atomic_inc(i32* %48)
  br label %228

50:                                               ; preds = %37
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DMA_TO_DEVICE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %60 = load i32, i32* @FSF_QTCB_FCP_CMND, align 4
  %61 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %62 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %59, i32 %60, i32 %64)
  store %struct.zfcp_fsf_req* %65, %struct.zfcp_fsf_req** %6, align 8
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %67 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %71 = call i32 @PTR_ERR(%struct.zfcp_fsf_req* %70)
  store i32 %71, i32* %9, align 4
  br label %228

72:                                               ; preds = %58
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store %struct.fsf_qtcb_bottom_io* %83, %struct.fsf_qtcb_bottom_io** %12, align 8
  %84 = load i32, i32* @ZFCP_STATUS_FSFREQ_CLEANUP, align 4
  %85 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %86 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %90 = call i32 @zfcp_unit_get(%struct.zfcp_unit* %89)
  %91 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %92 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %93 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %92, i32 0, i32 4
  store %struct.zfcp_unit* %91, %struct.zfcp_unit** %93, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %95 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %96 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %95, i32 0, i32 3
  store %struct.scsi_cmnd* %94, %struct.scsi_cmnd** %96, align 8
  %97 = load i32, i32* @zfcp_fsf_send_fcp_command_handler, align 4
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %99 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %101 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %104 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i32 %102, i32* %107, align 4
  %108 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %109 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %114 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* @FSF_CLASS_3, align 4
  %119 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %120 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @FCP_CMND_LEN, align 4
  %122 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %123 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %125 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %124)
  %126 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %72
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %135 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %137 = call i32 @scsi_get_lba(%struct.scsi_cmnd* %136)
  %138 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %139 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %128, %72
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %142 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %143 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %142, i32 0, i32 3
  %144 = call i64 @zfcp_fsf_set_data_dir(%struct.scsi_cmnd* %141, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %221

147:                                              ; preds = %140
  %148 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %149 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %148, i32 0, i32 1
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %152, i32 0, i32 2
  %154 = bitcast i32* %153 to %struct.fcp_cmnd*
  store %struct.fcp_cmnd* %154, %struct.fcp_cmnd** %7, align 8
  %155 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %7, align 8
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %157 = call i32 @zfcp_fc_scsi_to_fcp(%struct.fcp_cmnd* %155, %struct.scsi_cmnd* %156)
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %159 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %147
  %162 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %163 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %164 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %163, i32 0, i32 0
  %165 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %166 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %165)
  %167 = call i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio* %162, i32* %164, i64 %166)
  %168 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %169 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %170 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %169, i32 0, i32 0
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %173 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %172)
  %174 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %175 = call i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %168, i32* %170, i32 %171, i32 %173, i32 %174)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %161
  br label %221

179:                                              ; preds = %161
  %180 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %181 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %180)
  %182 = call i32 @zfcp_qdio_real_bytes(i32 %181)
  %183 = load %struct.fsf_qtcb_bottom_io*, %struct.fsf_qtcb_bottom_io** %12, align 8
  %184 = getelementptr inbounds %struct.fsf_qtcb_bottom_io, %struct.fsf_qtcb_bottom_io* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %179, %147
  %186 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %187 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %188 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %187, i32 0, i32 0
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %191 = call i32 @scsi_sglist(%struct.scsi_cmnd* %190)
  %192 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %193 = call i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %186, i32* %188, i32 %189, i32 %191, i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %221

198:                                              ; preds = %185
  %199 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %200 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %199, i32 0, i32 0
  %201 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %200, align 8
  %202 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %203 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %202, i32 0, i32 0
  %204 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %201, i32* %203)
  %205 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %206 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %198
  %209 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %210 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %211 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %210, i32 0, i32 0
  %212 = call i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio* %209, i32* %211)
  br label %213

213:                                              ; preds = %208, %198
  %214 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %215 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i64 @unlikely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %221

220:                                              ; preds = %213
  br label %228

221:                                              ; preds = %219, %197, %178, %146
  %222 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %223 = call i32 @zfcp_unit_put(%struct.zfcp_unit* %222)
  %224 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %225 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %224)
  %226 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %227 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %226, i32 0, i32 1
  store i8* null, i8** %227, align 8
  br label %228

228:                                              ; preds = %221, %220, %69, %46
  %229 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %11, align 8
  %230 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %229, i32 0, i32 0
  %231 = call i32 @spin_unlock(i32* %230)
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %228, %34
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @PTR_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_unit_get(%struct.zfcp_unit*) #1

declare dso_local i64 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i64 @zfcp_fsf_set_data_dir(%struct.scsi_cmnd*, i32*) #1

declare dso_local i32 @zfcp_fc_scsi_to_fcp(%struct.fcp_cmnd*, %struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio*, i32*, i64) #1

declare dso_local i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio*, i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_qdio_real_bytes(i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_unit_put(%struct.zfcp_unit*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
