; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_new_hw_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_ll_new_hw_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.request* }
%struct.request = type { i64, i32 }
%struct.bio = type { i32 }

@REQ_NOMERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.bio*)* @ll_new_hw_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_new_hw_segment(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %10 = load %struct.bio*, %struct.bio** %7, align 8
  %11 = call i32 @bio_phys_segments(%struct.request_queue* %9, %struct.bio* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.request*, %struct.request** %6, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %19 = call i64 @queue_max_segments(%struct.request_queue* %18)
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i32, i32* @REQ_NOMERGE, align 4
  %23 = load %struct.request*, %struct.request** %6, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  %30 = load %struct.request*, %struct.request** %29, align 8
  %31 = icmp eq %struct.request* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 0
  store %struct.request* null, %struct.request** %34, align 8
  br label %35

35:                                               ; preds = %32, %21
  store i32 0, i32* %4, align 4
  br label %43

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.request*, %struct.request** %6, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %35
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @bio_phys_segments(%struct.request_queue*, %struct.bio*) #1

declare dso_local i64 @queue_max_segments(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
