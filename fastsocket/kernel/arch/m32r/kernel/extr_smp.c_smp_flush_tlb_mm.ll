; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_smp_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_smp_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64* }

@NO_CONTEXT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@FLUSH_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %7 = call i32 (...) @preempt_disable()
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %3, align 4
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64* %14, i64** %5, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = call i32* @mm_cpumask(%struct.mm_struct* %15)
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cpu_clear(i32 %18, i32 %19)
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NO_CONTEXT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %1
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = load i64, i64* @NO_CONTEXT, align 8
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.mm_struct*, %struct.mm_struct** %32, align 8
  %34 = icmp eq %struct.mm_struct* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %37 = call i32 @activate_context(%struct.mm_struct* %36)
  br label %43

38:                                               ; preds = %25
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %41 = call i32* @mm_cpumask(%struct.mm_struct* %40)
  %42 = call i32 @cpumask_clear_cpu(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  br label %46

46:                                               ; preds = %43, %1
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cpus_empty(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %53 = load i32, i32* @FLUSH_ALL, align 4
  %54 = call i32 @flush_tlb_others(i32 %51, %struct.mm_struct* %52, i32* null, i32 %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32* @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @activate_context(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @cpus_empty(i32) #1

declare dso_local i32 @flush_tlb_others(i32, %struct.mm_struct*, i32*, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
