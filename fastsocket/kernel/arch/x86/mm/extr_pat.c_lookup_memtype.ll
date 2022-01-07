; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_lookup_memtype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_lookup_memtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32, i64)* }
%struct.memtype = type { i32 }
%struct.page = type { i32 }

@_PAGE_CACHE_WB = common dso_local global i32 0, align 4
@x86_platform = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@memtype_lock = common dso_local global i32 0, align 4
@memtype_rbroot = common dso_local global i32 0, align 4
@_PAGE_CACHE_UC_MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @lookup_memtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lookup_memtype(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.memtype*, align 8
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @_PAGE_CACHE_WB, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i64 (i32, i64)*, i64 (i32, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_platform, i32 0, i32 0), align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 %8(i32 %9, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %2, align 8
  br label %57

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @pat_pagerange_is_ram(i32 %20, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = call %struct.page* @pfn_to_page(i32 %30)
  store %struct.page* %31, %struct.page** %6, align 8
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @get_page_memtype(%struct.page* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @_PAGE_CACHE_WB, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %2, align 8
  br label %57

41:                                               ; preds = %19
  %42 = call i32 @spin_lock(i32* @memtype_lock)
  %43 = load i32, i32* %3, align 4
  %44 = call %struct.memtype* @memtype_rb_search(i32* @memtype_rbroot, i32 %43)
  store %struct.memtype* %44, %struct.memtype** %5, align 8
  %45 = load %struct.memtype*, %struct.memtype** %5, align 8
  %46 = icmp ne %struct.memtype* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.memtype*, %struct.memtype** %5, align 8
  %49 = getelementptr inbounds %struct.memtype, %struct.memtype* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @_PAGE_CACHE_UC_MINUS, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = call i32 @spin_unlock(i32* @memtype_lock)
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %53, %38, %16
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i64 @pat_pagerange_is_ram(i32, i64) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @get_page_memtype(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.memtype* @memtype_rb_search(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
