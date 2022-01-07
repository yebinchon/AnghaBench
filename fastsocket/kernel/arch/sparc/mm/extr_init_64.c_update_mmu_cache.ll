; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/mm/extr_init_64.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.tsb* }
%struct.tsb = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@MM_TSB_BASE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@HPAGE_SHIFT = common dso_local global i64 0, align 8
@MM_TSB_HUGE = common dso_local global i64 0, align 8
@_PAGE_SZALL_4U = common dso_local global i32 0, align 4
@_PAGE_SZALL_4V = common dso_local global i32 0, align 4
@_PAGE_SZHUGE_4U = common dso_local global i32 0, align 4
@_PAGE_SZHUGE_4V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.tsb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i64, i64* @tlb_type, align 8
  %15 = load i64, i64* @hypervisor, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @pte_pfn(i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i64 @pfn_valid(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @flush_dcache(i64 %24)
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  store %struct.mm_struct* %30, %struct.mm_struct** %7, align 8
  %31 = load i64, i64* @MM_TSB_BASE, align 8
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  store i64 %32, i64* %12, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %39 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.tsb*, %struct.tsb** %44, align 8
  store %struct.tsb* %45, %struct.tsb** %8, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %12, align 8
  %48 = lshr i64 %46, %47
  %49 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 1
  %58 = and i64 %48, %57
  %59 = load %struct.tsb*, %struct.tsb** %8, align 8
  %60 = getelementptr inbounds %struct.tsb, %struct.tsb* %59, i64 %58
  store %struct.tsb* %60, %struct.tsb** %8, align 8
  %61 = load i64, i64* %5, align 8
  %62 = lshr i64 %61, 22
  store i64 %62, i64* %9, align 8
  %63 = load %struct.tsb*, %struct.tsb** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @pte_val(i32 %65)
  %67 = call i32 @tsb_insert(%struct.tsb* %63, i64 %64, i32 %66)
  %68 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %69 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i32 @flush_dcache(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tsb_insert(%struct.tsb*, i64, i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
