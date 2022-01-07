; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/math-emu/extr_math_32.c_record_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/math-emu/extr_math_32.c_record_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSR_TEM_SHIFT = common dso_local global i64 0, align 8
@FSR_TEM_MASK = common dso_local global i64 0, align 8
@FP_EX_INVALID = common dso_local global i32 0, align 4
@FP_EX_OVERFLOW = common dso_local global i32 0, align 4
@FP_EX_UNDERFLOW = common dso_local global i32 0, align 4
@FP_EX_DIVZERO = common dso_local global i32 0, align 4
@FP_EX_INEXACT = common dso_local global i32 0, align 4
@FSR_CEXC_MASK = common dso_local global i64 0, align 8
@FSR_CEXC_SHIFT = common dso_local global i64 0, align 8
@FSR_AEXC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @record_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_exception(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64*, i64** %3, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @FSR_TEM_SHIFT, align 8
  %13 = shl i64 %11, %12
  %14 = and i64 %9, %13
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @FSR_TEM_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* @FSR_TEM_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @FP_EX_INVALID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @FP_EX_INVALID, align 4
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @FP_EX_OVERFLOW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @FP_EX_OVERFLOW, align 4
  store i32 %47, i32* %4, align 4
  br label %72

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FP_EX_UNDERFLOW, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @FP_EX_UNDERFLOW, align 4
  store i32 %54, i32* %4, align 4
  br label %71

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @FP_EX_DIVZERO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @FP_EX_DIVZERO, align 4
  store i32 %61, i32* %4, align 4
  br label %70

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @FP_EX_INEXACT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @FP_EX_INEXACT, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %19
  br label %75

75:                                               ; preds = %74, %2
  %76 = load i64, i64* @FSR_CEXC_MASK, align 8
  %77 = xor i64 %76, -1
  %78 = load i64, i64* %5, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %5, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @FSR_CEXC_SHIFT, align 8
  %83 = shl i64 %81, %82
  %84 = load i64, i64* %5, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* @FSR_AEXC_SHIFT, align 8
  %92 = shl i64 %90, %91
  %93 = load i64, i64* %5, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %88, %75
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i64, i64* %5, align 8
  %100 = or i64 %99, 16384
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i64, i64* %5, align 8
  %103 = load i64*, i64** %3, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 0, i32 1
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
