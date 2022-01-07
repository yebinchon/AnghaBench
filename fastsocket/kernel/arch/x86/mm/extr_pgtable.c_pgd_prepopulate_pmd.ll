; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_prepopulate_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_prepopulate_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PREALLOCATED_PMDS = common dso_local global i32 0, align 4
@KERNEL_PGD_BOUNDARY = common dso_local global i32 0, align 4
@swapper_pg_dir = common dso_local global i32* null, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@PUD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*, i32**)* @pgd_prepopulate_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgd_prepopulate_pmd(%struct.mm_struct* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %57

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @pud_offset(i32* %15, i32 0)
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %49, %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %17
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @KERNEL_PGD_BOUNDARY, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %21
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** @swapper_pg_dir, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pgd_page_vaddr(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* @PTRS_PER_PMD, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i32* %31, i32* %38, i32 %42)
  br label %44

44:                                               ; preds = %30, %21
  %45 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @pud_populate(%struct.mm_struct* %45, i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %7, align 8
  %54 = load i64, i64* @PUD_SIZE, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %17

57:                                               ; preds = %13, %17
  ret void
}

declare dso_local i32* @pud_offset(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @pgd_page_vaddr(i32) #1

declare dso_local i32 @pud_populate(%struct.mm_struct*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
