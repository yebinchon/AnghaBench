; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pud_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pud_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PMD_SHIFT = common dso_local global i32 0, align 4
@PGDIR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, i32*, i64, i64, i64, i64)* @hugetlb_free_pud_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_free_pud_range(%struct.mmu_gather* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.mmu_gather*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %19 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @get_slice_psize(i32 %20, i64 %21)
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %17, align 4
  %24 = call i32 @mmu_psize_to_shift(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %15, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32* @pud_offset(i32* %26, i64 %27)
  store i32* %28, i32** %13, align 8
  br label %29

29:                                               ; preds = %62, %6
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @pud_addr_end(i64 %30, i64 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @PMD_SHIFT, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i32*, i32** %13, align 8
  %38 = call i64 @pud_none_or_clear_bad(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %62

41:                                               ; preds = %36
  %42 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @hugetlb_free_pmd_range(%struct.mmu_gather* %42, i32* %43, i64 %44, i64 %45, i64 %46, i64 %47, i32 %48)
  br label %61

50:                                               ; preds = %29
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @pud_none(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %62

56:                                               ; preds = %50
  %57 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @free_hugepte_range(%struct.mmu_gather* %57, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %41
  br label %62

62:                                               ; preds = %61, %55, %40
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %13, align 8
  %65 = load i64, i64* %14, align 8
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %29, label %69

69:                                               ; preds = %62
  %70 = load i64, i64* @PGDIR_MASK, align 8
  %71 = load i64, i64* %15, align 8
  %72 = and i64 %71, %70
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %105

77:                                               ; preds = %69
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i64, i64* @PGDIR_MASK, align 8
  %82 = load i64, i64* %12, align 8
  %83 = and i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %105

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %77
  %89 = load i64, i64* %10, align 8
  %90 = sub i64 %89, 1
  %91 = load i64, i64* %12, align 8
  %92 = sub i64 %91, 1
  %93 = icmp ugt i64 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %105

95:                                               ; preds = %88
  %96 = load i32*, i32** %8, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i32* @pud_offset(i32* %96, i64 %97)
  store i32* %98, i32** %13, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @pgd_clear(i32* %99)
  %101 = load %struct.mmu_gather*, %struct.mmu_gather** %7, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @pud_free_tlb(%struct.mmu_gather* %101, i32* %102, i64 %103)
  br label %105

105:                                              ; preds = %95, %94, %86, %76
  ret void
}

declare dso_local i32 @get_slice_psize(i32, i64) #1

declare dso_local i32 @mmu_psize_to_shift(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_addr_end(i64, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32 @hugetlb_free_pmd_range(%struct.mmu_gather*, i32*, i64, i64, i64, i64, i32) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @free_hugepte_range(%struct.mmu_gather*, i32*, i32) #1

declare dso_local i32 @pgd_clear(i32*) #1

declare dso_local i32 @pud_free_tlb(%struct.mmu_gather*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
