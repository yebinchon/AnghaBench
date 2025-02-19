; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, i32)* @dm_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_wait_for_completion(%struct.mapped_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mapped_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @wait, align 4
  %7 = load i32, i32* @current, align 4
  %8 = call i32 @DECLARE_WAITQUEUE(i32 %6, i32 %7)
  %9 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %10 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dm_unplug_all(i32 %11)
  %13 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 0
  %15 = call i32 @add_wait_queue(i32* %14, i32* @wait)
  br label %16

16:                                               ; preds = %2, %34
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @set_current_state(i32 %17)
  %19 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %20 = call i32 @md_in_flight(%struct.mapped_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %36

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @current, align 4
  %29 = call i64 @signal_pending(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINTR, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %36

34:                                               ; preds = %27, %23
  %35 = call i32 (...) @io_schedule()
  br label %16

36:                                               ; preds = %31, %22
  %37 = load i32, i32* @TASK_RUNNING, align 4
  %38 = call i32 @set_current_state(i32 %37)
  %39 = load %struct.mapped_device*, %struct.mapped_device** %3, align 8
  %40 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %39, i32 0, i32 0
  %41 = call i32 @remove_wait_queue(i32* %40, i32* @wait)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @dm_unplug_all(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @md_in_flight(%struct.mapped_device*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
