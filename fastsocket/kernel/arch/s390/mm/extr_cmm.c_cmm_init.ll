; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_cmm.c_cmm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_cmm.c_cmm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@cmm_oom_nb = common dso_local global i32 0, align 4
@cmm_power_notifier = common dso_local global i32 0, align 4
@cmm_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cmmthread\00", align 1
@cmm_thread_ptr = common dso_local global i32 0, align 4
@cmm_timer = common dso_local global i32 0, align 4
@SMSG_PREFIX = common dso_local global i32 0, align 4
@cmm_default_sender = common dso_local global i32* null, align 8
@cmm_dir_table = common dso_local global i32 0, align 4
@cmm_smsg_target = common dso_local global i32 0, align 4
@cmm_sysctl_header = common dso_local global i32 0, align 4
@sender = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cmm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ENOMEM, align 4
  %4 = sub nsw i32 0, %3
  store i32 %4, i32* %2, align 4
  %5 = call i32 @register_oom_notifier(i32* @cmm_oom_nb)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %34

9:                                                ; preds = %0
  %10 = call i32 @register_pm_notifier(i32* @cmm_power_notifier)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %32

14:                                               ; preds = %9
  %15 = load i32, i32* @cmm_thread, align 4
  %16 = call i32 @kthread_run(i32 %15, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* @cmm_thread_ptr, align 4
  %17 = load i32, i32* @cmm_thread_ptr, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @cmm_thread_ptr, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ]
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %30

29:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %37

30:                                               ; preds = %28
  %31 = call i32 @unregister_pm_notifier(i32* @cmm_power_notifier)
  br label %32

32:                                               ; preds = %30, %13
  %33 = call i32 @unregister_oom_notifier(i32* @cmm_oom_nb)
  br label %34

34:                                               ; preds = %32, %8
  %35 = call i32 @del_timer_sync(i32* @cmm_timer)
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @register_oom_notifier(i32*) #1

declare dso_local i32 @register_pm_notifier(i32*) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @unregister_oom_notifier(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
