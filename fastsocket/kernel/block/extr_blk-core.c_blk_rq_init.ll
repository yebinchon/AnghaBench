; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_rq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_rq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.request_queue*, i32, i32 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_rq_init(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = call i32 @memset(%struct.request* %5, i32 0, i32 64)
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 12
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 11
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 10
  store %struct.request_queue* %15, %struct.request_queue** %17, align 8
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 9
  store i64 -1, i64* %19, align 8
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 8
  %22 = call i32 @INIT_HLIST_NODE(i32* %21)
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 7
  %25 = call i32 @RB_CLEAR_NODE(i32* %24)
  %26 = load %struct.request*, %struct.request** %4, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @BLK_MAX_CDB, align 4
  %32 = load %struct.request*, %struct.request** %4, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 1
  store i32 -1, i32* %35, align 4
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @jiffies, align 4
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = call i32 @set_start_time_ns(%struct.request* %41)
  ret void
}

declare dso_local i32 @memset(%struct.request*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @set_start_time_ns(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
