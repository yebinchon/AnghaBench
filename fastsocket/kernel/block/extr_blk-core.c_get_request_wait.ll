; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_get_request_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_get_request_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { i32, i32, %struct.request_list }
%struct.request_list = type { i32* }
%struct.bio = type { i32 }
%struct.io_context = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*, i32, %struct.bio*)* @get_request_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @get_request_wait(%struct.request_queue* %0, i32 %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.io_context*, align 8
  %11 = alloca %struct.request_list*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bio* %2, %struct.bio** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @rw_is_sync(i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bio*, %struct.bio** %7, align 8
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call %struct.request* @get_request(%struct.request_queue* %16, i32 %17, %struct.bio* %18, i32 %19)
  store %struct.request* %20, %struct.request** %9, align 8
  br label %21

21:                                               ; preds = %35, %3
  %22 = load %struct.request*, %struct.request** %9, align 8
  %23 = icmp ne %struct.request* %22, null
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %80

25:                                               ; preds = %21
  %26 = load i32, i32* @wait, align 4
  %27 = call i32 @DEFINE_WAIT(i32 %26)
  %28 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 2
  store %struct.request_list* %29, %struct.request_list** %11, align 8
  %30 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %31 = call i32 @blk_queue_dead(%struct.request_queue* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store %struct.request* null, %struct.request** %4, align 8
  br label %82

35:                                               ; preds = %25
  %36 = load %struct.request_list*, %struct.request_list** %11, align 8
  %37 = getelementptr inbounds %struct.request_list, %struct.request_list* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %43 = call i32 @prepare_to_wait_exclusive(i32* %41, i32* @wait, i32 %42)
  %44 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %45 = load %struct.bio*, %struct.bio** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 1
  %48 = call i32 @trace_block_sleeprq(%struct.request_queue* %44, %struct.bio* %45, i32 %47)
  %49 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %50 = call i32 @__generic_unplug_device(%struct.request_queue* %49)
  %51 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %52 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @spin_unlock_irq(i32 %53)
  %55 = call i32 (...) @io_schedule()
  %56 = load i32, i32* @GFP_NOIO, align 4
  %57 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %58 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.io_context* @current_io_context(i32 %56, i32 %59)
  store %struct.io_context* %60, %struct.io_context** %10, align 8
  %61 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %62 = load %struct.io_context*, %struct.io_context** %10, align 8
  %63 = call i32 @ioc_set_batching(%struct.request_queue* %61, %struct.io_context* %62)
  %64 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %65 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @spin_lock_irq(i32 %66)
  %68 = load %struct.request_list*, %struct.request_list** %11, align 8
  %69 = getelementptr inbounds %struct.request_list, %struct.request_list* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @finish_wait(i32* %73, i32* @wait)
  %75 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.bio*, %struct.bio** %7, align 8
  %78 = load i32, i32* @GFP_NOIO, align 4
  %79 = call %struct.request* @get_request(%struct.request_queue* %75, i32 %76, %struct.bio* %77, i32 %78)
  store %struct.request* %79, %struct.request** %9, align 8
  br label %21

80:                                               ; preds = %21
  %81 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %81, %struct.request** %4, align 8
  br label %82

82:                                               ; preds = %80, %34
  %83 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %83
}

declare dso_local i64 @rw_is_sync(i32) #1

declare dso_local %struct.request* @get_request(%struct.request_queue*, i32, %struct.bio*, i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_queue_dead(%struct.request_queue*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32*, i32*, i32) #1

declare dso_local i32 @trace_block_sleeprq(%struct.request_queue*, %struct.bio*, i32) #1

declare dso_local i32 @__generic_unplug_device(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local %struct.io_context* @current_io_context(i32, i32) #1

declare dso_local i32 @ioc_set_batching(%struct.request_queue*, %struct.io_context*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
