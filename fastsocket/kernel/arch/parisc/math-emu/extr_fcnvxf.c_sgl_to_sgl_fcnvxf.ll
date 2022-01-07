; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_sgl_to_sgl_fcnvxf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_sgl_to_sgl_fcnvxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOEXCEPTION = common dso_local global i32 0, align 4
@SGL_EXP_LENGTH = common dso_local global i32 0, align 4
@SGL_BIAS = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_sgl_fcnvxf(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @Sgl_setone_sign(i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @Int_negate(i32 %20)
  br label %34

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @Sgl_setzero_sign(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @Sgl_setzero(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %32, i32* %5, align 4
  br label %98

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %17
  store i32 16, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @Find_ms_one_bit(i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %45

44:                                               ; preds = %34
  store i32 1073741824, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SGL_EXP_LENGTH, align 4
  %49 = sub nsw i32 %48, 1
  %50 = ashr i32 %47, %49
  %51 = call i32 @Sgl_set_mantissa(i32 %46, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* @SGL_BIAS, align 8
  %54 = add nsw i64 30, %53
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = call i32 @Sgl_set_exponent(i32 %52, i64 %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @Int_isinexact_to_sgl(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %45
  %63 = call i32 (...) @Rounding_mode()
  switch i32 %63, label %84 [
    i32 128, label %64
    i32 130, label %72
    i32 129, label %80
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @Sgl_iszero_sign(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @Sgl_increment(i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  br label %84

72:                                               ; preds = %62
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @Sgl_isone_sign(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @Sgl_increment(i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  br label %84

80:                                               ; preds = %62
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @Sgl_roundnearest_from_int(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %62, %79, %71
  %85 = call i64 (...) @Is_inexacttrap_enabled()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %90, i32* %5, align 4
  br label %98

91:                                               ; preds = %84
  %92 = call i32 (...) @Set_inexactflag()
  br label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %45
  %95 = load i32, i32* %12, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %87, %27
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @Sgl_setone_sign(i32) #1

declare dso_local i32 @Int_negate(i32) #1

declare dso_local i32 @Sgl_setzero_sign(i32) #1

declare dso_local i32 @Sgl_setzero(i32) #1

declare dso_local i32 @Find_ms_one_bit(i32, i32) #1

declare dso_local i32 @Sgl_set_mantissa(i32, i32) #1

declare dso_local i32 @Sgl_set_exponent(i32, i64) #1

declare dso_local i64 @Int_isinexact_to_sgl(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_iszero_sign(i32) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Sgl_roundnearest_from_int(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
