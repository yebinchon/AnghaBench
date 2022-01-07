; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_page_table_set_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_machine_kexec_32.c_machine_kexec_page_table_set_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_TABLE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64, i64)* @machine_kexec_page_table_set_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine_kexec_page_table_set_one(i32* %0, i32* %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @pgd_index(i64 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32* @pud_offset(i32* %17, i64 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32* @pmd_offset(i32* %20, i64 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pmd_val(i32 %24)
  %26 = load i32, i32* @_PAGE_PRESENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @__pa(i32* %31)
  %33 = load i32, i32* @_PAGE_TABLE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @__pmd(i32 %34)
  %36 = call i32 @set_pmd(i32* %30, i32 %35)
  br label %37

37:                                               ; preds = %29, %5
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32* @pte_offset_kernel(i32* %38, i64 %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = lshr i64 %42, %43
  %45 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %46 = call i32 @pfn_pte(i64 %44, i32 %45)
  %47 = call i32 @set_pte(i32* %41, i32 %46)
  ret void
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
