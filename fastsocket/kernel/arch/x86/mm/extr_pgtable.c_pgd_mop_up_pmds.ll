; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_mop_up_pmds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pgtable.c_pgd_mop_up_pmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@PREALLOCATED_PMDS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i32*)* @pgd_mop_up_pmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgd_mop_up_pmds(%struct.mm_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PREALLOCATED_PMDS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pgd_val(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @pgd_page_vaddr(i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = call i32 @native_make_pgd(i32 0)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @pgd_val(i32 %30)
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = call i32 @paravirt_release_pmd(i32 %33)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @pmd_free(%struct.mm_struct* %35, i32* %36)
  br label %38

38:                                               ; preds = %21, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %8

42:                                               ; preds = %8
  ret void
}

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i64 @pgd_page_vaddr(i32) #1

declare dso_local i32 @native_make_pgd(i32) #1

declare dso_local i32 @paravirt_release_pmd(i32) #1

declare dso_local i32 @pmd_free(%struct.mm_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
