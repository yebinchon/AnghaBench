; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_thread = type { i32 (%struct.md_thread*)*, i32, i32, i32 }

@SIGKILL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@THREAD_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @md_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.md_thread*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.md_thread*
  store %struct.md_thread* %5, %struct.md_thread** %3, align 8
  %6 = load i32, i32* @SIGKILL, align 4
  %7 = call i32 @allow_signal(i32 %6)
  br label %8

8:                                                ; preds = %50, %1
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %51

12:                                               ; preds = %8
  %13 = load i32, i32* @current, align 4
  %14 = call i64 @signal_pending(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @flush_signals(i32 %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %21 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @THREAD_WAKEUP, align 4
  %24 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %25 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = call i64 (...) @kthread_should_stop()
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi i1 [ true, %19 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %35 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wait_event_interruptible_timeout(i32 %22, i32 %33, i32 %36)
  %38 = load i32, i32* @THREAD_WAKEUP, align 4
  %39 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %40 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %39, i32 0, i32 1
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = call i64 (...) @kthread_should_stop()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %31
  %45 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %46 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %45, i32 0, i32 0
  %47 = load i32 (%struct.md_thread*)*, i32 (%struct.md_thread*)** %46, align 8
  %48 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %49 = call i32 %47(%struct.md_thread* %48)
  br label %50

50:                                               ; preds = %44, %31
  br label %8

51:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @allow_signal(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
