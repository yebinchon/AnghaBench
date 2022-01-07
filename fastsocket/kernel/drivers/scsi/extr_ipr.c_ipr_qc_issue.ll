; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_qc_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_16__, i32, i32, %struct.ipr_cmnd*, %struct.ata_port* }
%struct.TYPE_16__ = type { i32 }
%struct.ipr_cmnd = type { %struct.TYPE_15__*, i32, %struct.ipr_ioarcb, i32, %struct.ata_queued_cmd*, i32, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i32 }
%struct.ipr_ioarcb = type { %struct.TYPE_14__, i32, i8*, %struct.TYPE_13__, i8* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ipr_ioarcb_ata_regs }
%struct.ipr_ioarcb_ata_regs = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ipr_ioarcb_ata_regs }
%struct.ata_port = type { %struct.ipr_sata_port* }
%struct.ipr_sata_port = type { %struct.ipr_ioa_cfg*, %struct.ipr_resource_entry* }
%struct.ipr_ioa_cfg = type { i64 }
%struct.ipr_resource_entry = type { i32 }

@AC_ERR_SYSTEM = common dso_local global i32 0, align 4
@ipr_lock_and_done = common dso_local global i32 0, align 4
@ipr_sata_done = common dso_local global i32 0, align 4
@IPR_RQTYPE_ATA_PASSTHRU = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_NO_LINK_DESC = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_NO_ULEN_CHK = common dso_local global i32 0, align 4
@IPR_ATA_FLAG_STATUS_ON_GOOD_COMPLETION = common dso_local global i32 0, align 4
@IPR_MAX_CDB_LEN = common dso_local global i32 0, align 4
@IPR_TRACE_START = common dso_local global i32 0, align 4
@IPR_ATA_FLAG_XFER_TYPE_DMA = common dso_local global i32 0, align 4
@IPR_ATA_FLAG_PACKET_CMD = common dso_local global i32 0, align 4
@AC_ERR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ipr_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ipr_sata_port*, align 8
  %6 = alloca %struct.ipr_resource_entry*, align 8
  %7 = alloca %struct.ipr_ioa_cfg*, align 8
  %8 = alloca %struct.ipr_cmnd*, align 8
  %9 = alloca %struct.ipr_ioarcb*, align 8
  %10 = alloca %struct.ipr_ioarcb_ata_regs*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 4
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %15, align 8
  store %struct.ipr_sata_port* %16, %struct.ipr_sata_port** %5, align 8
  %17 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %18 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %17, i32 0, i32 1
  %19 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %18, align 8
  store %struct.ipr_resource_entry* %19, %struct.ipr_resource_entry** %6, align 8
  %20 = load %struct.ipr_sata_port*, %struct.ipr_sata_port** %5, align 8
  %21 = getelementptr inbounds %struct.ipr_sata_port, %struct.ipr_sata_port* %20, i32 0, i32 0
  %22 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %21, align 8
  store %struct.ipr_ioa_cfg* %22, %struct.ipr_ioa_cfg** %7, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 3
  %25 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %24, align 8
  %26 = icmp eq %struct.ipr_cmnd* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %29 = call i32 @ipr_qc_defer(%struct.ata_queued_cmd* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 3
  %33 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %32, align 8
  store %struct.ipr_cmnd* %33, %struct.ipr_cmnd** %8, align 8
  %34 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %35 = icmp eq %struct.ipr_cmnd* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @AC_ERR_SYSTEM, align 4
  store i32 %37, i32* %2, align 4
  br label %228

38:                                               ; preds = %30
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %39, i32 0, i32 3
  store %struct.ipr_cmnd* null, %struct.ipr_cmnd** %40, align 8
  %41 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %42 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %47 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %54 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %38
  %60 = phi i1 [ true, %38 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %66 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %65, i32 0, i32 5
  %67 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %68 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = call i32 @list_add_tail(i32* %66, i32* %70)
  %72 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %73 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load i32, i32* @AC_ERR_SYSTEM, align 4
  store i32 %77, i32* %2, align 4
  br label %228

78:                                               ; preds = %59
  %79 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %80 = load i32, i32* @ipr_lock_and_done, align 4
  %81 = call i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd* %79, i32 %80)
  %82 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %83 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %82, i32 0, i32 2
  store %struct.ipr_ioarcb* %83, %struct.ipr_ioarcb** %9, align 8
  %84 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %90 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store %struct.ipr_ioarcb_ata_regs* %92, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %93 = call i8* @cpu_to_be16(i32 40)
  %94 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %9, align 8
  %95 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  br label %102

96:                                               ; preds = %78
  %97 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %9, align 8
  %98 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store %struct.ipr_ioarcb_ata_regs* %101, %struct.ipr_ioarcb_ata_regs** %10, align 8
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %104 = call i32 @memset(%struct.ipr_ioarcb_ata_regs* %103, i32 0, i32 4)
  %105 = call i8* @cpu_to_be16(i32 4)
  %106 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %9, align 8
  %107 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %109 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %108, i32 0, i32 5
  %110 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %111 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = call i32 @list_add_tail(i32* %109, i32* %113)
  %115 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %116 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %117 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %116, i32 0, i32 4
  store %struct.ata_queued_cmd* %115, %struct.ata_queued_cmd** %117, align 8
  %118 = load i32, i32* @ipr_sata_done, align 4
  %119 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %120 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %122 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %125 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @IPR_RQTYPE_ATA_PASSTHRU, align 4
  %128 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %9, align 8
  %129 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @IPR_FLAGS_HI_NO_LINK_DESC, align 4
  %132 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %9, align 8
  %133 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @IPR_FLAGS_HI_NO_ULEN_CHK, align 4
  %138 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %9, align 8
  %139 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 4
  %143 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %144 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %147 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  %149 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %102
  %153 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %154 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %155 = call i32 @ipr_build_ata_ioadl64(%struct.ipr_cmnd* %153, %struct.ata_queued_cmd* %154)
  br label %160

156:                                              ; preds = %102
  %157 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %158 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %159 = call i32 @ipr_build_ata_ioadl(%struct.ipr_cmnd* %157, %struct.ata_queued_cmd* %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* @IPR_ATA_FLAG_STATUS_ON_GOOD_COMPLETION, align 4
  %162 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %163 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %167 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %168 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %167, i32 0, i32 0
  %169 = call i32 @ipr_copy_sata_tf(%struct.ipr_ioarcb_ata_regs* %166, %struct.TYPE_16__* %168)
  %170 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %9, align 8
  %171 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %175 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IPR_MAX_CDB_LEN, align 4
  %178 = call i32 @memcpy(i32 %173, i32 %176, i32 %177)
  %179 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %180 = load i32, i32* @IPR_TRACE_START, align 4
  %181 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %6, align 8
  %182 = call i32 @IPR_GET_RES_PHYS_LOC(%struct.ipr_resource_entry* %181)
  %183 = call i32 @ipr_trc_hook(%struct.ipr_cmnd* %179, i32 %180, i32 %182)
  %184 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %185 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  switch i32 %187, label %212 [
    i32 129, label %188
    i32 128, label %188
    i32 130, label %189
    i32 131, label %195
    i32 132, label %195
    i32 133, label %201
  ]

188:                                              ; preds = %160, %160
  br label %220

189:                                              ; preds = %160
  %190 = load i32, i32* @IPR_ATA_FLAG_XFER_TYPE_DMA, align 4
  %191 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %192 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %220

195:                                              ; preds = %160, %160
  %196 = load i32, i32* @IPR_ATA_FLAG_PACKET_CMD, align 4
  %197 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %198 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %220

201:                                              ; preds = %160
  %202 = load i32, i32* @IPR_ATA_FLAG_PACKET_CMD, align 4
  %203 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %204 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* @IPR_ATA_FLAG_XFER_TYPE_DMA, align 4
  %208 = load %struct.ipr_ioarcb_ata_regs*, %struct.ipr_ioarcb_ata_regs** %10, align 8
  %209 = getelementptr inbounds %struct.ipr_ioarcb_ata_regs, %struct.ipr_ioarcb_ata_regs* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %220

212:                                              ; preds = %160
  %213 = call i32 @WARN_ON(i32 1)
  %214 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %215 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %214, i32 0, i32 0
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  %218 = call i32 @spin_unlock(i32* %217)
  %219 = load i32, i32* @AC_ERR_INVALID, align 4
  store i32 %219, i32* %2, align 4
  br label %228

220:                                              ; preds = %201, %195, %189, %188
  %221 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %222 = call i32 @ipr_send_command(%struct.ipr_cmnd* %221)
  %223 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %8, align 8
  %224 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %223, i32 0, i32 0
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = call i32 @spin_unlock(i32* %226)
  store i32 0, i32* %2, align 4
  br label %228

228:                                              ; preds = %220, %212, %64, %36
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @ipr_qc_defer(%struct.ata_queued_cmd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memset(%struct.ipr_ioarcb_ata_regs*, i32, i32) #1

declare dso_local i32 @ipr_build_ata_ioadl64(%struct.ipr_cmnd*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @ipr_build_ata_ioadl(%struct.ipr_cmnd*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @ipr_copy_sata_tf(%struct.ipr_ioarcb_ata_regs*, %struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipr_trc_hook(%struct.ipr_cmnd*, i32, i32) #1

declare dso_local i32 @IPR_GET_RES_PHYS_LOC(%struct.ipr_resource_entry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ipr_send_command(%struct.ipr_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
