; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_can_attach_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_can_attach_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.task_struct = type { %struct.io_context* }
%struct.io_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.task_struct*)* @blkiocg_can_attach_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkiocg_can_attach_task(%struct.cgroup* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.io_context*, align 8
  %6 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = call i32 @task_lock(%struct.task_struct* %7)
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.io_context*, %struct.io_context** %10, align 8
  store %struct.io_context* %11, %struct.io_context** %5, align 8
  %12 = load %struct.io_context*, %struct.io_context** %5, align 8
  %13 = icmp ne %struct.io_context* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.io_context*, %struct.io_context** %5, align 8
  %16 = getelementptr inbounds %struct.io_context, %struct.io_context* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %14, %2
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = call i32 @task_unlock(%struct.task_struct* %23)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
