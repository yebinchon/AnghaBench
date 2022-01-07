; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_cache.c___flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_cache.c___flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@split_tlb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_tlb_range(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PAGE_MASK, align 8
  %12 = and i64 %10, %11
  %13 = sub i64 %9, %12
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = add i64 %13, %16
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp uge i64 %20, 512
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (...) @flush_tlb_all()
  br label %62

24:                                               ; preds = %3
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @mtsp(i64 %25, i32 1)
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @purge_tlb_start(i64 %27)
  %29 = load i64, i64* @split_tlb, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %7, align 8
  %35 = icmp ne i64 %33, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @pdtlb(i64 %37)
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @pitlb(i64 %39)
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %5, align 8
  br label %32

45:                                               ; preds = %32
  br label %59

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %7, align 8
  %50 = icmp ne i64 %48, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @pdtlb(i64 %52)
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %47

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @purge_tlb_end(i64 %60)
  br label %62

62:                                               ; preds = %59, %22
  ret void
}

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @mtsp(i64, i32) #1

declare dso_local i32 @purge_tlb_start(i64) #1

declare dso_local i32 @pdtlb(i64) #1

declare dso_local i32 @pitlb(i64) #1

declare dso_local i32 @purge_tlb_end(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
