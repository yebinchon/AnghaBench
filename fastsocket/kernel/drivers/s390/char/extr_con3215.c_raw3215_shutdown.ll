; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i32, i32, i32*, i32* }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@RAW3215_ACTIVE = common dso_local global i32 0, align 4
@RAW3215_FIXED = common dso_local global i32 0, align 4
@RAW3215_WORKING = common dso_local global i32 0, align 4
@RAW3215_CLOSING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_shutdown(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = alloca i64, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %8 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RAW3215_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %15 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RAW3215_FIXED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  br label %88

21:                                               ; preds = %13
  %22 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %23 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_ccwdev_lock(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_lock_irqsave(i32 %25, i64 %26)
  %28 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %29 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RAW3215_WORKING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %21
  %35 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %36 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %41 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %39, %34, %21
  %45 = load i32, i32* @RAW3215_CLOSING, align 4
  %46 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %47 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %51 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %50, i32 0, i32 2
  %52 = call i32 @add_wait_queue(i32* %51, i32* @wait)
  %53 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %54 = call i32 @set_current_state(i32 %53)
  %55 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %56 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @get_ccwdev_lock(i32 %57)
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32 %58, i64 %59)
  %61 = call i32 (...) @schedule()
  %62 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %63 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @get_ccwdev_lock(i32 %64)
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @spin_lock_irqsave(i32 %65, i64 %66)
  %68 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %69 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %68, i32 0, i32 2
  %70 = call i32 @remove_wait_queue(i32* %69, i32* @wait)
  %71 = load i32, i32* @TASK_RUNNING, align 4
  %72 = call i32 @set_current_state(i32 %71)
  %73 = load i32, i32* @RAW3215_ACTIVE, align 4
  %74 = load i32, i32* @RAW3215_CLOSING, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %78 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %44, %39
  %82 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %83 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @get_ccwdev_lock(i32 %84)
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32 %85, i64 %86)
  br label %88

88:                                               ; preds = %81, %20
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
