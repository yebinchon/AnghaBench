; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_ioc_batching.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_ioc_batching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64 }
%struct.io_context = type { i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@BLK_BATCH_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.io_context*)* @ioc_batching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc_batching(%struct.request_queue* %0, %struct.io_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.io_context*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.io_context* %1, %struct.io_context** %5, align 8
  %6 = load %struct.io_context*, %struct.io_context** %5, align 8
  %7 = icmp ne %struct.io_context* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

9:                                                ; preds = %2
  %10 = load %struct.io_context*, %struct.io_context** %5, align 8
  %11 = getelementptr inbounds %struct.io_context, %struct.io_context* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %9
  %18 = load %struct.io_context*, %struct.io_context** %5, align 8
  %19 = getelementptr inbounds %struct.io_context, %struct.io_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.io_context*, %struct.io_context** %5, align 8
  %25 = getelementptr inbounds %struct.io_context, %struct.io_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BLK_BATCH_TIME, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @time_before(i32 %23, i64 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %22, %17
  %32 = phi i1 [ false, %17 ], [ %30, %22 ]
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi i1 [ true, %9 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
