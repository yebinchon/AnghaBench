; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_wait_til_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_floppy.c_wait_til_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@command_status = common dso_local global i32 0, align 4
@NO_SIGNAL = common dso_local global i64 0, align 8
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@command_done = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"wait_til_done\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@intr_cont = common dso_local global i32 0, align 4
@cont = common dso_local global i32* null, align 8
@EINTR = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@FD_COMMAND_ERROR = common dso_local global i32 0, align 4
@FD_COMMAND_OKAY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FD_COMMAND_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void ()*, i32)* @wait_til_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_til_done(void ()* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store void ()* %0, void ()** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load void ()*, void ()** %4, align 8
  %8 = bitcast void ()* %7 to void (...)*
  %9 = call i32 @schedule_bh(void (...)* %8)
  %10 = load i32, i32* @command_status, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i64, i64* @NO_SIGNAL, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load i32, i32* @wait, align 4
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @DECLARE_WAITQUEUE(i32 %16, i32 %17)
  %19 = call i32 @add_wait_queue(i32* @command_done, i32* @wait)
  br label %20

20:                                               ; preds = %36, %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = call i32 @set_current_state(i32 %28)
  %30 = load i32, i32* @command_status, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @NO_SIGNAL, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %27
  br label %39

36:                                               ; preds = %32
  %37 = call i32 @is_alive(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 (...) @schedule()
  br label %20

39:                                               ; preds = %35
  %40 = load i32, i32* @TASK_RUNNING, align 4
  %41 = call i32 @set_current_state(i32 %40)
  %42 = call i32 @remove_wait_queue(i32* @command_done, i32* @wait)
  br label %43

43:                                               ; preds = %39, %12, %2
  %44 = load i32, i32* @command_status, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call i32 (...) @cancel_activity()
  store i32* @intr_cont, i32** @cont, align 8
  %48 = call i32 (...) @reset_fdc()
  %49 = load i32, i32* @EINTR, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %43
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @FD_COMMAND_ERROR, align 4
  store i32 %57, i32* @command_status, align 4
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* @command_status, align 4
  %60 = load i32, i32* @FD_COMMAND_OKAY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* @FD_COMMAND_NONE, align 4
  store i32 %67, i32* @command_status, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %46
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @schedule_bh(void (...)*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @is_alive(i8*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @cancel_activity(...) #1

declare dso_local i32 @reset_fdc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
