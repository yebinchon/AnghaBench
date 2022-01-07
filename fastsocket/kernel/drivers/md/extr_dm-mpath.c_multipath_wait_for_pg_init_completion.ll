; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_wait_for_pg_init_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_multipath_wait_for_pg_init_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multipath*)* @multipath_wait_for_pg_init_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multipath_wait_for_pg_init_completion(%struct.multipath* %0) #0 {
  %2 = alloca %struct.multipath*, align 8
  %3 = alloca i64, align 8
  store %struct.multipath* %0, %struct.multipath** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = load %struct.multipath*, %struct.multipath** %2, align 8
  %8 = getelementptr inbounds %struct.multipath, %struct.multipath* %7, i32 0, i32 0
  %9 = call i32 @add_wait_queue(i32* %8, i32* @wait)
  br label %10

10:                                               ; preds = %1, %26
  %11 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %12 = call i32 @set_current_state(i32 %11)
  %13 = load %struct.multipath*, %struct.multipath** %2, align 8
  %14 = getelementptr inbounds %struct.multipath, %struct.multipath* %13, i32 0, i32 1
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.multipath*, %struct.multipath** %2, align 8
  %18 = getelementptr inbounds %struct.multipath, %struct.multipath* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = load %struct.multipath*, %struct.multipath** %2, align 8
  %23 = getelementptr inbounds %struct.multipath, %struct.multipath* %22, i32 0, i32 1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %32

26:                                               ; preds = %10
  %27 = load %struct.multipath*, %struct.multipath** %2, align 8
  %28 = getelementptr inbounds %struct.multipath, %struct.multipath* %27, i32 0, i32 1
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = call i32 (...) @io_schedule()
  br label %10

32:                                               ; preds = %21
  %33 = load i32, i32* @TASK_RUNNING, align 4
  %34 = call i32 @set_current_state(i32 %33)
  %35 = load %struct.multipath*, %struct.multipath** %2, align 8
  %36 = getelementptr inbounds %struct.multipath, %struct.multipath* %35, i32 0, i32 0
  %37 = call i32 @remove_wait_queue(i32* %36, i32* @wait)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
