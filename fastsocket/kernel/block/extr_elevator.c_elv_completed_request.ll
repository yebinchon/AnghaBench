; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_completed_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_completed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32*, %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.request_queue*, %struct.request*)* }
%struct.request = type { i32 }

@REQ_SORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_completed_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 1
  %8 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  store %struct.elevator_queue* %8, %struct.elevator_queue** %5, align 8
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call i64 @blk_account_rq(%struct.request* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %2
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = call i64 @rq_is_sync(%struct.request* %16)
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REQ_SORTED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %12
  %28 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %29 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.request_queue*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*)** %31, align 8
  %33 = icmp ne i32 (%struct.request_queue*, %struct.request*)* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %36 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.request_queue*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*)** %38, align 8
  %40 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = call i32 %39(%struct.request_queue* %40, %struct.request* %41)
  br label %43

43:                                               ; preds = %34, %27, %12
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i64 @blk_account_rq(%struct.request*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
