; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_pgtable.c_pgd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/score/mm/extr_pgtable.c_pgd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USER_PTRS_PER_PGD = common dso_local global i32 0, align 4
@invalid_pte_table = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgd_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i64*
  store i64* %6, i64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @USER_PTRS_PER_PGD, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %63

11:                                               ; preds = %7
  %12 = load i64, i64* @invalid_pte_table, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  store i64 %12, i64* %17, align 8
  %18 = load i64, i64* @invalid_pte_table, align 8
  %19 = load i64*, i64** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  store i64 %18, i64* %23, align 8
  %24 = load i64, i64* @invalid_pte_table, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  store i64 %24, i64* %29, align 8
  %30 = load i64, i64* @invalid_pte_table, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %30, i64* %35, align 8
  %36 = load i64, i64* @invalid_pte_table, align 8
  %37 = load i64*, i64** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  store i64 %36, i64* %41, align 8
  %42 = load i64, i64* @invalid_pte_table, align 8
  %43 = load i64*, i64** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 %42, i64* %47, align 8
  %48 = load i64, i64* @invalid_pte_table, align 8
  %49 = load i64*, i64** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64 %48, i64* %53, align 8
  %54 = load i64, i64* @invalid_pte_table, align 8
  %55 = load i64*, i64** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 7
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %11
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %4, align 4
  br label %7

63:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
