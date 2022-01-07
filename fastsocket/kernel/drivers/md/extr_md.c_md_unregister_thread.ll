; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_unregister_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_unregister_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_thread = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"interrupting MD-thread pid %d\0A\00", align 1
@pers_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_unregister_thread(%struct.md_thread** %0) #0 {
  %2 = alloca %struct.md_thread**, align 8
  %3 = alloca %struct.md_thread*, align 8
  store %struct.md_thread** %0, %struct.md_thread*** %2, align 8
  %4 = load %struct.md_thread**, %struct.md_thread*** %2, align 8
  %5 = load %struct.md_thread*, %struct.md_thread** %4, align 8
  store %struct.md_thread* %5, %struct.md_thread** %3, align 8
  %6 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %7 = icmp ne %struct.md_thread* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %11 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @task_pid_nr(i32 %12)
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @spin_lock(i32* @pers_lock)
  %16 = load %struct.md_thread**, %struct.md_thread*** %2, align 8
  store %struct.md_thread* null, %struct.md_thread** %16, align 8
  %17 = call i32 @spin_unlock(i32* @pers_lock)
  %18 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %19 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kthread_stop(i32 %20)
  %22 = load %struct.md_thread*, %struct.md_thread** %3, align 8
  %23 = call i32 @kfree(%struct.md_thread* %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @kfree(%struct.md_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
