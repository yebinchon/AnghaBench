; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_pgd.c_get_pgd_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_pgd.c_get_pgd_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FIRST_KERNEL_PGD_NR = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_pgd_slow(%struct.mm_struct* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @__get_free_pages(i32 %10, i32 2)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %84

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @FIRST_KERNEL_PGD_NR, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %17, i32 0, i32 %21)
  %23 = call i32* @pgd_offset_k(i32 0)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @FIRST_KERNEL_PGD_NR, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @FIRST_KERNEL_PGD_NR, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* @PTRS_PER_PGD, align 4
  %33 = load i32, i32* @FIRST_KERNEL_PGD_NR, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i32* %27, i32* %31, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @PTRS_PER_PGD, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32 @clean_dcache_area(i32* %39, i32 %43)
  %45 = call i32 (...) @vectors_high()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %16
  %48 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @pmd_alloc(%struct.mm_struct* %48, i32* %49, i32 0)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %80

54:                                               ; preds = %47
  %55 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32* @pte_alloc_map(%struct.mm_struct* %55, i32* %56, i32 0)
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %76

61:                                               ; preds = %54
  %62 = load i32*, i32** %5, align 8
  %63 = call i32* @pmd_offset(i32* %62, i32 0)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32* @pte_offset_map_nested(i32* %64, i32 0)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_pte_ext(i32* %66, i32 %68, i32 0)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @pte_unmap_nested(i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @pte_unmap(i32* %72)
  br label %74

74:                                               ; preds = %61, %16
  %75 = load i32*, i32** %4, align 8
  store i32* %75, i32** %2, align 8
  br label %85

76:                                               ; preds = %60
  %77 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @pmd_free(%struct.mm_struct* %77, i32* %78)
  br label %80

80:                                               ; preds = %76, %53
  %81 = load i32*, i32** %4, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = call i32 @free_pages(i64 %82, i32 2)
  br label %84

84:                                               ; preds = %80, %15
  store i32* null, i32** %2, align 8
  br label %85

85:                                               ; preds = %84, %74
  %86 = load i32*, i32** %2, align 8
  ret i32* %86
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @pgd_offset_k(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @clean_dcache_area(i32*, i32) #1

declare dso_local i32 @vectors_high(...) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32* @pte_alloc_map(%struct.mm_struct*, i32*, i32) #1

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32* @pte_offset_map_nested(i32*, i32) #1

declare dso_local i32 @set_pte_ext(i32*, i32, i32) #1

declare dso_local i32 @pte_unmap_nested(i32*) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @pmd_free(%struct.mm_struct*, i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
