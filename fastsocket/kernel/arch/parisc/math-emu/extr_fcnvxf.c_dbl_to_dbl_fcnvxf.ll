; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_dbl_to_dbl_fcnvxf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvxf.c_dbl_to_dbl_fcnvxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOEXCEPTION = common dso_local global i32 0, align 4
@DBL_EXP_LENGTH = common dso_local global i32 0, align 4
@DBL_BIAS = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_dbl_fcnvxf(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @Dint_copyfromptr(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @Dbl_setone_sign(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @Dint_negate(i32 %24, i32 %25)
  br label %45

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @Dbl_setzero_sign(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @Dbl_setzero(i32 %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @Dbl_copytoptr(i32 %39, i32 %40, i32* %41)
  %43 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %43, i32* %5, align 4
  br label %154

44:                                               ; preds = %32, %27
  br label %45

45:                                               ; preds = %44, %21
  store i32 16, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @Find_ms_one_bit(i32 %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %55, %56
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %63

58:                                               ; preds = %48
  %59 = load i32, i32* %12, align 4
  %60 = lshr i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 %61, 31
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 32
  store i32 %65, i32* %11, align 4
  br label %88

66:                                               ; preds = %45
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @Find_ms_one_bit(i32 %67, i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 32, %75
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @Variable_shift_double(i32 %73, i32 %74, i32 %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %87

82:                                               ; preds = %66
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 0, %83
  %85 = load i32, i32* %10, align 4
  %86 = ashr i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %82, %72
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @DBL_EXP_LENGTH, align 4
  %92 = sub nsw i32 %91, 1
  %93 = ashr i32 %90, %92
  %94 = call i32 @Dbl_set_mantissap1(i32 %89, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @DBL_EXP_LENGTH, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @Shiftdouble(i32 %95, i32 %96, i32 %98, i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = load i64, i64* @DBL_BIAS, align 8
  %103 = add nsw i64 62, %102
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %103, %105
  %107 = call i32 @Dbl_set_exponent(i32 %101, i64 %106)
  %108 = load i32, i32* %12, align 4
  %109 = call i64 @Dint_isinexact_to_dbl(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %88
  %112 = call i32 (...) @Rounding_mode()
  switch i32 %112, label %136 [
    i32 128, label %113
    i32 130, label %122
    i32 129, label %131
  ]

113:                                              ; preds = %111
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @Dbl_iszero_sign(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @Dbl_increment(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %113
  br label %136

122:                                              ; preds = %111
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @Dbl_isone_sign(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @Dbl_increment(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  br label %136

131:                                              ; preds = %111
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @Dbl_roundnearest_from_dint(i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %111, %130, %121
  %137 = call i64 (...) @Is_inexacttrap_enabled()
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @Dbl_copytoptr(i32 %140, i32 %141, i32* %142)
  %144 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %144, i32* %5, align 4
  br label %154

145:                                              ; preds = %136
  %146 = call i32 (...) @Set_inexactflag()
  br label %147

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %147, %88
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @Dbl_copytoptr(i32 %149, i32 %150, i32* %151)
  %153 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %148, %139, %35
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @Dint_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_setone_sign(i32) #1

declare dso_local i32 @Dint_negate(i32, i32) #1

declare dso_local i32 @Dbl_setzero_sign(i32) #1

declare dso_local i32 @Dbl_setzero(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Find_ms_one_bit(i32, i32) #1

declare dso_local i32 @Variable_shift_double(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_set_mantissap1(i32, i32) #1

declare dso_local i32 @Shiftdouble(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_set_exponent(i32, i64) #1

declare dso_local i64 @Dint_isinexact_to_dbl(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Dbl_roundnearest_from_dint(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
