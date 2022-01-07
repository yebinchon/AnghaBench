; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_huge_pte_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_huge_pte_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.hstate = type { i64 }

@mmu_huge_psizes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_alloc(%struct.mm_struct* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.hstate*, align 8
  %15 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call %struct.hstate* @size_to_hstate(i64 %16)
  store %struct.hstate* %17, %struct.hstate** %14, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @get_slice_psize(%struct.mm_struct* %18, i64 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32*, i32** @mmu_huge_psizes, align 8
  %22 = load i32, i32* %15, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.hstate*, %struct.hstate** %14, align 8
  %31 = getelementptr inbounds %struct.hstate, %struct.hstate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32* @pgd_offset(%struct.mm_struct* %35, i64 %36)
  store i32* %37, i32** %10, align 8
  %38 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.hstate*, %struct.hstate** %14, align 8
  %42 = call i32* @hpud_alloc(%struct.mm_struct* %38, i32* %39, i64 %40, %struct.hstate* %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %4
  %46 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.hstate*, %struct.hstate** %14, align 8
  %50 = call i32* @hpmd_alloc(%struct.mm_struct* %46, i32* %47, i64 %48, %struct.hstate* %49)
  store i32* %50, i32** %12, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32*, i32** %12, align 8
  store i32* %54, i32** %13, align 8
  br label %55

55:                                               ; preds = %53, %45
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32* null, i32** %5, align 8
  br label %78

60:                                               ; preds = %56
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @hugepd_none(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i64 @__hugepte_alloc(%struct.mm_struct* %66, i32* %67, i64 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32* null, i32** %5, align 8
  br label %78

73:                                               ; preds = %65, %60
  %74 = load i32*, i32** %13, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.hstate*, %struct.hstate** %14, align 8
  %77 = call i32* @hugepte_offset(i32* %74, i64 %75, %struct.hstate* %76)
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %73, %72, %59
  %79 = load i32*, i32** %5, align 8
  ret i32* %79
}

declare dso_local %struct.hstate* @size_to_hstate(i64) #1

declare dso_local i32 @get_slice_psize(%struct.mm_struct*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @hpud_alloc(%struct.mm_struct*, i32*, i64, %struct.hstate*) #1

declare dso_local i32* @hpmd_alloc(%struct.mm_struct*, i32*, i64, %struct.hstate*) #1

declare dso_local i64 @hugepd_none(i32) #1

declare dso_local i64 @__hugepte_alloc(%struct.mm_struct*, i32*, i64, i32) #1

declare dso_local i32* @hugepte_offset(i32*, i64, %struct.hstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
