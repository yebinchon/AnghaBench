; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pgd_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_hugetlb_free_pgd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32 }

@mmu_huge_psizes = common dso_local global i32* null, align 8
@PUD_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hugetlb_free_pgd_range(%struct.mmu_gather* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mmu_gather*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mmu_gather* %0, %struct.mmu_gather** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %16 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @get_slice_psize(i32 %17, i64 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i64 @HUGEPD_MASK(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %5
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @HUGEPD_SIZE(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %126

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %5
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = call i64 @HUGEPD_MASK(i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %126

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %49, 1
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %51, 1
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  %56 = call i64 @HUGEPD_SIZE(i32 %55)
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 1
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %126

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %13, align 8
  %67 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %68 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32* @pgd_offset(i32 %69, i64 %70)
  store i32* %71, i32** %11, align 8
  br label %72

72:                                               ; preds = %119, %65
  %73 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %74 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @get_slice_psize(i32 %75, i64 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32*, i32** @mmu_huge_psizes, align 8
  %79 = load i32, i32* %14, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @pgd_addr_end(i64 %87, i64 %88)
  store i64 %89, i64* %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @mmu_psize_to_shift(i32 %90)
  %92 = load i64, i64* @PUD_SHIFT, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %72
  %95 = load i32*, i32** %11, align 8
  %96 = call i64 @pgd_none_or_clear_bad(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %119

99:                                               ; preds = %94
  %100 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @hugetlb_free_pud_range(%struct.mmu_gather* %100, i32* %101, i64 %102, i64 %103, i64 %104, i64 %105)
  br label %118

107:                                              ; preds = %72
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @pgd_none(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %119

113:                                              ; preds = %107
  %114 = load %struct.mmu_gather*, %struct.mmu_gather** %6, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @free_hugepte_range(%struct.mmu_gather* %114, i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %99
  br label %119

119:                                              ; preds = %118, %112, %98
  %120 = load i32*, i32** %11, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %11, align 8
  %122 = load i64, i64* %12, align 8
  store i64 %122, i64* %7, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %72, label %126

126:                                              ; preds = %34, %46, %64, %119
  ret void
}

declare dso_local i32 @get_slice_psize(i32, i64) #1

declare dso_local i64 @HUGEPD_MASK(i32) #1

declare dso_local i64 @HUGEPD_SIZE(i32) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @pgd_addr_end(i64, i64) #1

declare dso_local i64 @mmu_psize_to_shift(i32) #1

declare dso_local i64 @pgd_none_or_clear_bad(i32*) #1

declare dso_local i32 @hugetlb_free_pud_range(%struct.mmu_gather*, i32*, i64, i64, i64, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @free_hugepte_range(%struct.mmu_gather*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
