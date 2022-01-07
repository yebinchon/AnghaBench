; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_res_phys_pud_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_res_phys_pud_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRS_PER_PUD = common dso_local global i64 0, align 8
@PUD_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_KERNPG_TABLE = common dso_local global i32 0, align 4
@PTRS_PER_PMD = common dso_local global i64 0, align 8
@__PAGE_KERNEL_LARGE_EXEC = common dso_local global i64 0, align 8
@__supported_pte_mask = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @res_phys_pud_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_phys_pud_init(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @pud_index(i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32* %17, i32** %5, align 8
  br label %18

18:                                               ; preds = %78, %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @PTRS_PER_PUD, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %83

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PUD_SIZE, align 8
  %26 = mul nsw i64 %24, %25
  %27 = add i64 %23, %26
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %83

32:                                               ; preds = %22
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i64 @get_safe_page(i32 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %84

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @__pa(i32* %43)
  %45 = load i32, i32* @_KERNPG_TABLE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @__pud(i32 %46)
  %48 = call i32 @set_pud(i32* %42, i32 %47)
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %69, %41
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @PTRS_PER_PMD, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %77

58:                                               ; preds = %53
  %59 = load i64, i64* @__PAGE_KERNEL_LARGE_EXEC, align 8
  %60 = load i64, i64* %10, align 8
  %61 = or i64 %59, %60
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* @__supported_pte_mask, align 8
  %63 = load i64, i64* %12, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @__pmd(i64 %66)
  %68 = call i32 @set_pmd(i32* %65, i32 %67)
  br label %69

69:                                               ; preds = %58
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* @PMD_SIZE, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %10, align 8
  br label %49

77:                                               ; preds = %57, %49
  br label %78

78:                                               ; preds = %77
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %18

83:                                               ; preds = %31, %18
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %38
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @pud_index(i64) #1

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @set_pud(i32*, i32) #1

declare dso_local i32 @__pud(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @__pmd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
