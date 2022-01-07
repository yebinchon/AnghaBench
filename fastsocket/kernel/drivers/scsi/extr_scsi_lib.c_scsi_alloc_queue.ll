; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.scsi_device = type { i32 }

@scsi_request_fn = common dso_local global i32 0, align 4
@scsi_prep_fn = common dso_local global i32 0, align 4
@scsi_softirq_done = common dso_local global i32 0, align 4
@scsi_times_out = common dso_local global i32 0, align 4
@scsi_lld_busy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_queue* @scsi_alloc_queue(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @scsi_request_fn, align 4
  %9 = call %struct.request_queue* @__scsi_alloc_queue(i32 %7, i32 %8)
  store %struct.request_queue* %9, %struct.request_queue** %4, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %11 = icmp ne %struct.request_queue* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.request_queue* null, %struct.request_queue** %2, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %15 = load i32, i32* @scsi_prep_fn, align 4
  %16 = call i32 @blk_queue_prep_rq(%struct.request_queue* %14, i32 %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %18 = load i32, i32* @scsi_softirq_done, align 4
  %19 = call i32 @blk_queue_softirq_done(%struct.request_queue* %17, i32 %18)
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = load i32, i32* @scsi_times_out, align 4
  %22 = call i32 @blk_queue_rq_timed_out(%struct.request_queue* %20, i32 %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = load i32, i32* @scsi_lld_busy, align 4
  %25 = call i32 @blk_queue_lld_busy(%struct.request_queue* %23, i32 %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  store %struct.request_queue* %26, %struct.request_queue** %2, align 8
  br label %27

27:                                               ; preds = %13, %12
  %28 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  ret %struct.request_queue* %28
}

declare dso_local %struct.request_queue* @__scsi_alloc_queue(i32, i32) #1

declare dso_local i32 @blk_queue_prep_rq(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_softirq_done(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_rq_timed_out(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_lld_busy(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
