; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_follow_huge_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hugetlbpage.c_follow_huge_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mm_struct = type { i32 }

@mmu_huge_psizes = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @follow_huge_addr(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @get_slice_psize(%struct.mm_struct* %13, i64 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** @mmu_huge_psizes, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.page* @ERR_PTR(i32 %24)
  store %struct.page* %25, %struct.page** %4, align 8
  br label %50

26:                                               ; preds = %3
  %27 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32* @huge_pte_offset(%struct.mm_struct* %27, i64 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.page* @pte_page(i32 %31)
  store %struct.page* %32, %struct.page** %9, align 8
  %33 = load %struct.page*, %struct.page** %9, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @mmu_psize_to_shift(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 1, %39
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = urem i64 %41, %42
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = udiv i64 %43, %44
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i64 %45
  store %struct.page* %47, %struct.page** %9, align 8
  br label %48

48:                                               ; preds = %35, %26
  %49 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %49, %struct.page** %4, align 8
  br label %50

50:                                               ; preds = %48, %22
  %51 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %51
}

declare dso_local i32 @get_slice_psize(%struct.mm_struct*, i64) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @mmu_psize_to_shift(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
