; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c___queue_comp_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c___queue_comp_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_cq = type { i64, i32, i32 }
%struct.ehca_cpu_comp_task = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_cq*, %struct.ehca_cpu_comp_task*)* @__queue_comp_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__queue_comp_task(%struct.ehca_cq* %0, %struct.ehca_cpu_comp_task* %1) #0 {
  %3 = alloca %struct.ehca_cq*, align 8
  %4 = alloca %struct.ehca_cpu_comp_task*, align 8
  %5 = alloca i64, align 8
  store %struct.ehca_cq* %0, %struct.ehca_cq** %3, align 8
  store %struct.ehca_cpu_comp_task* %1, %struct.ehca_cpu_comp_task** %4, align 8
  %6 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %4, align 8
  %7 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %11 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %14 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %19 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %23 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %22, i32 0, i32 2
  %24 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %4, align 8
  %25 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %24, i32 0, i32 3
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %4, align 8
  %28 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %4, align 8
  %32 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %31, i32 0, i32 1
  %33 = call i32 @wake_up(i32* %32)
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %36 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %34, %17
  %40 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %41 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.ehca_cpu_comp_task*, %struct.ehca_cpu_comp_task** %4, align 8
  %44 = getelementptr inbounds %struct.ehca_cpu_comp_task, %struct.ehca_cpu_comp_task* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
