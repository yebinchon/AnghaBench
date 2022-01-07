; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_track.c_do_mm_track_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_track.c_do_mm_track_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_DIRTY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@LARGE_PMD_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PTRS_PER_PTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_mm_track_pmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pmd_present(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %67

15:                                               ; preds = %1
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pmd_large(i32 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = load i8*, i8** %2, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pte_val(i32 %24)
  %26 = load i32, i32* @_PAGE_DIRTY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %67

30:                                               ; preds = %21
  %31 = load i8*, i8** %2, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pte_pfn(i32 %33)
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = shl i64 %34, %35
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @LARGE_PMD_SIZE, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %44, %30
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @do_mm_track_phys(i8* %46)
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %40

51:                                               ; preds = %40
  br label %67

52:                                               ; preds = %15
  %53 = load i32*, i32** %5, align 8
  %54 = call i32* @pte_offset_kernel(i32* %53, i32 0)
  store i32* %54, i32** %4, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %62, %52
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @PTRS_PER_PTE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @do_mm_track_pte(i32* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %4, align 8
  br label %55

67:                                               ; preds = %14, %29, %51, %55
  ret void
}

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_large(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @do_mm_track_phys(i8*) #1

declare dso_local i32* @pte_offset_kernel(i32*, i32) #1

declare dso_local i32 @do_mm_track_pte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
