; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_poll_thread_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_poll_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ap_suspend_flag = common dso_local global i64 0, align 8
@ap_poll_thread_mutex = common dso_local global i32 0, align 4
@ap_poll_kthread = common dso_local global i32* null, align 8
@ap_poll_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"appoll\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ap_poll_thread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_poll_thread_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 (...) @ap_using_interrupts()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i64, i64* @ap_suspend_flag, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %33

9:                                                ; preds = %5
  %10 = call i32 @mutex_lock(i32* @ap_poll_thread_mutex)
  %11 = load i32*, i32** @ap_poll_kthread, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @ap_poll_thread, align 4
  %15 = call i32* @kthread_run(i32 %14, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** @ap_poll_kthread, align 8
  %16 = load i32*, i32** @ap_poll_kthread, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32*, i32** @ap_poll_kthread, align 8
  %21 = call i32 @PTR_ERR(i32* %20)
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32* null, i32** @ap_poll_kthread, align 8
  br label %28

28:                                               ; preds = %27, %23
  br label %30

29:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = call i32 @mutex_unlock(i32* @ap_poll_thread_mutex)
  %32 = load i32, i32* %2, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %30, %8
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i64 @ap_using_interrupts(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
