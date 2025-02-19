; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvuf.c_dbl_to_sgl_fcnvuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvuf.c_dbl_to_sgl_fcnvuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOEXCEPTION = common dso_local global i32 0, align 4
@SGL_EXP_LENGTH = common dso_local global i32 0, align 4
@SGL_BIAS = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_sgl_fcnvuf(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @Duint_copyfromptr(i32* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @Sgl_setzero(i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %28, i32* %5, align 4
  br label %102

29:                                               ; preds = %20, %4
  store i32 16, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @Find_ms_one_bit(i32 %33, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = shl i32 %36, %38
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 32
  store i32 %41, i32* %10, align 4
  br label %60

42:                                               ; preds = %29
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @Find_ms_one_bit(i32 %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 31, %51
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @Variable_shift_double(i32 %49, i32 %50, i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %57, %56
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %48, %42
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SGL_EXP_LENGTH, align 4
  %64 = lshr i32 %62, %63
  %65 = call i32 @Sgl_set_mantissa(i32 %61, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i64, i64* @SGL_BIAS, align 8
  %68 = add nsw i64 62, %67
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %68, %70
  %72 = call i32 @Sgl_set_exponent(i32 %66, i64 %71)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i64 @Duint_isinexact_to_sgl(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %60
  %78 = call i32 (...) @Rounding_mode()
  switch i32 %78, label %88 [
    i32 128, label %79
    i32 130, label %82
    i32 129, label %83
  ]

79:                                               ; preds = %77
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @Sgl_increment(i32 %80)
  br label %88

82:                                               ; preds = %77
  br label %88

83:                                               ; preds = %77
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @Sgl_roundnearest_from_duint(i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %77, %83, %82, %79
  %89 = call i64 (...) @Is_inexacttrap_enabled()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %94, i32* %5, align 4
  br label %102

95:                                               ; preds = %88
  %96 = call i32 (...) @Set_inexactflag()
  br label %97

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97, %60
  %99 = load i32, i32* %13, align 4
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %91, %23
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @Duint_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Sgl_setzero(i32) #1

declare dso_local i32 @Find_ms_one_bit(i32, i32) #1

declare dso_local i32 @Variable_shift_double(i32, i32, i32, i32) #1

declare dso_local i32 @Sgl_set_mantissa(i32, i32) #1

declare dso_local i32 @Sgl_set_exponent(i32, i64) #1

declare dso_local i64 @Duint_isinexact_to_sgl(i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_roundnearest_from_duint(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
