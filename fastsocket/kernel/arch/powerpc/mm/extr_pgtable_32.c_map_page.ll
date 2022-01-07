; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_pgtable_32.c_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_pgtable_32.c_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_HASHPTE = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_page(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @pgd_offset_k(i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @pud_offset(i32 %13, i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32* @pmd_offset(i32 %15, i64 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32* @pte_alloc_kernel(i32* %18, i64 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pte_val(i32 %25)
  %27 = load i32, i32* @_PAGE_PRESENT, align 4
  %28 = load i32, i32* @_PAGE_HASHPTE, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %23
  %36 = phi i1 [ false, %23 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i64, i64* %4, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @__pgprot(i32 %44)
  %46 = call i32 @pfn_pte(i32 %43, i32 %45)
  %47 = call i32 @set_pte_at(i32* @init_mm, i64 %39, i32* %40, i32 %46)
  br label %48

48:                                               ; preds = %35, %3
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32* @pmd_offset(i32, i64) #1

declare dso_local i32 @pud_offset(i32, i64) #1

declare dso_local i32 @pgd_offset_k(i64) #1

declare dso_local i32* @pte_alloc_kernel(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @set_pte_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @__pgprot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
