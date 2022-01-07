; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_set_huge_pte_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_set_huge_pte_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.hstate = type { i64 }

@_PAGE_HPTEFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_huge_pte_at(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hstate*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @pte_present(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @get_slice_psize(%struct.mm_struct* %18, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @mmu_psize_to_shift(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call %struct.hstate* @size_to_hstate(i64 %26)
  store %struct.hstate* %27, %struct.hstate** %12, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.hstate*, %struct.hstate** %12, align 8
  %31 = getelementptr inbounds %struct.hstate, %struct.hstate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %29, %32
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @pte_update(%struct.mm_struct* %28, i64 %33, i32* %34, i64 -1, i32 1)
  br label %36

36:                                               ; preds = %17, %4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @pte_val(i32 %37)
  %39 = load i32, i32* @_PAGE_HPTEFLAGS, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @__pte(i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  ret void
}

declare dso_local i64 @pte_present(i32) #1

declare dso_local i32 @get_slice_psize(%struct.mm_struct*, i64) #1

declare dso_local i32 @mmu_psize_to_shift(i32) #1

declare dso_local %struct.hstate* @size_to_hstate(i64) #1

declare dso_local i32 @pte_update(%struct.mm_struct*, i64, i32*, i64, i32) #1

declare dso_local i32 @__pte(i32) #1

declare dso_local i32 @pte_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
