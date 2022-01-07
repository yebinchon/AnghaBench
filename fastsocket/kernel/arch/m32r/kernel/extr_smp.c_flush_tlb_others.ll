; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_flush_tlb_others.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_smp.c_flush_tlb_others.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@cpu_online_map = common dso_local global i32 0, align 4
@tlbstate_lock = common dso_local global i32 0, align 4
@flush_mm = common dso_local global %struct.mm_struct* null, align 8
@flush_vma = common dso_local global %struct.vm_area_struct* null, align 8
@flush_va = common dso_local global i64 0, align 8
@flush_cpumask = common dso_local global i32 0, align 4
@INVALIDATE_TLB_IPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mm_struct*, %struct.vm_area_struct*, i64)* @flush_tlb_others to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tlb_others(i32 %0, %struct.mm_struct* %1, %struct.vm_area_struct* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.mm_struct* %1, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cpus_empty(i32 %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = call i32 (...) @smp_processor_id()
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cpu_isset(i32 %13, i32 %14)
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %18 = icmp ne %struct.mm_struct* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @cpu_online_map, align 4
  %25 = call i32 @cpus_and(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cpus_empty(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %51

30:                                               ; preds = %4
  %31 = call i32 @spin_lock(i32* @tlbstate_lock)
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  store %struct.mm_struct* %32, %struct.mm_struct** @flush_mm, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %33, %struct.vm_area_struct** @flush_vma, align 8
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* @flush_va, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64* @cpus_addr(i32 %35)
  store i64* %36, i64** %9, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @atomic_set_mask(i64 %38, i32* @flush_cpumask)
  %40 = load i32, i32* @INVALIDATE_TLB_IPI, align 4
  %41 = call i32 @send_IPI_mask(i32* %5, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %47, %30
  %43 = load i32, i32* @flush_cpumask, align 4
  %44 = call i32 @cpus_empty(i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (...) @mb()
  br label %42

49:                                               ; preds = %42
  store %struct.mm_struct* null, %struct.mm_struct** @flush_mm, align 8
  store %struct.vm_area_struct* null, %struct.vm_area_struct** @flush_vma, align 8
  store i64 0, i64* @flush_va, align 8
  %50 = call i32 @spin_unlock(i32* @tlbstate_lock)
  br label %51

51:                                               ; preds = %49, %29
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpus_empty(i32) #1

declare dso_local i32 @cpu_isset(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpus_and(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64* @cpus_addr(i32) #1

declare dso_local i32 @atomic_set_mask(i64, i32*) #1

declare dso_local i32 @send_IPI_mask(i32*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
