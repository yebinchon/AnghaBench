; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_requeue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_requeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_requeue_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = call i32 @blk_delete_timer(%struct.request* %5)
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = call i32 @blk_clear_rq_complete(%struct.request* %7)
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = call i32 @trace_block_rq_requeue(%struct.request_queue* %9, %struct.request* %10)
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i64 @blk_rq_tagged(%struct.request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = call i32 @blk_queue_end_tag(%struct.request_queue* %16, %struct.request* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = call i32 @blk_queued_rq(%struct.request* %20)
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = call i32 @elv_requeue_request(%struct.request_queue* %23, %struct.request* %24)
  ret void
}

declare dso_local i32 @blk_delete_timer(%struct.request*) #1

declare dso_local i32 @blk_clear_rq_complete(%struct.request*) #1

declare dso_local i32 @trace_block_rq_requeue(%struct.request_queue*, %struct.request*) #1

declare dso_local i64 @blk_rq_tagged(%struct.request*) #1

declare dso_local i32 @blk_queue_end_tag(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_queued_rq(%struct.request*) #1

declare dso_local i32 @elv_requeue_request(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
