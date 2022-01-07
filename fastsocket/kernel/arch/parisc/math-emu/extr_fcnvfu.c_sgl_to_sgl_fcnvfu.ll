; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfu.c_sgl_to_sgl_fcnvfu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfu.c_sgl_to_sgl_fcnvfu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SGL_BIAS = common dso_local global i32 0, align 4
@SGL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_sgl_fcnvfu(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @Sgl_exponent(i32 %17)
  %19 = load i32, i32* @SGL_BIAS, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @Sgl_isone_sign(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %31

30:                                               ; preds = %25
  store i32 -1, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = call i64 (...) @Is_invalidtrap_enabled()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %35, i32* %5, align 4
  br label %165

36:                                               ; preds = %31
  %37 = call i32 (...) @Set_invalidflag()
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %40, i32* %5, align 4
  br label %165

41:                                               ; preds = %4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %96

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @Sgl_isone_sign(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  %49 = call i64 (...) @Is_invalidtrap_enabled()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %52, i32* %5, align 4
  br label %165

53:                                               ; preds = %48
  %54 = call i32 (...) @Set_invalidflag()
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %57, i32* %5, align 4
  br label %165

58:                                               ; preds = %44
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @Suint_from_sgl_mantissa(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @Sgl_isinexact_to_unsigned(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %58
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %13, align 8
  %71 = call i32 (...) @Rounding_mode()
  switch i32 %71, label %94 [
    i32 128, label %72
    i32 130, label %75
    i32 129, label %76
  ]

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %94

75:                                               ; preds = %69
  br label %94

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @Sgl_isone_roundbit(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @Sgl_isone_stickybit(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %86, %76
  br label %94

94:                                               ; preds = %69, %93, %75, %72
  br label %95

95:                                               ; preds = %94, %58
  br label %150

96:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %149

100:                                              ; preds = %96
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %13, align 8
  %102 = call i32 (...) @Rounding_mode()
  switch i32 %102, label %148 [
    i32 128, label %103
    i32 130, label %111
    i32 129, label %124
  ]

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @Sgl_iszero_sign(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %148

111:                                              ; preds = %100
  %112 = load i32, i32* %10, align 4
  %113 = call i64 @Sgl_isone_sign(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  %116 = call i64 (...) @Is_invalidtrap_enabled()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %119, i32* %5, align 4
  br label %165

120:                                              ; preds = %115
  %121 = call i32 (...) @Set_invalidflag()
  %122 = load i64, i64* @FALSE, align 8
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %120, %111
  br label %148

124:                                              ; preds = %100
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %147

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @Sgl_isnotzero_mantissa(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @Sgl_isone_sign(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  store i32 0, i32* %11, align 4
  %136 = call i64 (...) @Is_invalidtrap_enabled()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %139, i32* %5, align 4
  br label %165

140:                                              ; preds = %135
  %141 = call i32 (...) @Set_invalidflag()
  %142 = load i64, i64* @FALSE, align 8
  store i64 %142, i64* %13, align 8
  br label %146

143:                                              ; preds = %131
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %127, %124
  br label %148

148:                                              ; preds = %100, %147, %123, %110
  br label %149

149:                                              ; preds = %148, %96
  br label %150

150:                                              ; preds = %149, %95
  %151 = load i32, i32* %11, align 4
  %152 = load i32*, i32** %8, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i64, i64* %13, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = call i64 (...) @Is_inexacttrap_enabled()
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %159, i32* %5, align 4
  br label %165

160:                                              ; preds = %155
  %161 = call i32 (...) @Set_inexactflag()
  br label %162

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162, %150
  %164 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %163, %158, %138, %118, %53, %51, %36, %34
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Suint_from_sgl_mantissa(i32, i32, i32) #1

declare dso_local i64 @Sgl_isinexact_to_unsigned(i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_isone_roundbit(i32, i32) #1

declare dso_local i32 @Sgl_isone_stickybit(i32, i32) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

declare dso_local i32 @Sgl_iszero_sign(i32) #1

declare dso_local i32 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
