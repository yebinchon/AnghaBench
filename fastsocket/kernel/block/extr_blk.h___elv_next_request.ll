; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk.h___elv_next_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk.h___elv_next_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { i64, i64, i32, %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.request_queue*, i32)* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*)* @__elv_next_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @__elv_next_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  br label %5

5:                                                ; preds = %1, %49
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 4
  %8 = call i32 @list_empty(%struct.TYPE_6__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.request* @list_entry_rq(i32 %14)
  store %struct.request* %15, %struct.request** %4, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  store %struct.request* %16, %struct.request** %2, align 8
  br label %50

17:                                               ; preds = %5
  %18 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %19 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %27 = call i32 @queue_flush_queueable(%struct.request_queue* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  store %struct.request* null, %struct.request** %2, align 8
  br label %50

32:                                               ; preds = %25, %17
  %33 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %34 = call i32 @blk_queue_dead(%struct.request_queue* %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %39 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.request_queue*, i32)*, i32 (%struct.request_queue*, i32)** %43, align 8
  %45 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %46 = call i32 %44(%struct.request_queue* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37, %32
  store %struct.request* null, %struct.request** %2, align 8
  br label %50

49:                                               ; preds = %37
  br label %5

50:                                               ; preds = %48, %29, %10
  %51 = load %struct.request*, %struct.request** %2, align 8
  ret %struct.request* %51
}

declare dso_local i32 @list_empty(%struct.TYPE_6__*) #1

declare dso_local %struct.request* @list_entry_rq(i32) #1

declare dso_local i32 @queue_flush_queueable(%struct.request_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_queue_dead(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
