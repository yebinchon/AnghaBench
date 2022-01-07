; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_pci-dma.c_unmap_uncached_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_pci-dma.c_unmap_uncached_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGDIR_MASK = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64)* @unmap_uncached_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmap_uncached_pmd(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pgd_none(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %65

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pgd_bad(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pgd_ERROR(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @pgd_clear(i32* %25)
  br label %65

27:                                               ; preds = %16
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @pmd_offset(i32* %28, i64 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i64, i64* @PGDIR_MASK, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %5, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @PGDIR_SIZE, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i64, i64* @PGDIR_SIZE, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %27
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %5, align 8
  %49 = sub i64 %47, %48
  %50 = call i32 @unmap_uncached_pte(i32* %45, i64 %46, i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @PMD_SIZE, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* @PMD_MASK, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* @PMD_SIZE, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %44
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %44, label %65

65:                                               ; preds = %15, %21, %61
  ret void
}

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @pgd_bad(i32) #1

declare dso_local i32 @pgd_ERROR(i32) #1

declare dso_local i32 @pgd_clear(i32*) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @unmap_uncached_pte(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
