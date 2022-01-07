; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_set_memory_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_set_memory_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pat_enabled = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@_PAGE_CACHE_WC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_memory_wc(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @pat_enabled, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @set_memory_uc(i64 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @__pa(i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @__pa(i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = load i32, i32* @_PAGE_CACHE_WC, align 4
  %24 = call i32 @reserve_memtype(i64 %15, i64 %22, i32 %23, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %47

28:                                               ; preds = %13
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @_set_memory_wc(i64 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %49

36:                                               ; preds = %34
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @__pa(i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @__pa(i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = call i32 @free_memtype(i64 %38, i64 %45)
  br label %47

47:                                               ; preds = %36, %27
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %35, %9
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @set_memory_uc(i64, i32) #1

declare dso_local i32 @reserve_memtype(i64, i64, i32, i32*) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i32 @_set_memory_wc(i64, i32) #1

declare dso_local i32 @free_memtype(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
