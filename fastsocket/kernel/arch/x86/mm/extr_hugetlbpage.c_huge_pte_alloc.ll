; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_huge_pte_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_huge_pte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PUD_SIZE = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_alloc(%struct.mm_struct* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32* @pgd_offset(%struct.mm_struct* %12, i64 %13)
  store i32* %14, i32** %9, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @pud_alloc(%struct.mm_struct* %15, i32* %16, i64 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @PUD_SIZE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  store i32* %26, i32** %11, align 8
  br label %49

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PMD_SIZE, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pud_none(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @huge_pmd_share(%struct.mm_struct* %38, i64 %39, i32* %40, i32* %41)
  br label %43

43:                                               ; preds = %37, %27
  %44 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @pmd_alloc(%struct.mm_struct* %44, i32* %45, i64 %46)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %11, align 8
  br label %49

49:                                               ; preds = %43, %25
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pte_none(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pte_huge(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %58, %53, %50
  %65 = phi i1 [ false, %53 ], [ false, %50 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32*, i32** %11, align 8
  ret i32* %68
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @huge_pmd_share(%struct.mm_struct*, i64, i32*, i32*) #1

declare dso_local i64 @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @pte_huge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
