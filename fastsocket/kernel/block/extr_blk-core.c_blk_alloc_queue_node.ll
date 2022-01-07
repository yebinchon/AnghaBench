; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_alloc_queue_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_alloc_queue_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i32*, i32*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i64, %struct.request_queue*, i32 }

@blk_requestq_cachep = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@blk_backing_dev_unplug = common dso_local global i32 0, align 4
@VM_MAX_READAHEAD = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@BDI_CAP_MAP_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"block\00", align 1
@blk_rq_timed_out_timer = common dso_local global i32 0, align 4
@blk_unplug_work = common dso_local global i32 0, align 4
@blk_delay_work = common dso_local global i32 0, align 4
@blk_queue_ktype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request_queue* @blk_alloc_queue_node(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @blk_requestq_cachep, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @__GFP_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.request_queue* @kmem_cache_alloc_node(i32 %8, i32 %11, i32 %12)
  store %struct.request_queue* %13, %struct.request_queue** %6, align 8
  %14 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %15 = icmp ne %struct.request_queue* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.request_queue* null, %struct.request_queue** %3, align 8
  br label %120

17:                                               ; preds = %2
  %18 = load i32, i32* @blk_backing_dev_unplug, align 4
  %19 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 17
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 17
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store %struct.request_queue* %22, %struct.request_queue** %25, align 8
  %26 = load i32, i32* @VM_MAX_READAHEAD, align 4
  %27 = mul nsw i32 %26, 1024
  %28 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %29 = sdiv i32 %27, %28
  %30 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 17
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %34 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %33, i32 0, i32 17
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @BDI_CAP_MAP_COPY, align 4
  %37 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %38 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %37, i32 0, i32 17
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 17
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 17
  %45 = call i32 @bdi_init(%struct.TYPE_2__* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %17
  %49 = load i32, i32* @blk_requestq_cachep, align 4
  %50 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %51 = call i32 @kmem_cache_free(i32 %49, %struct.request_queue* %50)
  store %struct.request_queue* null, %struct.request_queue** %3, align 8
  br label %120

52:                                               ; preds = %17
  %53 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %54 = call i64 @blk_throtl_init(%struct.request_queue* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @blk_requestq_cachep, align 4
  %58 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %59 = call i32 @kmem_cache_free(i32 %57, %struct.request_queue* %58)
  store %struct.request_queue* null, %struct.request_queue** %3, align 8
  br label %120

60:                                               ; preds = %52
  %61 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %62 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %61, i32 0, i32 16
  %63 = call i32 @init_timer(i32* %62)
  %64 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %65 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %64, i32 0, i32 15
  %66 = load i32, i32* @blk_rq_timed_out_timer, align 4
  %67 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %68 = ptrtoint %struct.request_queue* %67 to i64
  %69 = call i32 @setup_timer(i32* %65, i32 %66, i64 %68)
  %70 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %71 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %70, i32 0, i32 14
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %74 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %73, i32 0, i32 13
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %79 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %78, i32 0, i32 13
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %84 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %83, i32 0, i32 12
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %86, i32 0, i32 11
  %88 = load i32, i32* @blk_unplug_work, align 4
  %89 = call i32 @INIT_WORK(i32* %87, i32 %88)
  %90 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %91 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %90, i32 0, i32 10
  %92 = load i32, i32* @blk_delay_work, align 4
  %93 = call i32 @INIT_DELAYED_WORK(i32* %91, i32 %92)
  %94 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %95 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %94, i32 0, i32 9
  %96 = call i32 @kobject_init(i32* %95, i32* @blk_queue_ktype)
  %97 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %98 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %97, i32 0, i32 8
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %101 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %100, i32 0, i32 0
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %104 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %103, i32 0, i32 5
  store i64 0, i64* %104, align 8
  %105 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %106 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %108 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %107, i32 0, i32 7
  store i64 0, i64* %108, align 8
  %109 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %110 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %112 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %111, i32 0, i32 4
  store i64 0, i64* %112, align 8
  %113 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %114 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  %115 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %116 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %115, i32 0, i32 0
  %117 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %118 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %117, i32 0, i32 1
  store i32* %116, i32** %118, align 8
  %119 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %119, %struct.request_queue** %3, align 8
  br label %120

120:                                              ; preds = %60, %56, %48, %16
  %121 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  ret %struct.request_queue* %121
}

declare dso_local %struct.request_queue* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @bdi_init(%struct.TYPE_2__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.request_queue*) #1

declare dso_local i64 @blk_throtl_init(%struct.request_queue*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
