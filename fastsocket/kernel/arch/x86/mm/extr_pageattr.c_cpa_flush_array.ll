; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_cpa_flush_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_cpa_flush_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@__cpa_flush_all = common dso_local global i32 0, align 4
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32, i32, %struct.page**)* @cpa_flush_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpa_flush_array(i64* %0, i32 %1, i32 %2, i32 %3, %struct.page** %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page** %4, %struct.page*** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 1024
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %13, align 8
  %25 = call i32 (...) @irqs_disabled()
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* @__cpa_flush_all, align 4
  %28 = load i64, i64* %13, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @on_each_cpu(i32 %27, i8* %29, i32 1)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %21
  br label %81

37:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.page**, %struct.page*** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.page*, %struct.page** %48, i64 %50
  %52 = load %struct.page*, %struct.page** %51, align 8
  %53 = call i64 @page_address(%struct.page* %52)
  store i64 %53, i64* %14, align 8
  br label %60

54:                                               ; preds = %42
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %14, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i64, i64* %14, align 8
  %62 = call i32* @lookup_address(i64 %61, i32* %12)
  store i32* %62, i32** %15, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pte_val(i32 %67)
  %69 = load i32, i32* @_PAGE_PRESENT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i64, i64* %14, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call i32 @clflush_cache_range(i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %65, %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %38

81:                                               ; preds = %36, %38
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @on_each_cpu(i32, i8*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32* @lookup_address(i64, i32*) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @clflush_cache_range(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
