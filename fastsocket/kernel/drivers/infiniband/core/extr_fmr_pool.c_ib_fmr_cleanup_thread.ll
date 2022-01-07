; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_fmr_pool.c_ib_fmr_cleanup_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_fmr_pool.c_ib_fmr_cleanup_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr_pool = type { i32, i32, i32, i32 (%struct.ib_fmr_pool*, i32)*, i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ib_fmr_cleanup_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_fmr_cleanup_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ib_fmr_pool*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ib_fmr_pool*
  store %struct.ib_fmr_pool* %5, %struct.ib_fmr_pool** %3, align 8
  br label %6

6:                                                ; preds = %57, %1
  %7 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %8 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %7, i32 0, i32 1
  %9 = call i64 @atomic_read(i32* %8)
  %10 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %11 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %10, i32 0, i32 0
  %12 = call i64 @atomic_read(i32* %11)
  %13 = sub nsw i64 %9, %12
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %6
  %16 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %17 = call i32 @ib_fmr_batch_release(%struct.ib_fmr_pool* %16)
  %18 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %19 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %22 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %21, i32 0, i32 4
  %23 = call i32 @wake_up_interruptible(i32* %22)
  %24 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %25 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %24, i32 0, i32 3
  %26 = load i32 (%struct.ib_fmr_pool*, i32)*, i32 (%struct.ib_fmr_pool*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.ib_fmr_pool*, i32)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %15
  %29 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %30 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %29, i32 0, i32 3
  %31 = load i32 (%struct.ib_fmr_pool*, i32)*, i32 (%struct.ib_fmr_pool*, i32)** %30, align 8
  %32 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %33 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %34 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %31(%struct.ib_fmr_pool* %32, i32 %35)
  br label %37

37:                                               ; preds = %28, %15
  br label %38

38:                                               ; preds = %37, %6
  %39 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %40 = call i32 @set_current_state(i32 %39)
  %41 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %42 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %41, i32 0, i32 1
  %43 = call i64 @atomic_read(i32* %42)
  %44 = load %struct.ib_fmr_pool*, %struct.ib_fmr_pool** %3, align 8
  %45 = getelementptr inbounds %struct.ib_fmr_pool, %struct.ib_fmr_pool* %44, i32 0, i32 0
  %46 = call i64 @atomic_read(i32* %45)
  %47 = sub nsw i64 %43, %46
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = call i32 (...) @kthread_should_stop()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 (...) @schedule()
  br label %54

54:                                               ; preds = %52, %49, %38
  %55 = load i32, i32* @TASK_RUNNING, align 4
  %56 = call i32 @__set_current_state(i32 %55)
  br label %57

57:                                               ; preds = %54
  %58 = call i32 (...) @kthread_should_stop()
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %6, label %61

61:                                               ; preds = %57
  ret i32 0
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ib_fmr_batch_release(%struct.ib_fmr_pool*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
