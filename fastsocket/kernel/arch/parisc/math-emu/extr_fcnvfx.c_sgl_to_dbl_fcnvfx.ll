; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfx.c_sgl_to_dbl_fcnvfx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfx.c_sgl_to_dbl_fcnvfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SGL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_dbl_fcnvfx(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @Sgl_exponent(i32 %19)
  %21 = load i32, i32* @SGL_BIAS, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @Sgl_isnotzero_mantissa(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @Sgl_iszero_sign(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35, %31, %26
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @Sgl_iszero_sign(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 2147483647, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  br label %45

44:                                               ; preds = %39
  store i32 -2147483648, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = call i64 (...) @Is_invalidtrap_enabled()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %49, i32* %5, align 4
  br label %211

50:                                               ; preds = %45
  %51 = call i32 (...) @Set_invalidflag()
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @Dint_copytoptr(i32 %52, i32 %53, i32* %54)
  %56 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %56, i32* %5, align 4
  br label %211

57:                                               ; preds = %35
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @Dint_set_minint(i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @Dint_copytoptr(i32 %61, i32 %62, i32* %63)
  %65 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %65, i32* %5, align 4
  br label %211

66:                                               ; preds = %4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %142

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @Dint_from_sgl_mantissa(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @Sgl_isone_sign(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @Dint_setone_sign(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %69
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @Sgl_isinexact_to_fix(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %141

90:                                               ; preds = %85
  %91 = load i64, i64* @TRUE, align 8
  store i64 %91, i64* %15, align 8
  %92 = call i32 (...) @Rounding_mode()
  switch i32 %92, label %140 [
    i32 128, label %93
    i32 130, label %102
    i32 129, label %111
  ]

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @Sgl_iszero_sign(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @Dint_increment(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %140

102:                                              ; preds = %90
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @Sgl_isone_sign(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @Dint_decrement(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  br label %140

111:                                              ; preds = %90
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @Sgl_isone_roundbit(i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %111
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @Sgl_isone_stickybit(i32 %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @Dint_isone_lowp2(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %121, %116
  %126 = load i32, i32* %12, align 4
  %127 = call i64 @Sgl_iszero_sign(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @Dint_increment(i32 %130, i32 %131)
  br label %137

133:                                              ; preds = %125
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @Dint_decrement(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %111
  br label %140

140:                                              ; preds = %139, %90, %110, %101
  br label %141

141:                                              ; preds = %140, %85
  br label %194

142:                                              ; preds = %66
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @Dint_setzero(i32 %143, i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %193

149:                                              ; preds = %142
  %150 = load i64, i64* @TRUE, align 8
  store i64 %150, i64* %15, align 8
  %151 = call i32 (...) @Rounding_mode()
  switch i32 %151, label %192 [
    i32 128, label %152
    i32 130, label %161
    i32 129, label %170
  ]

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = call i64 @Sgl_iszero_sign(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @Dint_increment(i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  br label %192

161:                                              ; preds = %149
  %162 = load i32, i32* %12, align 4
  %163 = call i64 @Sgl_isone_sign(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @Dint_decrement(i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %161
  br label %192

170:                                              ; preds = %149
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %191

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = call i64 @Sgl_isnotzero_mantissa(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* %12, align 4
  %179 = call i64 @Sgl_iszero_sign(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @Dint_increment(i32 %182, i32 %183)
  br label %189

185:                                              ; preds = %177
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @Dint_decrement(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %181
  br label %190

190:                                              ; preds = %189, %173
  br label %191

191:                                              ; preds = %190, %170
  br label %192

192:                                              ; preds = %191, %149, %169, %160
  br label %193

193:                                              ; preds = %192, %142
  br label %194

194:                                              ; preds = %193, %141
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32*, i32** %8, align 8
  %198 = call i32 @Dint_copytoptr(i32 %195, i32 %196, i32* %197)
  %199 = load i64, i64* %15, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %194
  %202 = call i64 (...) @Is_inexacttrap_enabled()
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %205, i32* %5, align 4
  br label %211

206:                                              ; preds = %201
  %207 = call i32 (...) @Set_inexactflag()
  br label %208

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %208, %194
  %210 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %209, %204, %57, %50, %48
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Sgl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dint_set_minint(i32, i32) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dint_from_sgl_mantissa(i32, i32, i32, i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Dint_setone_sign(i32, i32) #1

declare dso_local i64 @Sgl_isinexact_to_fix(i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dint_increment(i32, i32) #1

declare dso_local i32 @Dint_decrement(i32, i32) #1

declare dso_local i32 @Sgl_isone_roundbit(i32, i32) #1

declare dso_local i32 @Sgl_isone_stickybit(i32, i32) #1

declare dso_local i32 @Dint_isone_lowp2(i32) #1

declare dso_local i32 @Dint_setzero(i32, i32) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
