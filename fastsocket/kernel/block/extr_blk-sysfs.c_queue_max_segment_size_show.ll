; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_max_segment_size_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_max_segment_size_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

@QUEUE_FLAG_CLUSTER = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i8*)* @queue_max_segment_size_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_max_segment_size_show(%struct.request_queue* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @QUEUE_FLAG_CLUSTER, align 4
  %7 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = call i32 @queue_max_segment_size(%struct.request_queue* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @queue_var_show(i32 %13, i8* %14)
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @queue_var_show(i32 %17, i8* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_var_show(i32, i8*) #1

declare dso_local i32 @queue_max_segment_size(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
