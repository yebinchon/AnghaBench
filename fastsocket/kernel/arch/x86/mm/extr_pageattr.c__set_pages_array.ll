; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c__set_pages_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c__set_pages_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@_PAGE_CACHE_UC_MINUS = common dso_local global i64 0, align 8
@_PAGE_CACHE_WC = common dso_local global i64 0, align 8
@_PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, i32, i64)* @_set_pages_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_set_pages_array(%struct.page** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load %struct.page**, %struct.page*** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.page*, %struct.page** %18, i64 %20
  %22 = load %struct.page*, %struct.page** %21, align 8
  %23 = call i64 @PageHighMem(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.page**, %struct.page*** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.page*, %struct.page** %27, i64 %29
  %31 = load %struct.page*, %struct.page** %30, align 8
  %32 = call i64 @page_to_pfn(%struct.page* %31)
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @reserve_memtype(i64 %38, i64 %39, i64 %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %74

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %13

48:                                               ; preds = %13
  %49 = load %struct.page**, %struct.page*** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i64, i64* @_PAGE_CACHE_UC_MINUS, align 8
  %52 = call i32 @__pgprot(i64 %51)
  %53 = call i32 @cpa_set_pages_array(%struct.page** %49, i32 %50, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @_PAGE_CACHE_WC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i64, i64* @_PAGE_CACHE_WC, align 8
  %63 = call i32 @__pgprot(i64 %62)
  %64 = load i64, i64* @_PAGE_CACHE_MASK, align 8
  %65 = call i32 @__pgprot(i64 %64)
  %66 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %67 = load %struct.page**, %struct.page*** %5, align 8
  %68 = call i32 @change_page_attr_set_clr(i32* null, i32 %61, i32 %63, i32 %65, i32 0, i32 %66, %struct.page** %67)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %60, %56, %48
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %74

73:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %110

74:                                               ; preds = %72, %43
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %104, %74
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load %struct.page**, %struct.page*** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.page*, %struct.page** %81, i64 %83
  %85 = load %struct.page*, %struct.page** %84, align 8
  %86 = call i64 @PageHighMem(%struct.page* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %104

89:                                               ; preds = %80
  %90 = load %struct.page**, %struct.page*** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.page*, %struct.page** %90, i64 %92
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = call i64 @page_to_pfn(%struct.page* %94)
  %96 = load i64, i64* @PAGE_SHIFT, align 8
  %97 = shl i64 %95, %96
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = add i64 %98, %99
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @free_memtype(i64 %101, i64 %102)
  br label %104

104:                                              ; preds = %89, %88
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %76

107:                                              ; preds = %76
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %107, %73
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i64 @reserve_memtype(i64, i64, i64, i32*) #1

declare dso_local i32 @cpa_set_pages_array(%struct.page**, i32, i32) #1

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i32 @change_page_attr_set_clr(i32*, i32, i32, i32, i32, i32, %struct.page**) #1

declare dso_local i32 @free_memtype(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
