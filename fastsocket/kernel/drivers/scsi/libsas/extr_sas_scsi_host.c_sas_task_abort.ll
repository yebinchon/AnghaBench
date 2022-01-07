; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_task_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, %struct.sas_task_slow*, %struct.scsi_cmnd* }
%struct.sas_task_slow = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (i32)* }
%struct.scsi_cmnd = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_task_abort(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.sas_task_slow*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %8 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %7, i32 0, i32 2
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %3, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = icmp ne %struct.scsi_cmnd* %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %1
  %13 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %14 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %13, i32 0, i32 1
  %15 = load %struct.sas_task_slow*, %struct.sas_task_slow** %14, align 8
  store %struct.sas_task_slow* %15, %struct.sas_task_slow** %4, align 8
  %16 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %17 = icmp ne %struct.sas_task_slow* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %64

19:                                               ; preds = %12
  %20 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %21 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %20, i32 0, i32 0
  %22 = call i32 @del_timer(%struct.TYPE_4__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %64

25:                                               ; preds = %19
  %26 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %27 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.sas_task_slow*, %struct.sas_task_slow** %4, align 8
  %31 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %29(i32 %33)
  br label %64

35:                                               ; preds = %1
  %36 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %37 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @dev_is_sata(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %43 = call i32 @sas_ata_task_abort(%struct.sas_task* %42)
  br label %64

44:                                               ; preds = %35
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.request_queue*, %struct.request_queue** %48, align 8
  store %struct.request_queue* %49, %struct.request_queue** %5, align 8
  %50 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %51 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_lock_irqsave(i32 %52, i64 %53)
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @blk_abort_request(i32 %57)
  %59 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %60 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %18, %24, %25, %44, %41
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i64 @dev_is_sata(i32) #1

declare dso_local i32 @sas_ata_task_abort(%struct.sas_task*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_abort_request(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
