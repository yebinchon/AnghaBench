; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_highmem_32.c_kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_highmem_32.c_kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@KM_TYPE_NR = common dso_local global i32 0, align 4
@FIX_KMAP_BEGIN = common dso_local global i32 0, align 4
@kmap_pte = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i64 0, align 8
@high_memory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kunmap_atomic(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @PAGE_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @KM_TYPE_NR, align 4
  %13 = call i32 (...) @smp_processor_id()
  %14 = mul nsw i32 %12, %13
  %15 = add i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @FIX_KMAP_BEGIN, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  %20 = call i64 @__fix_to_virt(i32 %19)
  %21 = icmp eq i64 %16, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @kmap_pte, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %23, %24
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @kpte_clear_flush(i32 %25, i64 %26)
  %28 = call i32 (...) @arch_flush_lazy_mmu_mode()
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %22
  %31 = call i32 (...) @pagefault_enable()
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__fix_to_virt(i32) #1

declare dso_local i32 @kpte_clear_flush(i32, i64) #1

declare dso_local i32 @arch_flush_lazy_mmu_mode(...) #1

declare dso_local i32 @pagefault_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
