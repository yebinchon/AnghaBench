; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32, i32*, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ipr_resource_entry*, %struct.TYPE_6__* }
%struct.ipr_resource_entry = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ipr_ioa_cfg = type { i64, %struct.ipr_hrr_queue*, %struct.TYPE_9__* }
%struct.ipr_hrr_queue = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.ipr_ioarcb = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.ipr_cmnd = type { i32, i32, %struct.scsi_cmnd*, %struct.ipr_ioarcb }

@DID_OK = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@ipr_scsi_done = common dso_local global i32 0, align 4
@ipr_scsi_eh_done = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_NO_ULEN_CHK = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_NO_LINK_DESC = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_DELAY_AFTER_RST = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_ALIGNED_BFR = common dso_local global i32 0, align 4
@IPR_QUERY_RSRC_STATE = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_SYNC_COMPLETE = common dso_local global i32 0, align 4
@IPR_TRACE_START = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @ipr_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.ipr_ioa_cfg*, align 8
  %7 = alloca %struct.ipr_resource_entry*, align 8
  %8 = alloca %struct.ipr_ioarcb*, align 8
  %9 = alloca %struct.ipr_cmnd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipr_hrr_queue*, align 8
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 6
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %22, %struct.ipr_ioa_cfg** %6, align 8
  %23 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %23, void (%struct.scsi_cmnd*)** %25, align 8
  %26 = load i32, i32* @DID_OK, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 6
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %33, align 8
  store %struct.ipr_resource_entry* %34, %struct.ipr_resource_entry** %7, align 8
  %35 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %36 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %2
  %39 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %40 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_lock_irqsave(i32 %48, i64 %49)
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %53 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %54 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ata_sas_queuecmd(%struct.scsi_cmnd* %51, void (%struct.scsi_cmnd*)* %52, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %60 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32 %63, i64 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %3, align 4
  br label %391

67:                                               ; preds = %38, %2
  %68 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %69 = call i32 @ipr_get_hrrq_index(%struct.ipr_ioa_cfg* %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %71 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %70, i32 0, i32 1
  %72 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %72, i64 %74
  store %struct.ipr_hrr_queue* %75, %struct.ipr_hrr_queue** %13, align 8
  %76 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %77 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_lock_irqsave(i32 %78, i64 %79)
  %81 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %82 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %67
  %86 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %87 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %92 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %85, %67
  %97 = phi i1 [ false, %85 ], [ false, %67 ], [ %95, %90 ]
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %103 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32 %104, i64 %105)
  %107 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %107, i32* %3, align 4
  br label %391

108:                                              ; preds = %96
  %109 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %110 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %108
  %114 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %115 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %120 = icmp ne %struct.ipr_resource_entry* %119, null
  %121 = xor i1 %120, true
  br label %122

122:                                              ; preds = %118, %113, %108
  %123 = phi i1 [ true, %113 ], [ true, %108 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %129 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32 %130, i64 %131)
  br label %367

133:                                              ; preds = %122
  %134 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %135 = call %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(%struct.ipr_hrr_queue* %134)
  store %struct.ipr_cmnd* %135, %struct.ipr_cmnd** %9, align 8
  %136 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %137 = icmp eq %struct.ipr_cmnd* %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %140 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i64, i64* %10, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32 %141, i64 %142)
  %144 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %144, i32* %3, align 4
  br label %391

145:                                              ; preds = %133
  %146 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %147 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %10, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32 %148, i64 %149)
  %151 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %152 = load i32, i32* @ipr_scsi_done, align 4
  %153 = call i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd* %151, i32 %152)
  %154 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %155 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %154, i32 0, i32 3
  store %struct.ipr_ioarcb* %155, %struct.ipr_ioarcb** %8, align 8
  %156 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %157 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %164 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @memcpy(i32 %159, i32* %162, i32 %165)
  %167 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %168 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %169 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %168, i32 0, i32 2
  store %struct.scsi_cmnd* %167, %struct.scsi_cmnd** %169, align 8
  %170 = load i32, i32* @ipr_scsi_eh_done, align 4
  %171 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %172 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %174 = call i64 @ipr_is_gscsi(%struct.ipr_resource_entry* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %145
  %177 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %178 = call i64 @ipr_is_vset_device(%struct.ipr_resource_entry* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %223

180:                                              ; preds = %176, %145
  %181 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %182 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load i32, i32* @IPR_FLAGS_HI_NO_ULEN_CHK, align 4
  %187 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %188 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %185, %180
  %193 = load i32, i32* @IPR_FLAGS_HI_NO_LINK_DESC, align 4
  %194 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %195 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %193
  store i32 %198, i32* %196, align 4
  %199 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %200 = call i64 @ipr_is_gscsi(%struct.ipr_resource_entry* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %192
  %203 = load i32, i32* @IPR_FLAGS_LO_DELAY_AFTER_RST, align 4
  %204 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %205 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %202, %192
  %210 = load i32, i32* @IPR_FLAGS_LO_ALIGNED_BFR, align 4
  %211 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %212 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %210
  store i32 %215, i32* %213, align 4
  %216 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %217 = call i32 @ipr_get_task_attributes(%struct.scsi_cmnd* %216)
  %218 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %219 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %217
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %209, %176
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %225 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %228, 192
  br i1 %229, label %230, label %247

230:                                              ; preds = %223
  %231 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %232 = call i64 @ipr_is_gscsi(%struct.ipr_resource_entry* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @IPR_QUERY_RSRC_STATE, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %234, %230
  %243 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %244 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %245 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 4
  br label %247

247:                                              ; preds = %242, %234, %223
  %248 = load i32, i32* %12, align 4
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = call i64 @likely(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %247
  %254 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %255 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %260 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %261 = call i32 @ipr_build_ioadl64(%struct.ipr_ioa_cfg* %259, %struct.ipr_cmnd* %260)
  store i32 %261, i32* %12, align 4
  br label %266

262:                                              ; preds = %253
  %263 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %264 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %265 = call i32 @ipr_build_ioadl(%struct.ipr_ioa_cfg* %263, %struct.ipr_cmnd* %264)
  store i32 %265, i32* %12, align 4
  br label %266

266:                                              ; preds = %262, %258
  br label %267

267:                                              ; preds = %266, %247
  %268 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %269 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i64, i64* %10, align 8
  %272 = call i32 @spin_lock_irqsave(i32 %270, i64 %271)
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %288, label %275

275:                                              ; preds = %267
  %276 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %277 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %275
  %281 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %282 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  br label %286

286:                                              ; preds = %280, %275
  %287 = phi i1 [ false, %275 ], [ %285, %280 ]
  br label %288

288:                                              ; preds = %286, %267
  %289 = phi i1 [ true, %267 ], [ %287, %286 ]
  %290 = zext i1 %289 to i32
  %291 = call i64 @unlikely(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %311

293:                                              ; preds = %288
  %294 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %295 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %294, i32 0, i32 0
  %296 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %297 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %296, i32 0, i32 3
  %298 = call i32 @list_add_tail(i32* %295, i32* %297)
  %299 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %300 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i64, i64* %10, align 8
  %303 = call i32 @spin_unlock_irqrestore(i32 %301, i64 %302)
  %304 = load i32, i32* %12, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %293
  %307 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %308 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %307)
  br label %309

309:                                              ; preds = %306, %293
  %310 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %310, i32* %3, align 4
  br label %391

311:                                              ; preds = %288
  %312 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %313 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i64 @unlikely(i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %330

317:                                              ; preds = %311
  %318 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %319 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %318, i32 0, i32 0
  %320 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %321 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %320, i32 0, i32 3
  %322 = call i32 @list_add_tail(i32* %319, i32* %321)
  %323 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %324 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i64, i64* %10, align 8
  %327 = call i32 @spin_unlock_irqrestore(i32 %325, i64 %326)
  %328 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %329 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %328)
  br label %367

330:                                              ; preds = %311
  %331 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %332 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %335 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  %336 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %337 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %330
  %341 = load i32, i32* @IPR_FLAGS_HI_SYNC_COMPLETE, align 4
  %342 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %343 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %341
  store i32 %346, i32* %344, align 4
  %347 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %348 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %347, i32 0, i32 0
  store i64 0, i64* %348, align 8
  br label %349

349:                                              ; preds = %340, %330
  %350 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %351 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %350, i32 0, i32 0
  %352 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %353 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %352, i32 0, i32 2
  %354 = call i32 @list_add_tail(i32* %351, i32* %353)
  %355 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %356 = load i32, i32* @IPR_TRACE_START, align 4
  %357 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %358 = call i32 @IPR_GET_RES_PHYS_LOC(%struct.ipr_resource_entry* %357)
  %359 = call i32 @ipr_trc_hook(%struct.ipr_cmnd* %355, i32 %356, i32 %358)
  %360 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %361 = call i32 @ipr_send_command(%struct.ipr_cmnd* %360)
  %362 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %363 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load i64, i64* %10, align 8
  %366 = call i32 @spin_unlock_irqrestore(i32 %364, i64 %365)
  store i32 0, i32* %3, align 4
  br label %391

367:                                              ; preds = %317, %127
  %368 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %369 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load i64, i64* %10, align 8
  %372 = call i32 @spin_lock_irqsave(i32 %370, i64 %371)
  %373 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %374 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %377 = call i32 @memset(i32 %375, i32 0, i32 %376)
  %378 = load i32, i32* @DID_NO_CONNECT, align 4
  %379 = shl i32 %378, 16
  %380 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %381 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %380, i32 0, i32 1
  store i32 %379, i32* %381, align 8
  %382 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %383 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %382, i32 0, i32 0
  %384 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %383, align 8
  %385 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %384(%struct.scsi_cmnd* %385)
  %386 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %387 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i64, i64* %10, align 8
  %390 = call i32 @spin_unlock_irqrestore(i32 %388, i64 %389)
  store i32 0, i32* %3, align 4
  br label %391

391:                                              ; preds = %367, %349, %309, %138, %101, %43
  %392 = load i32, i32* %3, align 4
  ret i32 %392
}

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_sas_queuecmd(%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ipr_get_hrrq_index(%struct.ipr_ioa_cfg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(%struct.ipr_hrr_queue*) #1

declare dso_local i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ipr_is_gscsi(%struct.ipr_resource_entry*) #1

declare dso_local i64 @ipr_is_vset_device(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_get_task_attributes(%struct.scsi_cmnd*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ipr_build_ioadl64(%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_build_ioadl(%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @ipr_trc_hook(%struct.ipr_cmnd*, i32, i32) #1

declare dso_local i32 @IPR_GET_RES_PHYS_LOC(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_send_command(%struct.ipr_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
