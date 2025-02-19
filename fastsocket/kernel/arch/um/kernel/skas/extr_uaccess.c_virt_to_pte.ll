; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_virt_to_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_virt_to_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @virt_to_pte(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %10 = icmp eq %struct.mm_struct* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32* @pgd_offset(%struct.mm_struct* %13, i64 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pgd_present(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %43

21:                                               ; preds = %12
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32* @pud_offset(i32* %22, i64 %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pud_present(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32* null, i32** %3, align 8
  br label %43

30:                                               ; preds = %21
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32* @pmd_offset(i32* %31, i64 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pmd_present(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  store i32* null, i32** %3, align 8
  br label %43

39:                                               ; preds = %30
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32* @pte_offset_kernel(i32* %40, i64 %41)
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %39, %38, %29, %20, %11
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
