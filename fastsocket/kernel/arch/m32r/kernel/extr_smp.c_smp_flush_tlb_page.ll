; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_smp_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_smp_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i64* }

@NO_CONTEXT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@MMU_CONTEXT_ASID_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %5, align 8
  %13 = call i32 (...) @preempt_disable()
  %14 = call i32 (...) @smp_processor_id()
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64* %20, i64** %8, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %22 = call i32* @mm_cpumask(%struct.mm_struct* %21)
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cpu_clear(i32 %24, i32 %25)
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NO_CONTEXT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %4, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMU_CONTEXT_ASID_MASK, align 8
  %40 = and i64 %38, %39
  %41 = load i64, i64* %4, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @__flush_tlb_page(i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  br label %47

47:                                               ; preds = %31, %2
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cpus_empty(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @flush_tlb_others(i32 %52, %struct.mm_struct* %53, %struct.vm_area_struct* %54, i64 %55)
  br label %57

57:                                               ; preds = %51, %47
  %58 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32* @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpu_clear(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__flush_tlb_page(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @cpus_empty(i32) #1

declare dso_local i32 @flush_tlb_others(i32, %struct.mm_struct*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
