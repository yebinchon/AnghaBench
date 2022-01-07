; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"background thread \22%s\22 started, PID %d\00", align 1
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: work failed with error code %d\00", align 1
@WL_MAX_FAILURES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: %d consecutive failures\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"background thread \22%s\22 is killed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ubi_device*
  store %struct.ubi_device* %7, %struct.ubi_device** %4, align 8
  %8 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @task_pid_nr(i32 %11)
  %13 = call i32 @ubi_msg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = call i32 (...) @set_freezable()
  br label %15

15:                                               ; preds = %78, %66, %41, %22, %1
  %16 = call i64 (...) @kthread_should_stop()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %80

19:                                               ; preds = %15
  %20 = call i64 (...) @try_to_freeze()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %15

23:                                               ; preds = %19
  %24 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 4
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %33 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %36, %31, %23
  %42 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %43 = call i32 @set_current_state(i32 %42)
  %44 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %45 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = call i32 (...) @schedule()
  br label %15

48:                                               ; preds = %36
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %53 = call i32 @do_work(%struct.ubi_device* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %48
  %57 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %58 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ubi_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @WL_MAX_FAILURES, align 4
  %65 = icmp sgt i32 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %68 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WL_MAX_FAILURES, align 4
  %71 = call i32 @ubi_msg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %73 = call i32 @ubi_ro_mode(%struct.ubi_device* %72)
  %74 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %15

76:                                               ; preds = %56
  br label %78

77:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = call i32 (...) @cond_resched()
  br label %15

80:                                               ; preds = %18
  %81 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %82 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dbg_wl(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  ret i32 0
}

declare dso_local i32 @ubi_msg(i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @do_work(%struct.ubi_device*) #1

declare dso_local i32 @ubi_err(i8*, i32, i32) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dbg_wl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
