; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfut.c_dbl_to_sgl_fcnvfut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfut.c_dbl_to_sgl_fcnvfut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_BIAS = common dso_local global i32 0, align 4
@SGL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_sgl_fcnvfut(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @Dbl_copyfromptr(i32* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @Dbl_exponent(i32 %18)
  %20 = load i32, i32* @DBL_BIAS, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @Dbl_isone_sign(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %32

31:                                               ; preds = %26
  store i32 -1, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = call i64 (...) @Is_invalidtrap_enabled()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %36, i32* %5, align 4
  br label %100

37:                                               ; preds = %32
  %38 = call i32 (...) @Set_invalidflag()
  %39 = load i32, i32* %12, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %41, i32* %5, align 4
  br label %100

42:                                               ; preds = %4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @Dbl_isone_sign(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  %50 = call i64 (...) @Is_invalidtrap_enabled()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %53, i32* %5, align 4
  br label %100

54:                                               ; preds = %49
  %55 = call i32 (...) @Set_invalidflag()
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %58, i32* %5, align 4
  br label %100

59:                                               ; preds = %45
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @Suint_from_dbl_mantissa(i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i64 @Dbl_isinexact_to_unsigned(i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %59
  %75 = call i64 (...) @Is_inexacttrap_enabled()
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %78, i32* %5, align 4
  br label %100

79:                                               ; preds = %74
  %80 = call i32 (...) @Set_inexactflag()
  br label %81

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81, %59
  br label %98

83:                                               ; preds = %42
  %84 = load i32*, i32** %8, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = call i64 (...) @Is_inexacttrap_enabled()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %93, i32* %5, align 4
  br label %100

94:                                               ; preds = %89
  %95 = call i32 (...) @Set_inexactflag()
  br label %96

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %92, %77, %54, %52, %37, %35
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Suint_from_dbl_mantissa(i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isinexact_to_unsigned(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
