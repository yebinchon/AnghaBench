; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_utils_64.c_htab_convert_pte_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_utils_64.c_htab_convert_pte_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_EXEC = common dso_local global i64 0, align 8
@HPTE_R_N = common dso_local global i64 0, align 8
@_PAGE_USER = common dso_local global i64 0, align 8
@_PAGE_RW = common dso_local global i64 0, align 8
@_PAGE_DIRTY = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @htab_convert_pte_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @htab_convert_pte_flags(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 506
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @_PAGE_EXEC, align 8
  %8 = and i64 %6, %7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64, i64* @HPTE_R_N, align 8
  %12 = load i64, i64* %3, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %3, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @_PAGE_USER, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @_PAGE_RW, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @_PAGE_DIRTY, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %19
  %30 = load i64, i64* %3, align 8
  %31 = or i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %29, %24, %14
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @HPTE_R_C, align 8
  %35 = or i64 %33, %34
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
