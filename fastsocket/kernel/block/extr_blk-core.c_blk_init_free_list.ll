; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_init_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_init_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.request_list }
%struct.request_list = type { i32, i32*, i64, i64*, i64* }

@BLK_RW_ASYNC = common dso_local global i64 0, align 8
@BLK_RW_SYNC = common dso_local global i64 0, align 8
@BLKDEV_MIN_RQ = common dso_local global i32 0, align 4
@mempool_alloc_slab = common dso_local global i32 0, align 4
@mempool_free_slab = common dso_local global i32 0, align 4
@request_cachep = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*)* @blk_init_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_init_free_list(%struct.request_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request_list*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 1
  store %struct.request_list* %6, %struct.request_list** %4, align 8
  %7 = load %struct.request_list*, %struct.request_list** %4, align 8
  %8 = getelementptr inbounds %struct.request_list, %struct.request_list* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.request_list*, %struct.request_list** %4, align 8
  %15 = getelementptr inbounds %struct.request_list, %struct.request_list* %14, i32 0, i32 4
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @BLK_RW_ASYNC, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load %struct.request_list*, %struct.request_list** %4, align 8
  %20 = getelementptr inbounds %struct.request_list, %struct.request_list* %19, i32 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @BLK_RW_SYNC, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 0, i64* %23, align 8
  %24 = load %struct.request_list*, %struct.request_list** %4, align 8
  %25 = getelementptr inbounds %struct.request_list, %struct.request_list* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @BLK_RW_ASYNC, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.request_list*, %struct.request_list** %4, align 8
  %30 = getelementptr inbounds %struct.request_list, %struct.request_list* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @BLK_RW_SYNC, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load %struct.request_list*, %struct.request_list** %4, align 8
  %35 = getelementptr inbounds %struct.request_list, %struct.request_list* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.request_list*, %struct.request_list** %4, align 8
  %37 = getelementptr inbounds %struct.request_list, %struct.request_list* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @BLK_RW_SYNC, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @init_waitqueue_head(i32* %40)
  %42 = load %struct.request_list*, %struct.request_list** %4, align 8
  %43 = getelementptr inbounds %struct.request_list, %struct.request_list* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @BLK_RW_ASYNC, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load i32, i32* @BLKDEV_MIN_RQ, align 4
  %49 = load i32, i32* @mempool_alloc_slab, align 4
  %50 = load i32, i32* @mempool_free_slab, align 4
  %51 = load i32, i32* @request_cachep, align 4
  %52 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %53 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mempool_create_node(i32 %48, i32 %49, i32 %50, i32 %51, i32 %54)
  %56 = load %struct.request_list*, %struct.request_list** %4, align 8
  %57 = getelementptr inbounds %struct.request_list, %struct.request_list* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.request_list*, %struct.request_list** %4, align 8
  %59 = getelementptr inbounds %struct.request_list, %struct.request_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %13
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %62, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mempool_create_node(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
