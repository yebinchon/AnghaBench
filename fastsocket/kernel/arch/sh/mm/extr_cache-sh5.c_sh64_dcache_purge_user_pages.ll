; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh5.c_sh64_dcache_purge_user_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_cache-sh5.c_sh64_dcache_purge_user_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i64)* @sh64_dcache_purge_user_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_dcache_purge_user_pages(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = icmp ne %struct.mm_struct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %92

17:                                               ; preds = %3
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32* @pgd_offset(%struct.mm_struct* %18, i64 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @pgd_bad(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %92

26:                                               ; preds = %17
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32* @pud_offset(i32* %27, i64 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pud_none(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pud_bad(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %26
  br label %92

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32* @pmd_offset(i32* %41, i64 %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @pmd_none(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pmd_bad(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %40
  br label %92

54:                                               ; preds = %48
  %55 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32* @pte_offset_map_lock(%struct.mm_struct* %55, i32* %56, i64 %57, i32** %12)
  store i32* %58, i32** %10, align 8
  br label %59

59:                                               ; preds = %78, %54
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @pte_none(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @pte_present(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65, %59
  br label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @pte_val(i32 %71)
  %73 = load i64, i64* @PAGE_MASK, align 8
  %74 = and i64 %72, %73
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @sh64_dcache_purge_coloured_phy_page(i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %70, %69
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %10, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %59, label %87

87:                                               ; preds = %78
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 -1
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @pte_unmap_unlock(i32* %89, i32* %90)
  br label %92

92:                                               ; preds = %87, %53, %39, %25, %16
  ret void
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_bad(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_bad(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_bad(i32) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @sh64_dcache_purge_coloured_phy_page(i64, i64) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
