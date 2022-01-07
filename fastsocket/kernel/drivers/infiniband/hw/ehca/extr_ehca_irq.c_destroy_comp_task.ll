; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_destroy_comp_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_destroy_comp_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_comp_pool = type { i32 }
%struct.ehca_cpu_comp_task = type { i32, i64, %struct.task_struct* }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_comp_pool*, i32)* @destroy_comp_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_comp_task(%struct.ehca_comp_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_comp_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_cpu_comp_task*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.ehca_comp_pool* %0, %struct.ehca_comp_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ehca_comp_pool*, %struct.ehca_comp_pool** %3, align 8
  %9 = getelementptr inbounds %struct.ehca_comp_pool, %struct.ehca_comp_pool* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ehca_cpu_comp_task* @per_cpu_ptr(i32 %10, i32 %11)
  store %struct.ehca_cpu_comp_task* %12, %struct.ehca_cpu_comp_task** %5, align 8
  %13 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %14 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %18 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %17, i32 0, i32 2
  %19 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  store %struct.task_struct* %19, %struct.task_struct** %6, align 8
  %20 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %21 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %20, i32 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %21, align 8
  %22 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %23 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %5, align 8
  %25 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = icmp ne %struct.task_struct* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %32 = call i32 @kthread_stop(%struct.task_struct* %31)
  br label %33

33:                                               ; preds = %30, %2
  ret void
}

declare dso_local %struct.ehca_cpu_comp_task* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
