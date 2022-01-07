; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_cpa_flush_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c_cpa_flush_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__cpa_flush_range = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @cpa_flush_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpa_flush_range(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call i32 (...) @irqs_disabled()
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @PAGE_ALIGN(i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load i32, i32* @__cpa_flush_range, align 4
  %20 = call i32 @on_each_cpu(i32 %19, i32* null, i32 1)
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %54

24:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %48, %24
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = call i32* @lookup_address(i64 %31, i32* %8)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pte_val(i32 %37)
  %39 = load i32, i32* @_PAGE_PRESENT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = call i32 @clflush_cache_range(i8* %44, i64 %45)
  br label %47

47:                                               ; preds = %42, %35, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %26

54:                                               ; preds = %23, %26
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32* @lookup_address(i64, i32*) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @clflush_cache_range(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
