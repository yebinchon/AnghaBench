; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfut.c_dbl_to_dbl_fcnvfut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfut.c_dbl_to_dbl_fcnvfut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_dbl_fcnvfut(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @Dbl_copyfromptr(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @Dbl_exponent(i32 %19)
  %21 = load i32, i32* @DBL_BIAS, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @Dbl_isone_sign(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %33

32:                                               ; preds = %27
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = call i64 (...) @Is_invalidtrap_enabled()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %37, i32* %5, align 4
  br label %114

38:                                               ; preds = %33
  %39 = call i32 (...) @Set_invalidflag()
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @Duint_copytoptr(i32 %40, i32 %41, i32* %42)
  %44 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %44, i32* %5, align 4
  br label %114

45:                                               ; preds = %4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @Dbl_isone_sign(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %53 = call i64 (...) @Is_invalidtrap_enabled()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %56, i32* %5, align 4
  br label %114

57:                                               ; preds = %52
  %58 = call i32 (...) @Set_invalidflag()
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @Duint_copytoptr(i32 %59, i32 %60, i32* %61)
  %63 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %63, i32* %5, align 4
  br label %114

64:                                               ; preds = %48
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @Duint_from_dbl_mantissa(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @Duint_copytoptr(i32 %73, i32 %74, i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @Dbl_isinexact_to_unsigned(i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %64
  %83 = call i64 (...) @Is_inexacttrap_enabled()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %86, i32* %5, align 4
  br label %114

87:                                               ; preds = %82
  %88 = call i32 (...) @Set_inexactflag()
  br label %89

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %64
  br label %112

91:                                               ; preds = %45
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @Duint_setzero(i32 %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @Duint_copytoptr(i32 %95, i32 %96, i32* %97)
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %91
  %104 = call i64 (...) @Is_inexacttrap_enabled()
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %107, i32* %5, align 4
  br label %114

108:                                              ; preds = %103
  %109 = call i32 (...) @Set_inexactflag()
  br label %110

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %90
  %113 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %106, %85, %57, %55, %38, %36
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Duint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Duint_from_dbl_mantissa(i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isinexact_to_unsigned(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Duint_setzero(i32, i32) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
