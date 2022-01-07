; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_create_comp_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_create_comp_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.ehca_comp_pool = type { i32 }
%struct.ehca_cpu_comp_task = type { %struct.task_struct*, i32, i32, i32 }

@comp_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ehca_comp/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.ehca_comp_pool*, i32)* @create_comp_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @create_comp_task(%struct.ehca_comp_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_comp_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_cpu_comp_task*, align 8
  store %struct.ehca_comp_pool* %0, %struct.ehca_comp_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ehca_comp_pool*, %struct.ehca_comp_pool** %3, align 8
  %7 = getelementptr inbounds %struct.ehca_comp_pool, %struct.ehca_comp_pool* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ehca_cpu_comp_task* @per_cpu_ptr(i32 %8, i32 %9)
  store %struct.ehca_cpu_comp_task* %10, %struct.ehca_cpu_comp_task** %5, align 8
  %11 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %12 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %15 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %18 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %17, i32 0, i32 1
  %19 = call i32 @init_waitqueue_head(i32* %18)
  %20 = load i32, i32* @comp_task, align 4
  %21 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.task_struct* @kthread_create(i32 %20, %struct.ehca_cpu_comp_task* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %25 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %24, i32 0, i32 0
  store %struct.task_struct* %23, %struct.task_struct** %25, align 8
  %26 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %27 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %26, i32 0, i32 0
  %28 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  ret %struct.task_struct* %28
}

declare dso_local %struct.ehca_cpu_comp_task* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.ehca_cpu_comp_task*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
