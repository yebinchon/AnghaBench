; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_queue_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_queue_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mmc_queue = type { i32, i32 (%struct.mmc_queue*, %struct.request*)*, %struct.request*, %struct.request_queue* }
%struct.request = type { i32 }
%struct.request_queue = type { i32 }

@PF_MEMALLOC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mmc_queue_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_queue_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mmc_queue*
  store %struct.mmc_queue* %7, %struct.mmc_queue** %3, align 8
  %8 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %8, i32 0, i32 3
  %10 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  store %struct.request_queue* %10, %struct.request_queue** %4, align 8
  %11 = load i32, i32* @PF_MEMALLOC, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %16, i32 0, i32 0
  %18 = call i32 @down(i32* %17)
  br label %19

19:                                               ; preds = %65, %1
  store %struct.request* null, %struct.request** %5, align 8
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @spin_lock_irq(i32 %22)
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = call i32 @set_current_state(i32 %24)
  %26 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %27 = call i32 @blk_queue_plugged(%struct.request_queue* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %31 = call %struct.request* @blk_fetch_request(%struct.request_queue* %30)
  store %struct.request* %31, %struct.request** %5, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %34, i32 0, i32 2
  store %struct.request* %33, %struct.request** %35, align 8
  %36 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %37 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @spin_unlock_irq(i32 %38)
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = icmp ne %struct.request* %40, null
  br i1 %41, label %56, label %42

42:                                               ; preds = %32
  %43 = call i64 (...) @kthread_should_stop()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @TASK_RUNNING, align 4
  %47 = call i32 @set_current_state(i32 %46)
  br label %66

48:                                               ; preds = %42
  %49 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %49, i32 0, i32 0
  %51 = call i32 @up(i32* %50)
  %52 = call i32 (...) @schedule()
  %53 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %54 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %53, i32 0, i32 0
  %55 = call i32 @down(i32* %54)
  br label %65

56:                                               ; preds = %32
  %57 = load i32, i32* @TASK_RUNNING, align 4
  %58 = call i32 @set_current_state(i32 %57)
  %59 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %59, i32 0, i32 1
  %61 = load i32 (%struct.mmc_queue*, %struct.request*)*, i32 (%struct.mmc_queue*, %struct.request*)** %60, align 8
  %62 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %63 = load %struct.request*, %struct.request** %5, align 8
  %64 = call i32 %61(%struct.mmc_queue* %62, %struct.request* %63)
  br label %65

65:                                               ; preds = %56, %48
  br i1 true, label %19, label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %68 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %67, i32 0, i32 0
  %69 = call i32 @up(i32* %68)
  ret i32 0
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @blk_queue_plugged(%struct.request_queue*) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
