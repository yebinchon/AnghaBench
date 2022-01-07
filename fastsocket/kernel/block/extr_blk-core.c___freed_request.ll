; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___freed_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___freed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64, %struct.request_list }
%struct.request_list = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, i32)* @__freed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__freed_request(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_list*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 1
  store %struct.request_list* %7, %struct.request_list** %5, align 8
  %8 = load %struct.request_list*, %struct.request_list** %5, align 8
  %9 = getelementptr inbounds %struct.request_list, %struct.request_list* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = call i64 @queue_congestion_off_threshold(%struct.request_queue* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @blk_clear_queue_congested(%struct.request_queue* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.request_list*, %struct.request_list** %5, align 8
  %24 = getelementptr inbounds %struct.request_list, %struct.request_list* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %30, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %22
  %36 = load %struct.request_list*, %struct.request_list** %5, align 8
  %37 = getelementptr inbounds %struct.request_list, %struct.request_list* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i64 @waitqueue_active(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load %struct.request_list*, %struct.request_list** %5, align 8
  %46 = getelementptr inbounds %struct.request_list, %struct.request_list* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @wake_up(i32* %50)
  br label %52

52:                                               ; preds = %44, %35
  %53 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @blk_clear_queue_full(%struct.request_queue* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %22
  ret void
}

declare dso_local i64 @queue_congestion_off_threshold(%struct.request_queue*) #1

declare dso_local i32 @blk_clear_queue_congested(%struct.request_queue*, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @blk_clear_queue_full(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
