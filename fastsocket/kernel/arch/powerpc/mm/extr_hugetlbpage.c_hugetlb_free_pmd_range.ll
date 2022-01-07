; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pmd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pmd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@PUD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmu_gather*, i32*, i64, i64, i64, i64, i32)* @hugetlb_free_pmd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hugetlb_free_pmd_range(%struct.mmu_gather* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.mmu_gather*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %17, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32* @pmd_offset(i32* %19, i64 %20)
  store i32* %21, i32** %15, align 8
  br label %22

22:                                               ; preds = %36, %7
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @pmd_addr_end(i64 %23, i64 %24)
  store i64 %25, i64* %16, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @pmd_none(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %36

31:                                               ; preds = %22
  %32 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @free_hugepte_range(%struct.mmu_gather* %32, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %30
  %37 = load i32*, i32** %15, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %15, align 8
  %39 = load i64, i64* %16, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %22, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* @PUD_MASK, align 8
  %45 = load i64, i64* %17, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %79

51:                                               ; preds = %43
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i64, i64* @PUD_MASK, align 8
  %56 = load i64, i64* %13, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %79

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i64, i64* %11, align 8
  %64 = sub i64 %63, 1
  %65 = load i64, i64* %13, align 8
  %66 = sub i64 %65, 1
  %67 = icmp ugt i64 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %79

69:                                               ; preds = %62
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %17, align 8
  %72 = call i32* @pmd_offset(i32* %70, i64 %71)
  store i32* %72, i32** %15, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @pud_clear(i32* %73)
  %75 = load %struct.mmu_gather*, %struct.mmu_gather** %8, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i64, i64* %17, align 8
  %78 = call i32 @pmd_free_tlb(%struct.mmu_gather* %75, i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %69, %68, %60, %50
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_addr_end(i64, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @free_hugepte_range(%struct.mmu_gather*, i32*, i32) #1

declare dso_local i32 @pud_clear(i32*) #1

declare dso_local i32 @pmd_free_tlb(%struct.mmu_gather*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
