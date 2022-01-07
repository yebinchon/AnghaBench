; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PAGETABLE_LEVELS = common dso_local global i32 0, align 4
@SHARED_KERNEL_PMD = common dso_local global i64 0, align 8
@KERNEL_PGD_BOUNDARY = common dso_local global i32 0, align 4
@swapper_pg_dir = common dso_local global i32* null, align 8
@KERNEL_PGD_PTRS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*)* @pgd_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgd_ctor(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @PAGETABLE_LEVELS, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @PAGETABLE_LEVELS, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, i64* @SHARED_KERNEL_PMD, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @PAGETABLE_LEVELS, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %38

16:                                               ; preds = %13, %10, %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @KERNEL_PGD_BOUNDARY, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32*, i32** @swapper_pg_dir, align 8
  %22 = load i32, i32* @KERNEL_PGD_BOUNDARY, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* @KERNEL_PGD_PTRS, align 4
  %26 = call i32 @clone_pgd_range(i32* %20, i32* %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @__pa(i32* %27)
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32*, i32** @swapper_pg_dir, align 8
  %32 = call i32 @__pa(i32* %31)
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32, i32* @KERNEL_PGD_BOUNDARY, align 4
  %36 = load i32, i32* @KERNEL_PGD_PTRS, align 4
  %37 = call i32 @paravirt_alloc_pmd_clone(i32 %30, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %16, %13
  %39 = load i64, i64* @SHARED_KERNEL_PMD, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %44 = call i32 @pgd_set_mm(i32* %42, %struct.mm_struct* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @pgd_list_add(i32* %45)
  br label %47

47:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @clone_pgd_range(i32*, i32*, i32) #1

declare dso_local i32 @paravirt_alloc_pmd_clone(i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @pgd_set_mm(i32*, %struct.mm_struct*) #1

declare dso_local i32 @pgd_list_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
