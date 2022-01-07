; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/mm/extr_pgtable.c_map_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/microblaze/mm/extr_pgtable.c_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@mem_init_done = common dso_local global i64 0, align 8

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
  %15 = call i32* @pmd_offset(i32 %13, i64 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32* @pte_alloc_kernel(i32* %16, i64 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %22 = load i64, i64* %4, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @__pgprot(i32 %27)
  %29 = call i32 @pfn_pte(i32 %26, i32 %28)
  %30 = call i32 @set_pte_at(i32* @init_mm, i64 %22, i32* %23, i32 %29)
  %31 = load i64, i64* @mem_init_done, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load i64, i64* %4, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pmd_val(i32 %36)
  %38 = call i32 @flush_HPTE(i32 0, i64 %34, i32 %37)
  br label %39

39:                                               ; preds = %33, %21
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32* @pmd_offset(i32, i64) #1

declare dso_local i32 @pgd_offset_k(i64) #1

declare dso_local i32* @pte_alloc_kernel(i32*, i64) #1

declare dso_local i32 @set_pte_at(i32*, i64, i32*, i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @flush_HPTE(i32, i64, i32) #1

declare dso_local i32 @pmd_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
