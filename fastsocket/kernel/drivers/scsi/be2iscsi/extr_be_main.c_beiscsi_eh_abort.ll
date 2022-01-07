; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eh_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_task = type { %struct.iscsi_conn*, %struct.beiscsi_io_task*, i32 }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i32, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { %struct.TYPE_6__, %struct.invalidate_command_table* }
%struct.TYPE_6__ = type { i32 }
%struct.invalidate_command_table = type { i32, i32 }
%struct.beiscsi_io_task = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, i32* }

@SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_EH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"BM_%d : Failed to allocate memory formgmt_invalidate_icds\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"BM_%d : mgmt_invalidate_icds could not besubmitted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @beiscsi_eh_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.beiscsi_io_task*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.beiscsi_conn*, align 8
  %9 = alloca %struct.beiscsi_hba*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.invalidate_command_table*, align 8
  %12 = alloca %struct.be_dma_mem, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.iscsi_task*
  store %struct.iscsi_task* %20, %struct.iscsi_task** %5, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @scsi_target(i32 %23)
  %25 = call %struct.iscsi_cls_session* @starget_to_session(i32 %24)
  store %struct.iscsi_cls_session* %25, %struct.iscsi_cls_session** %4, align 8
  %26 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %26, i32 0, i32 0
  %28 = load %struct.iscsi_session*, %struct.iscsi_session** %27, align 8
  store %struct.iscsi_session* %28, %struct.iscsi_session** %10, align 8
  %29 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %30 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  %32 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %33 = icmp ne %struct.iscsi_task* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %41 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load i32, i32* @SUCCESS, align 4
  store i32 %43, i32* %2, align 4
  br label %149

44:                                               ; preds = %34
  %45 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %45, i32 0, i32 1
  %47 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %46, align 8
  store %struct.beiscsi_io_task* %47, %struct.beiscsi_io_task** %6, align 8
  %48 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %49 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  %53 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %54 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %2, align 4
  br label %149

57:                                               ; preds = %44
  %58 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %59 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_bh(i32* %59)
  %61 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %62 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %61, i32 0, i32 0
  %63 = load %struct.iscsi_conn*, %struct.iscsi_conn** %62, align 8
  store %struct.iscsi_conn* %63, %struct.iscsi_conn** %7, align 8
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 0
  %66 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %65, align 8
  store %struct.beiscsi_conn* %66, %struct.beiscsi_conn** %8, align 8
  %67 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %68 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %67, i32 0, i32 1
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %68, align 8
  store %struct.beiscsi_hba* %69, %struct.beiscsi_hba** %9, align 8
  %70 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %71 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %13, align 4
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 1
  %75 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %74, align 8
  store %struct.invalidate_command_table* %75, %struct.invalidate_command_table** %11, align 8
  %76 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %77 = call i32 @memset(%struct.invalidate_command_table* %76, i32 0, i32 8)
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %80 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %82 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %87 = getelementptr inbounds %struct.invalidate_command_table, %struct.invalidate_command_table* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %15, align 4
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %89 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %93 = call i32* @pci_alloc_consistent(i32 %91, i32 4, i32* %92)
  %94 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %57
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %102 = call i32 @beiscsi_log(%struct.beiscsi_hba* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @FAILED, align 4
  store i32 %103, i32* %2, align 4
  br label %149

104:                                              ; preds = %57
  %105 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  store i32 4, i32* %105, align 8
  %106 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %107 = load %struct.invalidate_command_table*, %struct.invalidate_command_table** %11, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @mgmt_invalidate_icds(%struct.beiscsi_hba* %106, %struct.invalidate_command_table* %107, i32 %108, i32 %109, %struct.be_dma_mem* %12)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %104
  %114 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %115 = load i32, i32* @KERN_WARNING, align 4
  %116 = load i32, i32* @BEISCSI_LOG_EH, align 4
  %117 = call i32 @beiscsi_log(%struct.beiscsi_hba* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %119 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @pci_free_consistent(i32 %121, i32 %123, i32* %125, i32 %127)
  %129 = load i32, i32* @FAILED, align 4
  store i32 %129, i32* %2, align 4
  br label %149

130:                                              ; preds = %104
  %131 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %132 = load i32, i32* %14, align 4
  %133 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %131, i32 %132, i32* null, i32* %134)
  %136 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %137 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %12, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @pci_free_consistent(i32 %139, i32 %141, i32* %143, i32 %145)
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %148 = call i32 @iscsi_eh_abort(%struct.scsi_cmnd* %147)
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %130, %113, %98, %52, %39
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.iscsi_cls_session* @starget_to_session(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @memset(%struct.invalidate_command_table*, i32, i32) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @mgmt_invalidate_icds(%struct.beiscsi_hba*, %struct.invalidate_command_table*, i32, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, i32*, i32*) #1

declare dso_local i32 @iscsi_eh_abort(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
