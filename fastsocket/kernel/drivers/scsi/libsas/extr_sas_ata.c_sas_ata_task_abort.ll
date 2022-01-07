; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_task_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.ata_queued_cmd* }
%struct.ata_queued_cmd = type { %struct.completion*, i32, i32, %struct.TYPE_3__* }
%struct.completion = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@ATA_QCFLAG_ACTIVE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sas_ata_task_abort(%struct.sas_task* %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.completion*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.sas_task* %0, %struct.sas_task** %2, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  %8 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %7, i32 0, i32 0
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %8, align 8
  store %struct.ata_queued_cmd* %9, %struct.ata_queued_cmd** %3, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.request_queue*, %struct.request_queue** %20, align 8
  store %struct.request_queue* %21, %struct.request_queue** %5, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32 %24, i64 %25)
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @blk_abort_request(i32 %31)
  %33 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  br label %60

38:                                               ; preds = %1
  %39 = load i32, i32* @ATA_QCFLAG_ACTIVE, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %42 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %46 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %47 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %51 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %52 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %56 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %55, i32 0, i32 0
  %57 = load %struct.completion*, %struct.completion** %56, align 8
  store %struct.completion* %57, %struct.completion** %4, align 8
  %58 = load %struct.completion*, %struct.completion** %4, align 8
  %59 = call i32 @complete(%struct.completion* %58)
  br label %60

60:                                               ; preds = %38, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_abort_request(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
