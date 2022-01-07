; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfxt.c_dbl_to_dbl_fcnvfxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfxt.c_dbl_to_dbl_fcnvfxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_dbl_fcnvfxt(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @Dbl_copyfromptr(i32* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @Dbl_exponent(i32 %21)
  %23 = load i32, i32* @DBL_BIAS, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @Dbl_isnotzero_mantissa(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @Dbl_iszero_sign(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38, %33, %28
  %43 = load i32, i32* %12, align 4
  %44 = call i64 @Dbl_iszero_sign(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 2147483647, i32* %11, align 4
  store i32 -1, i32* %16, align 4
  br label %48

47:                                               ; preds = %42
  store i32 -2147483648, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = call i64 (...) @Is_invalidtrap_enabled()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %52, i32* %5, align 4
  br label %124

53:                                               ; preds = %48
  %54 = call i32 (...) @Set_invalidflag()
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @Dint_copytoptr(i32 %55, i32 %56, i32* %57)
  %59 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %59, i32* %5, align 4
  br label %124

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @Dint_from_dbl_mantissa(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @Dbl_isone_sign(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %64
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @Dint_setone_sign(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %64
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @Dint_copytoptr(i32 %83, i32 %84, i32* %85)
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @Dbl_isinexact_to_fix(i32 %87, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = call i64 (...) @Is_inexacttrap_enabled()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %96, i32* %5, align 4
  br label %124

97:                                               ; preds = %92
  %98 = call i32 (...) @Set_inexactflag()
  br label %99

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %82
  br label %122

101:                                              ; preds = %61
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @Dint_setzero(i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @Dint_copytoptr(i32 %105, i32 %106, i32* %107)
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %101
  %114 = call i64 (...) @Is_inexacttrap_enabled()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %117, i32* %5, align 4
  br label %124

118:                                              ; preds = %113
  %119 = call i32 (...) @Set_inexactflag()
  br label %120

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %100
  %123 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %116, %95, %53, %51
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isnotzero_mantissa(i32, i32) #1

declare dso_local i64 @Dbl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dint_from_dbl_mantissa(i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Dint_setone_sign(i32, i32) #1

declare dso_local i64 @Dbl_isinexact_to_fix(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Dint_setzero(i32, i32) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
