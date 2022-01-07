; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_64.c_handle_tlbmiss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_fault_64.c_handle_tlbmiss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@TASK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i64, i64)* @handle_tlbmiss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tlbmiss(%struct.mm_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @TASK_SIZE, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %94

19:                                               ; preds = %4
  %20 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32* @pgd_offset(%struct.mm_struct* %20, i64 %21)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @pgd_none(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pgd_present(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %19
  store i32 0, i32* %5, align 4
  br label %94

33:                                               ; preds = %27
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pgd_present(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %94

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32* @pud_offset(i32* %40, i64 %41)
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @pud_none(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pud_present(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %39
  store i32 0, i32* %5, align 4
  br label %94

53:                                               ; preds = %47
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32* @pmd_offset(i32* %54, i64 %55)
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @pmd_none(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pmd_present(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61, %53
  store i32 0, i32* %5, align 4
  br label %94

67:                                               ; preds = %61
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32* @pte_offset_kernel(i32* %68, i64 %69)
  store i32* %70, i32** %13, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @pte_none(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @pte_present(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76, %67
  store i32 0, i32* %5, align 4
  br label %94

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @pte_val(i32 %82)
  %84 = load i64, i64* %7, align 8
  %85 = and i64 %83, %84
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %94

89:                                               ; preds = %81
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @__do_tlb_refill(i64 %90, i64 %91, i32* %92)
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %88, %80, %66, %52, %38, %32, %18
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @pmd_present(i32) #1

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
