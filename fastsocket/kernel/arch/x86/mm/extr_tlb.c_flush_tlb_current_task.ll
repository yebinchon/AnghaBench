; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_flush_tlb_current_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_tlb.c_flush_tlb_current_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@nr_cpu_ids = common dso_local global i64 0, align 8
@TLB_FLUSH_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_current_task() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  store %struct.mm_struct* %4, %struct.mm_struct** %1, align 8
  %5 = call i32 (...) @preempt_disable()
  %6 = call i32 (...) @local_flush_tlb()
  %7 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %8 = call i32 @mm_cpumask(%struct.mm_struct* %7)
  %9 = call i32 (...) @smp_processor_id()
  %10 = call i64 @cpumask_any_but(i32 %8, i32 %9)
  %11 = load i64, i64* @nr_cpu_ids, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %15 = call i32 @mm_cpumask(%struct.mm_struct* %14)
  %16 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %17 = load i32, i32* @TLB_FLUSH_ALL, align 4
  %18 = call i32 @flush_tlb_others(i32 %15, %struct.mm_struct* %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %0
  %20 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_flush_tlb(...) #1

declare dso_local i64 @cpumask_any_but(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @flush_tlb_others(i32, %struct.mm_struct*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
