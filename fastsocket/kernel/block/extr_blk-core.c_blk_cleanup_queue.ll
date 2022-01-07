; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_cleanup_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_cleanup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64, i32, i32, i32* }

@QUEUE_FLAG_DEAD = common dso_local global i32 0, align 4
@QUEUE_FLAG_NOMERGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_cleanup_queue(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca i32*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %4 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %5 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @QUEUE_FLAG_DEAD, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %12 = call i32 @queue_flag_set_unlocked(i32 %10, %struct.request_queue* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load i32, i32* @QUEUE_FLAG_NOMERGES, align 4
  %16 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %17 = call i32 @queue_flag_set(i32 %15, %struct.request_queue* %16)
  %18 = load i32, i32* @QUEUE_FLAG_DEAD, align 4
  %19 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %20 = call i32 @queue_flag_set(i32 %18, %struct.request_queue* %19)
  %21 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %25 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %24, i32 0, i32 2
  %26 = icmp ne i32* %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 2
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %39 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %44 = call i32 @blk_drain_queue(%struct.request_queue* %43, i32 1)
  br label %45

45:                                               ; preds = %42, %32
  %46 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %47 = call i32 @blk_sync_queue(%struct.request_queue* %46)
  %48 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %49 = call i32 @blk_put_queue(%struct.request_queue* %48)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blk_drain_queue(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_sync_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_put_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
