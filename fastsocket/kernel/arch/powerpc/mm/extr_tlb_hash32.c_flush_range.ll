; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_tlb_hash32.c_flush_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_tlb_hash32.c_flush_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@Hash = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@PGDIR_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i64)* @flush_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_range(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* @Hash, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @_tlbia()
  br label %82

19:                                               ; preds = %3
  %20 = load i64, i64* @PAGE_MASK, align 8
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %82

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, 1
  %30 = load i64, i64* @PAGE_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = or i64 %29, %31
  store i64 %32, i64* %6, align 8
  %33 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @pgd_offset(%struct.mm_struct* %33, i64 %34)
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @pud_offset(i32 %35, i64 %36)
  %38 = load i64, i64* %5, align 8
  %39 = call i32* @pmd_offset(i32 %37, i64 %38)
  store i32* %39, i32** %7, align 8
  br label %40

40:                                               ; preds = %77, %27
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @PGDIR_SIZE, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* @PGDIR_MASK, align 8
  %45 = and i64 %43, %44
  %46 = sub i64 %45, 1
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %40
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pmd_none(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %5, align 8
  %60 = sub i64 %58, %59
  %61 = load i64, i64* @PAGE_SHIFT, align 8
  %62 = lshr i64 %60, %61
  %63 = add i64 %62, 1
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i64, i64* %5, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pmd_val(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @flush_hash_pages(i32 %65, i64 %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %57, %52
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %82

77:                                               ; preds = %72
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %7, align 8
  br label %40

82:                                               ; preds = %17, %26, %76
  ret void
}

declare dso_local i32 @_tlbia(...) #1

declare dso_local i32* @pmd_offset(i32, i64) #1

declare dso_local i32 @pud_offset(i32, i64) #1

declare dso_local i32 @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @flush_hash_pages(i32, i64, i32, i32) #1

declare dso_local i32 @pmd_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
