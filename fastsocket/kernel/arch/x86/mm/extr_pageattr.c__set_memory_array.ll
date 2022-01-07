; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c__set_memory_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c__set_memory_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@_PAGE_CACHE_UC_MINUS = common dso_local global i64 0, align 8
@_PAGE_CACHE_WC = common dso_local global i64 0, align 8
@_PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@CPA_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_set_memory_array(i64* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i64*, i64** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @__pa(i64 %20)
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @__pa(i64 %26)
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @reserve_memtype(i64 %21, i64 %29, i64 %30, i32* null)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %65

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load i64*, i64** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* @_PAGE_CACHE_UC_MINUS, align 8
  %43 = call i32 @__pgprot(i64 %42)
  %44 = call i32 @change_page_attr_set(i64* %40, i32 %41, i32 %43, i32 1)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @_PAGE_CACHE_WC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i64*, i64** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* @_PAGE_CACHE_WC, align 8
  %55 = call i32 @__pgprot(i64 %54)
  %56 = load i64, i64* @_PAGE_CACHE_MASK, align 8
  %57 = call i32 @__pgprot(i64 %56)
  %58 = load i32, i32* @CPA_ARRAY, align 4
  %59 = call i32 @change_page_attr_set_clr(i64* %52, i32 %53, i32 %55, i32 %57, i32 0, i32 %58, i32* null)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %51, %47, %39
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %65

64:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %91

65:                                               ; preds = %63, %34
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i64*, i64** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @__pa(i64 %75)
  %77 = load i64*, i64** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @__pa(i64 %81)
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @free_memtype(i64 %76, i64 %84)
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %66

89:                                               ; preds = %66
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %64
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @reserve_memtype(i64, i64, i64, i32*) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @change_page_attr_set(i64*, i32, i32, i32) #1

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i32 @change_page_attr_set_clr(i64*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @free_memtype(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
