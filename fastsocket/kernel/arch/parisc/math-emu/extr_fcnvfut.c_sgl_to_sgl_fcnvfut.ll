; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfut.c_sgl_to_sgl_fcnvfut.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfut.c_sgl_to_sgl_fcnvfut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SGL_BIAS = common dso_local global i32 0, align 4
@SGL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_sgl_fcnvfut(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @Sgl_exponent(i32 %15)
  %17 = load i32, i32* @SGL_BIAS, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @Sgl_isone_sign(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %29

28:                                               ; preds = %23
  store i32 -1, i32* %11, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = call i64 (...) @Is_invalidtrap_enabled()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %29
  %35 = call i32 (...) @Set_invalidflag()
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %38, i32* %5, align 4
  br label %94

39:                                               ; preds = %4
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @Sgl_isone_sign(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  %47 = call i64 (...) @Is_invalidtrap_enabled()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %50, i32* %5, align 4
  br label %94

51:                                               ; preds = %46
  %52 = call i32 (...) @Set_invalidflag()
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %55, i32* %5, align 4
  br label %94

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @Suint_from_sgl_mantissa(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @Sgl_isinexact_to_unsigned(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = call i64 (...) @Is_inexacttrap_enabled()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %73, i32* %5, align 4
  br label %94

74:                                               ; preds = %69
  %75 = call i32 (...) @Set_inexactflag()
  br label %76

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76, %56
  br label %92

78:                                               ; preds = %39
  %79 = load i32*, i32** %8, align 8
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = call i64 (...) @Is_inexacttrap_enabled()
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %87, i32* %5, align 4
  br label %94

88:                                               ; preds = %83
  %89 = call i32 (...) @Set_inexactflag()
  br label %90

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90, %78
  br label %92

92:                                               ; preds = %91, %77
  %93 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %86, %72, %51, %49, %34, %32
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Suint_from_sgl_mantissa(i32, i32, i32) #1

declare dso_local i64 @Sgl_isinexact_to_unsigned(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
