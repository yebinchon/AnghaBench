; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_abort_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_abort_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }

@REQ_QUIET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_abort_queue(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = call i32 @blk_abort_flushes(%struct.request_queue* %4)
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = call i32 @list_empty(%struct.TYPE_2__* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.request* @list_entry_rq(i32 %16)
  store %struct.request* %17, %struct.request** %3, align 8
  %18 = load i32, i32* @REQ_QUIET, align 4
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = call i32 @trace_block_rq_abort(%struct.request_queue* %23, %struct.request* %24)
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = call i32 @blk_start_request(%struct.request* %26)
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @__blk_end_request_all(%struct.request* %28, i32 %30)
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @blk_abort_flushes(%struct.request_queue*) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.request* @list_entry_rq(i32) #1

declare dso_local i32 @trace_block_rq_abort(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
