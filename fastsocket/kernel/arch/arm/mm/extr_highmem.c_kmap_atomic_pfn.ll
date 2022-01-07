; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_highmem.c_kmap_atomic_pfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_highmem.c_kmap_atomic_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_TYPE_NR = common dso_local global i32 0, align 4
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8
@kmap_prot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_atomic_pfn(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @pagefault_disable()
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KM_TYPE_NR, align 4
  %10 = call i32 (...) @smp_processor_id()
  %11 = mul nsw i32 %9, %10
  %12 = add i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @FIX_KMAP_BEGIN, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i64 @__fix_to_virt(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32* @TOP_PTE(i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @kmap_prot, align 4
  %22 = call i32 @pfn_pte(i64 %20, i32 %21)
  %23 = call i32 @set_pte_ext(i32* %19, i32 %22, i32 0)
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @local_flush_tlb_kernel_page(i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to i8*
  ret i8* %27
}

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__fix_to_virt(i64) #1

declare dso_local i32 @set_pte_ext(i32*, i32, i32) #1

declare dso_local i32* @TOP_PTE(i64) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @local_flush_tlb_kernel_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
