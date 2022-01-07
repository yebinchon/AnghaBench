; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_huge_pte_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_hugetlbpage.c_huge_pte_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_offset(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %8, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32* @pgd_offset(%struct.mm_struct* %9, i64 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @pgd_present(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32* @pud_offset(i32* %17, i64 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pud_present(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pud_large(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %3, align 8
  br label %38

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32* @pmd_offset(i32* %32, i64 %33)
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %31, %16
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_present(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
