; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_context.c_alloc_spu_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_context.c_alloc_spu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_2__, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.spu_gang = type { i32 }
%struct.timespec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SPU_STATE_SAVED = common dso_local global i32 0, align 4
@spu_backing_ops = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SPU_UTIL_IDLE_LOADED = common dso_local global i32 0, align 4
@nr_spu_contexts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spu_context* @alloc_spu_context(%struct.spu_gang* %0) #0 {
  %2 = alloca %struct.spu_gang*, align 8
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca %struct.timespec, align 4
  store %struct.spu_gang* %0, %struct.spu_gang** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.spu_context* @kzalloc(i32 80, i32 %5)
  store %struct.spu_context* %6, %struct.spu_context** %3, align 8
  %7 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %8 = icmp ne %struct.spu_context* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %86

10:                                               ; preds = %1
  %11 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %12 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %11, i32 0, i32 16
  %13 = call i64 @spu_init_csa(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %83

16:                                               ; preds = %10
  %17 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %18 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %17, i32 0, i32 15
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %21 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %20, i32 0, i32 14
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %24 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %23, i32 0, i32 13
  %25 = call i32 @kref_init(i32* %24)
  %26 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %27 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %26, i32 0, i32 12
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %30 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %29, i32 0, i32 11
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %33 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %32, i32 0, i32 10
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %36 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %35, i32 0, i32 9
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %39 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %38, i32 0, i32 8
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %42 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %41, i32 0, i32 7
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %45 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %44, i32 0, i32 6
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load i32, i32* @SPU_STATE_SAVED, align 4
  %48 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %49 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %51 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %50, i32 0, i32 4
  store i32* @spu_backing_ops, i32** %51, align 8
  %52 = load i32, i32* @current, align 4
  %53 = call i32 @get_task_mm(i32 %52)
  %54 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %55 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %57 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %56, i32 0, i32 2
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %60 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %59, i32 0, i32 1
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.spu_gang*, %struct.spu_gang** %2, align 8
  %63 = icmp ne %struct.spu_gang* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %16
  %65 = load %struct.spu_gang*, %struct.spu_gang** %2, align 8
  %66 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %67 = call i32 @spu_gang_add_ctx(%struct.spu_gang* %65, %struct.spu_context* %66)
  br label %68

68:                                               ; preds = %64, %16
  %69 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %70 = call i32 @__spu_update_sched_info(%struct.spu_context* %69)
  %71 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %72 = call i32 @spu_set_timeslice(%struct.spu_context* %71)
  %73 = load i32, i32* @SPU_UTIL_IDLE_LOADED, align 4
  %74 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %75 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = call i32 @ktime_get_ts(%struct.timespec* %4)
  %78 = call i32 @timespec_to_ns(%struct.timespec* %4)
  %79 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %80 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = call i32 @atomic_inc(i32* @nr_spu_contexts)
  br label %86

83:                                               ; preds = %15
  %84 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %85 = call i32 @kfree(%struct.spu_context* %84)
  store %struct.spu_context* null, %struct.spu_context** %3, align 8
  br label %86

86:                                               ; preds = %83, %68, %9
  %87 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  ret %struct.spu_context* %87
}

declare dso_local %struct.spu_context* @kzalloc(i32, i32) #1

declare dso_local i64 @spu_init_csa(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @get_task_mm(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spu_gang_add_ctx(%struct.spu_gang*, %struct.spu_context*) #1

declare dso_local i32 @__spu_update_sched_info(%struct.spu_context*) #1

declare dso_local i32 @spu_set_timeslice(%struct.spu_context*) #1

declare dso_local i32 @ktime_get_ts(%struct.timespec*) #1

declare dso_local i32 @timespec_to_ns(%struct.timespec*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
