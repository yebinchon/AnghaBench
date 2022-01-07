; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_sync_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_buffer_sync.c_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@marked_cpus = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@buffer_mutex = common dso_local global i32 0, align 4
@task_free_nb = common dso_local global i32 0, align 4
@PROFILE_TASK_EXIT = common dso_local global i32 0, align 4
@task_exit_nb = common dso_local global i32 0, align 4
@PROFILE_MUNMAP = common dso_local global i32 0, align 4
@munmap_nb = common dso_local global i32 0, align 4
@module_load_nb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call i32 @zalloc_cpumask_var(i32* @marked_cpus, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %48

9:                                                ; preds = %0
  %10 = call i32 @mutex_lock(i32* @buffer_mutex)
  %11 = call i32 @task_handoff_register(i32* @task_free_nb)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %45

15:                                               ; preds = %9
  %16 = load i32, i32* @PROFILE_TASK_EXIT, align 4
  %17 = call i32 @profile_event_register(i32 %16, i32* @task_exit_nb)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %43

21:                                               ; preds = %15
  %22 = load i32, i32* @PROFILE_MUNMAP, align 4
  %23 = call i32 @profile_event_register(i32 %22, i32* @munmap_nb)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %40

27:                                               ; preds = %21
  %28 = call i32 @register_module_notifier(i32* @module_load_nb)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %37

32:                                               ; preds = %27
  %33 = call i32 (...) @start_cpu_work()
  br label %34

34:                                               ; preds = %45, %32
  %35 = call i32 @mutex_unlock(i32* @buffer_mutex)
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %48

37:                                               ; preds = %31
  %38 = load i32, i32* @PROFILE_MUNMAP, align 4
  %39 = call i32 @profile_event_unregister(i32 %38, i32* @munmap_nb)
  br label %40

40:                                               ; preds = %37, %26
  %41 = load i32, i32* @PROFILE_TASK_EXIT, align 4
  %42 = call i32 @profile_event_unregister(i32 %41, i32* @task_exit_nb)
  br label %43

43:                                               ; preds = %40, %20
  %44 = call i32 @task_handoff_unregister(i32* @task_free_nb)
  br label %45

45:                                               ; preds = %43, %14
  %46 = load i32, i32* @marked_cpus, align 4
  %47 = call i32 @free_cpumask_var(i32 %46)
  br label %34

48:                                               ; preds = %34, %6
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @task_handoff_register(i32*) #1

declare dso_local i32 @profile_event_register(i32, i32*) #1

declare dso_local i32 @register_module_notifier(i32*) #1

declare dso_local i32 @start_cpu_work(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @profile_event_unregister(i32, i32*) #1

declare dso_local i32 @task_handoff_unregister(i32*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
