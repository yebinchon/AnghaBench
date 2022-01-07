; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_requeue_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_requeue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.scsi_cmnd = type { %struct.request*, %struct.scsi_device* }
%struct.request = type { i32 }
%struct.scsi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.scsi_cmnd*)* @scsi_requeue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_requeue_command(%struct.request_queue* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 1
  %10 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  store %struct.scsi_device* %10, %struct.scsi_device** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load %struct.request*, %struct.request** %12, align 8
  store %struct.request* %13, %struct.request** %6, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = call i32 @get_device(i32* %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load %struct.request*, %struct.request** %6, align 8
  %23 = call i32 @scsi_unprep_request(%struct.request* %22)
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = load %struct.request*, %struct.request** %6, align 8
  %26 = call i32 @blk_requeue_request(%struct.request_queue* %24, %struct.request* %25)
  %27 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32 %29, i64 %30)
  %32 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %33 = call i32 @scsi_run_queue(%struct.request_queue* %32)
  %34 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 0
  %36 = call i32 @put_device(i32* %35)
  ret void
}

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_unprep_request(%struct.request*) #1

declare dso_local i32 @blk_requeue_request(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @scsi_run_queue(%struct.request_queue*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
