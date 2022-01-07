; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_dbl_to_sgl_fcnvxf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_dbl_to_sgl_fcnvxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOEXCEPTION = common dso_local global i32 0, align 4
@SGL_EXP_LENGTH = common dso_local global i32 0, align 4
@SGL_BIAS = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_sgl_fcnvxf(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call i32 @Dint_copyfromptr(i32* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @Sgl_setone_sign(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @Dint_negate(i32 %23, i32 %24)
  br label %41

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @Sgl_setzero_sign(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @Sgl_setzero(i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %39, i32* %5, align 4
  br label %139

40:                                               ; preds = %31, %26
  br label %41

41:                                               ; preds = %40, %20
  store i32 16, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @Find_ms_one_bit(i32 %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load i32, i32* %13, align 4
  %56 = lshr i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 %57, 31
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 32
  store i32 %61, i32* %10, align 4
  br label %84

62:                                               ; preds = %41
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @Find_ms_one_bit(i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 32, %71
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @Variable_shift_double(i32 %69, i32 %70, i32 %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %83

78:                                               ; preds = %62
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 0, %79
  %81 = load i32, i32* %11, align 4
  %82 = ashr i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %78, %68
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @SGL_EXP_LENGTH, align 4
  %88 = sub nsw i32 %87, 1
  %89 = ashr i32 %86, %88
  %90 = call i32 @Sgl_set_mantissa(i32 %85, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* @SGL_BIAS, align 8
  %93 = add nsw i64 62, %92
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %93, %95
  %97 = call i32 @Sgl_set_exponent(i32 %91, i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i64 @Dint_isinexact_to_sgl(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %84
  %103 = call i32 (...) @Rounding_mode()
  switch i32 %103, label %125 [
    i32 128, label %104
    i32 130, label %112
    i32 129, label %120
  ]

104:                                              ; preds = %102
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @Sgl_iszero_sign(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @Sgl_increment(i32 %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %125

112:                                              ; preds = %102
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @Sgl_isone_sign(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @Sgl_increment(i32 %117)
  br label %119

119:                                              ; preds = %116, %112
  br label %125

120:                                              ; preds = %102
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @Sgl_roundnearest_from_dint(i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %102, %119, %111
  %126 = call i64 (...) @Is_inexacttrap_enabled()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = load i32*, i32** %8, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %131, i32* %5, align 4
  br label %139

132:                                              ; preds = %125
  %133 = call i32 (...) @Set_inexactflag()
  br label %134

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %84
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %8, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %135, %128, %34
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @Dint_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Sgl_setone_sign(i32) #1

declare dso_local i32 @Dint_negate(i32, i32) #1

declare dso_local i32 @Sgl_setzero_sign(i32) #1

declare dso_local i32 @Sgl_setzero(i32) #1

declare dso_local i32 @Find_ms_one_bit(i32, i32) #1

declare dso_local i32 @Variable_shift_double(i32, i32, i32, i32) #1

declare dso_local i32 @Sgl_set_mantissa(i32, i32) #1

declare dso_local i32 @Sgl_set_exponent(i32, i64) #1

declare dso_local i64 @Dint_isinexact_to_sgl(i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_iszero_sign(i32) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Sgl_roundnearest_from_dint(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
