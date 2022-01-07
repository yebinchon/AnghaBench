; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c___scsi_queue_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c___scsi_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32, %struct.request_queue*, %struct.Scsi_Host* }
%struct.request_queue = type { i32 }
%struct.Scsi_Host = type { i32, i32 }
%struct.scsi_target = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Inserting command %p into mlqueue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, i32, i32)* @__scsi_queue_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__scsi_queue_insert(%struct.scsi_cmnd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.scsi_target*, align 8
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %7, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %18, align 8
  store %struct.scsi_device* %19, %struct.scsi_device** %8, align 8
  %20 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %21 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %20)
  store %struct.scsi_target* %21, %struct.scsi_target** %9, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 3
  %24 = load %struct.request_queue*, %struct.request_queue** %23, align 8
  store %struct.request_queue* %24, %struct.request_queue** %10, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %25)
  %27 = call i32 @SCSI_LOG_MLQUEUE(i32 1, i32 %26)
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %47 [
    i32 129, label %29
    i32 131, label %35
    i32 130, label %35
    i32 128, label %41
  ]

29:                                               ; preds = %3
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %47

35:                                               ; preds = %3, %3
  %36 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %47

41:                                               ; preds = %3
  %42 = load %struct.scsi_target*, %struct.scsi_target** %9, align 8
  %43 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.scsi_target*, %struct.scsi_target** %9, align 8
  %46 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %3, %41, %35, %29
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %52 = call i32 @scsi_device_unbusy(%struct.scsi_device* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %55 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @spin_lock_irqsave(i32 %56, i64 %57)
  %59 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @blk_requeue_request(%struct.request_queue* %59, i32 %62)
  %64 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %65 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %66 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %65, i32 0, i32 0
  %67 = call i32 @kblockd_schedule_work(%struct.request_queue* %64, i32* %66)
  %68 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %69 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32 %70, i64 %71)
  ret void
}

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @printk(i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_device_unbusy(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @blk_requeue_request(%struct.request_queue*, i32) #1

declare dso_local i32 @kblockd_schedule_work(%struct.request_queue*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
