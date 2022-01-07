; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_64.c_handle_vmalloc_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_64.c_handle_vmalloc_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@handle_vmalloc_fault.pte = internal global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i64, i64)* @handle_vmalloc_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vmalloc_fault(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32* @pgd_offset_k(i64 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32* @pud_offset(i32* %16, i64 %17)
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i64 @pud_none_or_clear_bad(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i32*, i32** %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32* @pmd_offset(i32* %24, i64 %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i64 @pmd_none_or_clear_bad(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %58

31:                                               ; preds = %23
  %32 = load i32*, i32** %12, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32* @pte_offset_kernel(i32* %32, i64 %33)
  store i32* %34, i32** @handle_vmalloc_fault.pte, align 8
  %35 = load i32*, i32** @handle_vmalloc_fault.pte, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @pte_none(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @pte_present(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %31
  store i32 0, i32* %5, align 4
  br label %58

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @pte_val(i32 %46)
  %48 = load i64, i64* %7, align 8
  %49 = and i64 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32*, i32** @handle_vmalloc_fault.pte, align 8
  %57 = call i32 @__do_tlb_refill(i64 %54, i64 %55, i32* %56)
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %52, %44, %30, %22
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none_or_clear_bad(i32*) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none_or_clear_bad(i32*) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @__do_tlb_refill(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
