; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_requeue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_requeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32* }
%struct.request = type { i32 }

@REQ_SORTED = common dso_local global i32 0, align 4
@REQ_STARTED = common dso_local global i32 0, align 4
@ELEVATOR_INSERT_REQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_requeue_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = call i64 @blk_account_rq(%struct.request* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i64 @rq_is_sync(%struct.request* %12)
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @REQ_SORTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %8
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = call i32 @elv_deactivate_rq(%struct.request_queue* %24, %struct.request* %25)
  br label %27

27:                                               ; preds = %23, %8
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* @REQ_STARTED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = load i32, i32* @ELEVATOR_INSERT_REQUEUE, align 4
  %38 = call i32 @elv_insert(%struct.request_queue* %35, %struct.request* %36, i32 %37)
  ret void
}

declare dso_local i64 @blk_account_rq(%struct.request*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @elv_deactivate_rq(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @elv_insert(%struct.request_queue*, %struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
