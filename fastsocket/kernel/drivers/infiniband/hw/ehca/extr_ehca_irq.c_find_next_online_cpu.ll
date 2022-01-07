; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_find_next_online_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_irq.c_find_next_online_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_comp_pool = type { i32, i32 }

@ehca_debug_level = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_comp_pool*)* @find_next_online_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_online_cpu(%struct.ehca_comp_pool* %0) #0 {
  %2 = alloca %struct.ehca_comp_pool*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ehca_comp_pool* %0, %struct.ehca_comp_pool** %2, align 8
  %5 = call i32 (...) @in_interrupt()
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load i32, i32* @ehca_debug_level, align 4
  %11 = icmp sge i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @cpu_online_mask, align 4
  %14 = call i32 (...) @cpumask_size()
  %15 = call i32 @ehca_dmp(i32 %13, i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.ehca_comp_pool*, %struct.ehca_comp_pool** %2, align 8
  %18 = getelementptr inbounds %struct.ehca_comp_pool, %struct.ehca_comp_pool* %17, i32 0, i32 1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.ehca_comp_pool*, %struct.ehca_comp_pool** %2, align 8
  %22 = getelementptr inbounds %struct.ehca_comp_pool, %struct.ehca_comp_pool* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @cpu_online_mask, align 4
  %25 = call i32 @cpumask_next(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @nr_cpu_ids, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @cpu_online_mask, align 4
  %31 = call i32 @cpumask_first(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %16
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.ehca_comp_pool*, %struct.ehca_comp_pool** %2, align 8
  %35 = getelementptr inbounds %struct.ehca_comp_pool, %struct.ehca_comp_pool* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ehca_comp_pool*, %struct.ehca_comp_pool** %2, align 8
  %37 = getelementptr inbounds %struct.ehca_comp_pool, %struct.ehca_comp_pool* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @ehca_dmp(i32, i32, i8*) #1

declare dso_local i32 @cpumask_size(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
