; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_clock_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_clock_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FREF = common dso_local global i32 0, align 4
@MCF_PLL_PFDR = common dso_local global i32 0, align 4
@BUSDIV = common dso_local global i32 0, align 4
@MAX_FSYS = common dso_local global i32 0, align 4
@MIN_FSYS = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_REF = common dso_local global i32 0, align 4
@MCF_SDRAMC_SDCR_CKE = common dso_local global i32 0, align 4
@DEFAULT_LPD = common dso_local global i32 0, align 4
@MCF_PLL_PODR = common dso_local global i32 0, align 4
@MCF_SDRAMC_REFRESH = common dso_local global i32 0, align 4
@MCF_SDRAMC_LIMP_FIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_pll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @FREF, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @MCF_PLL_PFDR, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* @BUSDIV, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sdiv i32 %18, %20
  store i32 %21, i32* %3, align 4
  br label %90

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MAX_FSYS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @MAX_FSYS, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MIN_FSYS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @MIN_FSYS, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 100, %35
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @BUSDIV, align 4
  %40 = mul nsw i32 4, %39
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %42, 100
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* @BUSDIV, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sdiv i32 %46, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %51 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %34
  %55 = load i32, i32* @MCF_SDRAMC_SDCR_CKE, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* @MCF_SDRAMC_SDCR, align 4
  br label %59

59:                                               ; preds = %54, %34
  %60 = load i32, i32* @DEFAULT_LPD, align 4
  %61 = call i32 @clock_limp(i32 %60)
  %62 = load i32, i32* @BUSDIV, align 4
  %63 = sdiv i32 %62, 3
  %64 = call i32 @MCF_PLL_PODR_CPUDIV(i32 %63)
  %65 = or i32 0, %64
  %66 = load i32, i32* @BUSDIV, align 4
  %67 = call i32 @MCF_PLL_PODR_BUSDIV(i32 %66)
  %68 = or i32 %65, %67
  store i32 %68, i32* @MCF_PLL_PODR, align 4
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* @MCF_PLL_PFDR, align 4
  %70 = call i32 (...) @clock_exit_limp()
  %71 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %72 = load i32, i32* @MCF_SDRAMC_SDCR_REF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %59
  %76 = load i32, i32* @MCF_SDRAMC_SDCR_CKE, align 4
  %77 = load i32, i32* @MCF_SDRAMC_SDCR, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* @MCF_SDRAMC_SDCR, align 4
  br label %79

79:                                               ; preds = %75, %59
  %80 = load i32, i32* @MCF_SDRAMC_REFRESH, align 4
  store i32 %80, i32* @MCF_SDRAMC_LIMP_FIX, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %85, %79
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 512
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %81

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @clock_limp(i32) #1

declare dso_local i32 @MCF_PLL_PODR_CPUDIV(i32) #1

declare dso_local i32 @MCF_PLL_PODR_BUSDIV(i32) #1

declare dso_local i32 @clock_exit_limp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
