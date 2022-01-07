; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eh_device_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eh_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.iscsi_task = type { i64, %struct.TYPE_8__*, %struct.beiscsi_io_task* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.beiscsi_io_task = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_6__*, %struct.beiscsi_conn* }
%struct.TYPE_6__ = type { i32, %struct.iscsi_task** }
%struct.beiscsi_conn = type { i32, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { %struct.TYPE_10__, %struct.invalidate_command_table* }
%struct.TYPE_10__ = type { i32 }
%struct.invalidate_command_table = type { i32, i32 }
%struct.iscsi_session = type { i64, i32, %struct.iscsi_conn* }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.be_dma_mem = type { i32, i32, %struct.invalidate_command_table* }

@ISCSI_STATE_LOGGED_IN = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@BE2_CMDS_PER_CXN = common dso_local global i32 0, align 4
@ISCSI_TASK_FREE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_EH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"BM_%d : Failed to allocate memory formgmt_invalidate_icds\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"BM_%d : mgmt_invalidate_icds could not be submitted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @beiscsi_eh_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_eh_device_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.beiscsi_io_task*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.beiscsi_conn*, align 8
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca %struct.iscsi_session*, align 8
  %10 = alloca %struct.iscsi_cls_session*, align 8
  %11 = alloca %struct.invalidate_command_table*, align 8
  %12 = alloca %struct.be_dma_mem, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scsi_target(i32 %19)
  %21 = call %struct.iscsi_cls_session* @starget_to_session(i32 %20)
  store %struct.iscsi_cls_session* %21, %struct.iscsi_cls_session** %10, align 8
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %10, align 8
  %23 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %22, i32 0, i32 0
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %23, align 8
  store %struct.iscsi_session* %24, %struct.iscsi_session** %9, align 8
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %26 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %29 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %28, i32 0, i32 2
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %29, align 8
  %31 = icmp ne %struct.iscsi_conn* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %34 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ISCSI_STATE_LOGGED_IN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %1
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load i32, i32* @FAILED, align 4
  store i32 %42, i32* %2, align 4
  br label %205

43:                                               ; preds = %32
  %44 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %45 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %44, i32 0, i32 2
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %45, align 8
  store %struct.iscsi_conn* %46, %struct.iscsi_conn** %6, align 8
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 1
  %49 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %48, align 8
  store %struct.beiscsi_conn* %49, %struct.beiscsi_conn** %7, align 8
  %50 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %7, align 8
  %51 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %50, i32 0, i32 1
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %51, align 8
  store %struct.beiscsi_hba* %52, %struct.beiscsi_hba** %8, align 8
  %53 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %7, align 8
  %54 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  %56 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %57 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %56, i32 0, i32 1
  %58 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %57, align 8
  store %struct.invalidate_command_table* %58, %struct.invalidate_command_table** %11, align 8
  %59 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %60 = load i32, i32* @BE2_CMDS_PER_CXN, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 8, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memset(%struct.invalidate_command_table* %59, i32 0, i32 %63)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %129, %43
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %66, %71
  br i1 %72, label %73, label %132

73:                                               ; preds = %65
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %75 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.iscsi_task**, %struct.iscsi_task*** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %78, i64 %80
  %82 = load %struct.iscsi_task*, %struct.iscsi_task** %81, align 8
  store %struct.iscsi_task* %82, %struct.iscsi_task** %4, align 8
  %83 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %84 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %83, i32 0, i32 2
  %85 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %84, align 8
  store %struct.beiscsi_io_task* %85, %struct.beiscsi_io_task** %5, align 8
  %86 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %87 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = icmp ne %struct.TYPE_8__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %73
  %91 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %92 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ISCSI_TASK_FREE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %73
  br label %129

97:                                               ; preds = %90
  %98 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %99 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %106 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %104, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  br label %129

114:                                              ; preds = %97
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %117 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %5, align 8
  %119 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %124 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %16, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %16, align 4
  %127 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %128 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %127, i32 1
  store %struct.invalidate_command_table* %128, %struct.invalidate_command_table** %11, align 8
  br label %129

129:                                              ; preds = %114, %113, %96
  %130 = load i32, i32* %15, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %65

132:                                              ; preds = %65
  %133 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %134 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %133, i32 0, i32 1
  %135 = call i32 @spin_unlock_bh(i32* %134)
  %136 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %137 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %136, i32 0, i32 1
  %138 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %137, align 8
  store %struct.invalidate_command_table* %138, %struct.invalidate_command_table** %11, align 8
  %139 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %140 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %144 = call %struct.invalidate_command_table* @pci_alloc_consistent(i32 %142, i32 4, i32* %143)
  %145 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  store %struct.invalidate_command_table* %144, %struct.invalidate_command_table** %145, align 8
  %146 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %147 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %146, align 8
  %148 = icmp eq %struct.invalidate_command_table* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %132
  %150 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %151 = load i32, i32* @KERN_ERR, align 4
  %152 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %153 = call i32 @beiscsi_log(%struct.beiscsi_hba* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %154 = load i32, i32* @FAILED, align 4
  store i32 %154, i32* %2, align 4
  br label %205

155:                                              ; preds = %132
  %156 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  store i32 4, i32* %156, align 8
  %157 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %158 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %157, align 8
  %159 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @memset(%struct.invalidate_command_table* %158, i32 0, i32 %160)
  %162 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %163 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @mgmt_invalidate_icds(%struct.beiscsi_hba* %162, %struct.invalidate_command_table* %163, i32 %164, i32 %165, %struct.be_dma_mem* %12)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %186, label %169

169:                                              ; preds = %155
  %170 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %171 = load i32, i32* @KERN_WARNING, align 4
  %172 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %173 = call i32 @beiscsi_log(%struct.beiscsi_hba* %170, i32 %171, i32 %172, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %174 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %175 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %181 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %180, align 8
  %182 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @pci_free_consistent(i32 %177, i32 %179, %struct.invalidate_command_table* %181, i32 %183)
  %185 = load i32, i32* @FAILED, align 4
  store i32 %185, i32* %2, align 4
  br label %205

186:                                              ; preds = %155
  %187 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %188 = load i32, i32* %14, align 4
  %189 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %190 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %189, align 8
  %191 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %187, i32 %188, i32* null, %struct.invalidate_command_table* %190)
  %192 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %193 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %199 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %198, align 8
  %200 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @pci_free_consistent(i32 %195, i32 %197, %struct.invalidate_command_table* %199, i32 %201)
  %203 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %204 = call i32 @iscsi_eh_device_reset(%struct.scsi_cmnd* %203)
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %186, %169, %149, %38
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.iscsi_cls_session* @starget_to_session(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @memset(%struct.invalidate_command_table*, i32, i32) #1

declare dso_local %struct.invalidate_command_table* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @mgmt_invalidate_icds(%struct.beiscsi_hba*, %struct.invalidate_command_table*, i32, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.invalidate_command_table*, i32) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, i32*, %struct.invalidate_command_table*) #1

declare dso_local i32 @iscsi_eh_device_reset(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
