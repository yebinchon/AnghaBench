; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_process_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_r592.c_r592_process_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32, i32, i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"IO: done IO, sleeping\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"IO: unknown error from memstick_next_req %d\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @r592_process_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_process_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r592_device*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.r592_device*
  store %struct.r592_device* %7, %struct.r592_device** %4, align 8
  br label %8

8:                                                ; preds = %59, %1
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %14 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call i32 @set_current_state(i32 %17)
  %19 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %20 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %23 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %22, i32 0, i32 1
  %24 = call i32 @memstick_next_req(i32 %21, i32* %23)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %26 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %12
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31
  %42 = call i32 @dbg_verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %41
  %47 = call i64 (...) @kthread_should_stop()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @TASK_RUNNING, align 4
  %51 = call i32 @set_current_state(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = call i32 (...) @schedule()
  br label %59

54:                                               ; preds = %12
  %55 = load i32, i32* @TASK_RUNNING, align 4
  %56 = call i32 @set_current_state(i32 %55)
  %57 = load %struct.r592_device*, %struct.r592_device** %4, align 8
  %58 = call i32 @r592_execute_tpc(%struct.r592_device* %57)
  br label %59

59:                                               ; preds = %54, %52
  br label %8

60:                                               ; preds = %8
  ret i32 0
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @memstick_next_req(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @r592_execute_tpc(%struct.r592_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
