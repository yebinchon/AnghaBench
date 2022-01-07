; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_huge_pmd_unshare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_huge_pmd_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@HPAGE_SIZE = common dso_local global i64 0, align 8
@PTRS_PER_PTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huge_pmd_unshare(%struct.mm_struct* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32* @pgd_offset(%struct.mm_struct* %10, i64 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = call i32* @pud_offset(i32* %14, i64 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @virt_to_page(i32* %18)
  %20 = call i32 @page_count(i32 %19)
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @virt_to_page(i32* %24)
  %26 = call i32 @page_count(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

29:                                               ; preds = %3
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @pud_clear(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @virt_to_page(i32* %32)
  %34 = call i32 @put_page(i32 %33)
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HPAGE_SIZE, align 8
  %38 = load i64, i64* @PTRS_PER_PTE, align 8
  %39 = mul i64 %37, %38
  %40 = call i64 @ALIGN(i64 %36, i64 %39)
  %41 = load i64, i64* @HPAGE_SIZE, align 8
  %42 = sub i64 %40, %41
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %29, %28
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @page_count(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i32 @pud_clear(i32*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i64 @ALIGN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
