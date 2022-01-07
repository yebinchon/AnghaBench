; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/vdso/extr_vma.c_vdso_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/vdso/extr_vma.c_vdso_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@TASK_SIZE_MAX = common dso_local global i64 0, align 8
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ALIGN_VDSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @vdso_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vdso_addr(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @PMD_SIZE, align 8
  %10 = add i64 %8, %9
  %11 = sub i64 %10, 1
  %12 = load i64, i64* @PMD_MASK, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @TASK_SIZE_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @TASK_SIZE_MAX, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %6, align 8
  %24 = call i32 (...) @get_random_int()
  %25 = load i32, i32* @PTRS_PER_PTE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = and i32 %24, %26
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = add i64 %28, %32
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @PAGE_ALIGN(i64 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @ALIGN_VDSO, align 4
  %44 = call i64 @align_addr(i64 %42, i32* null, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @get_random_int(...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @align_addr(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
