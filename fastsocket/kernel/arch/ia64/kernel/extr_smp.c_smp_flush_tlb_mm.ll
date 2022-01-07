; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_smp.c_smp_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_smp.c_smp_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %3 = call i32 (...) @preempt_disable()
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %8 = icmp eq %struct.mm_struct* %4, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp eq i32 %12, 1
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ false, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %21 = call i32 @local_finish_flush_tlb_mm(%struct.mm_struct* %20)
  %22 = call i32 (...) @preempt_enable()
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %25 = call i32 @mm_cpumask(%struct.mm_struct* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %27 = call i32 @smp_call_function_many(i32 %25, void (i8*)* bitcast (i32 (%struct.mm_struct*)* @local_finish_flush_tlb_mm to void (i8*)*), %struct.mm_struct* %26, i32 1)
  %28 = call i32 (...) @local_irq_disable()
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = call i32 @local_finish_flush_tlb_mm(%struct.mm_struct* %29)
  %31 = call i32 (...) @local_irq_enable()
  %32 = call i32 (...) @preempt_enable()
  br label %33

33:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @local_finish_flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @smp_call_function_many(i32, void (i8*)*, %struct.mm_struct*, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
