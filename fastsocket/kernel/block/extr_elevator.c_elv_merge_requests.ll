; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_merge_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_merge_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request*, i32, %struct.elevator_queue* }
%struct.elevator_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.request_queue*, %struct.request*, %struct.request*)* }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_merge_requests(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %8 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 2
  %10 = load %struct.elevator_queue*, %struct.elevator_queue** %9, align 8
  store %struct.elevator_queue* %10, %struct.elevator_queue** %7, align 8
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %12 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.request_queue*, %struct.request*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*, %struct.request*)** %14, align 8
  %16 = icmp ne i32 (%struct.request_queue*, %struct.request*, %struct.request*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  %19 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.request_queue*, %struct.request*, %struct.request*)*, i32 (%struct.request_queue*, %struct.request*, %struct.request*)** %21, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = load %struct.request*, %struct.request** %6, align 8
  %26 = call i32 %22(%struct.request_queue* %23, %struct.request* %24, %struct.request* %25)
  br label %27

27:                                               ; preds = %17, %3
  %28 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %29 = load %struct.request*, %struct.request** %5, align 8
  %30 = call i32 @elv_rqhash_reposition(%struct.request_queue* %28, %struct.request* %29)
  %31 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = call i32 @elv_rqhash_del(%struct.request_queue* %31, %struct.request* %32)
  %34 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %35 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.request*, %struct.request** %5, align 8
  %39 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %39, i32 0, i32 0
  store %struct.request* %38, %struct.request** %40, align 8
  ret void
}

declare dso_local i32 @elv_rqhash_reposition(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @elv_rqhash_del(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
