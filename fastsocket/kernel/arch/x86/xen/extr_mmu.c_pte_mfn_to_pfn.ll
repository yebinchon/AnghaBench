; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_pte_mfn_to_pfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_mmu.c_pte_mfn_to_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@PTE_PFN_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PTE_FLAGS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pte_mfn_to_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_mfn_to_pfn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @_PAGE_PRESENT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @PTE_PFN_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PTE_FLAGS_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @mfn_to_pfn(i64 %19)
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %9, %1
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @mfn_to_pfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
