; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_huge_pte_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_huge_pte_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.hstate = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_offset(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hstate*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @get_slice_psize(%struct.mm_struct* %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @mmu_psize_to_shift(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = shl i64 1, %19
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call %struct.hstate* @size_to_hstate(i64 %21)
  store %struct.hstate* %22, %struct.hstate** %12, align 8
  %23 = load %struct.hstate*, %struct.hstate** %12, align 8
  %24 = getelementptr inbounds %struct.hstate, %struct.hstate* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @pgd_offset(%struct.mm_struct* %28, i64 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pgd_none(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %2
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.hstate*, %struct.hstate** %12, align 8
  %39 = call i32* @hpud_offset(i32* %36, i64 %37, %struct.hstate* %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pud_none(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %35
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.hstate*, %struct.hstate** %12, align 8
  %48 = call i32* @hpmd_offset(i32* %45, i64 %46, %struct.hstate* %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pmd_none(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.hstate*, %struct.hstate** %12, align 8
  %57 = call i32* @hugepte_offset(i32* %54, i64 %55, %struct.hstate* %56)
  store i32* %57, i32** %3, align 8
  br label %61

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %35
  br label %60

60:                                               ; preds = %59, %2
  store i32* null, i32** %3, align 8
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local i32 @get_slice_psize(%struct.mm_struct*, i64) #1

declare dso_local i32 @mmu_psize_to_shift(i32) #1

declare dso_local %struct.hstate* @size_to_hstate(i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32* @hpud_offset(i32*, i64, %struct.hstate*) #1

declare dso_local i32 @pud_none(i32) #1

declare dso_local i32* @hpmd_offset(i32*, i64, %struct.hstate*) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32* @hugepte_offset(i32*, i64, %struct.hstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
