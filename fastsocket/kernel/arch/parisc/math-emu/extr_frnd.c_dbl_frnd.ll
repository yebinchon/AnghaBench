; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_frnd.c_dbl_frnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_frnd.c_dbl_frnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@DBL_BIAS = common dso_local global i32 0, align 4
@DBL_P = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_frnd(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @Dbl_copyfromptr(i32* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @Dbl_exponent(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @Dbl_isone_signaling(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = call i64 (...) @Is_invalidtrap_enabled()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %33, i32* %5, align 4
  br label %209

34:                                               ; preds = %29
  %35 = call i32 (...) @Set_invalidflag()
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @Dbl_set_quiet(i32 %36)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @Dbl_copytoptr(i32 %39, i32 %40, i32* %41)
  %43 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %43, i32* %5, align 4
  br label %209

44:                                               ; preds = %4
  %45 = load i32, i32* @DBL_BIAS, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @DBL_P, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @Dbl_copytoptr(i32 %52, i32 %53, i32* %54)
  %56 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %56, i32* %5, align 4
  br label %209

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %146

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @Dbl_clear_exponent_set_hidden(i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @DBL_P, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @Dbl_rightshift(i32 %65, i32 %66, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @Dbl_isinexact_to_fix(i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %121

77:                                               ; preds = %60
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %15, align 8
  %79 = call i32 (...) @Rounding_mode()
  switch i32 %79, label %120 [
    i32 128, label %80
    i32 130, label %89
    i32 129, label %98
  ]

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @Dbl_iszero_sign(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @Dbl_increment(i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  br label %120

89:                                               ; preds = %77
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @Dbl_isone_sign(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @Dbl_increment(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %89
  br label %120

98:                                               ; preds = %77
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @Dbl_isone_roundbit(i32 %99, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @Dbl_isone_stickybit(i32 %105, i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @Dbl_isone_lowmantissap2(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110, %104
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @Dbl_increment(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %98
  br label %120

120:                                              ; preds = %119, %77, %97, %88
  br label %121

121:                                              ; preds = %120, %60
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @DBL_P, align 4
  %125 = sub nsw i32 %124, 1
  %126 = load i32, i32* %14, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i32 @Dbl_leftshift(i32 %122, i32 %123, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @Dbl_isone_hiddenoverflow(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %121
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @DBL_BIAS, align 4
  %136 = add nsw i32 %135, 1
  %137 = add nsw i32 %134, %136
  %138 = call i32 @Dbl_set_exponent(i32 %133, i32 %137)
  br label %145

139:                                              ; preds = %121
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @DBL_BIAS, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i32 @Dbl_set_exponent(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %139, %132
  br label %192

146:                                              ; preds = %57
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @Dbl_setzero_exponentmantissa(i32 %148, i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %191

155:                                              ; preds = %146
  %156 = load i64, i64* @TRUE, align 8
  store i64 %156, i64* %15, align 8
  %157 = call i32 (...) @Rounding_mode()
  switch i32 %157, label %190 [
    i32 128, label %158
    i32 130, label %167
    i32 129, label %176
  ]

158:                                              ; preds = %155
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @Dbl_iszero_sign(i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @DBL_BIAS, align 4
  %165 = call i32 @Dbl_set_exponent(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %158
  br label %190

167:                                              ; preds = %155
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @Dbl_isone_sign(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @DBL_BIAS, align 4
  %174 = call i32 @Dbl_set_exponent(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %167
  br label %190

176:                                              ; preds = %155
  %177 = load i32, i32* %14, align 4
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %189

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @Dbl_isnotzero_mantissa(i32 %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @DBL_BIAS, align 4
  %187 = call i32 @Dbl_set_exponent(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %179
  br label %189

189:                                              ; preds = %188, %176
  br label %190

190:                                              ; preds = %189, %155, %175, %166
  br label %191

191:                                              ; preds = %190, %146
  br label %192

192:                                              ; preds = %191, %145
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @Dbl_copytoptr(i32 %193, i32 %194, i32* %195)
  %197 = load i64, i64* %15, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %192
  %200 = call i64 (...) @Is_inexacttrap_enabled()
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %203, i32* %5, align 4
  br label %209

204:                                              ; preds = %199
  %205 = call i32 (...) @Set_inexactflag()
  br label %206

206:                                              ; preds = %204
  br label %207

207:                                              ; preds = %206, %192
  %208 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %207, %202, %51, %38, %32
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isone_signaling(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_set_quiet(i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dbl_clear_exponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_rightshift(i32, i32, i32) #1

declare dso_local i64 @Dbl_isinexact_to_fix(i32, i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Dbl_isone_roundbit(i32, i32, i32) #1

declare dso_local i32 @Dbl_isone_stickybit(i32, i32, i32) #1

declare dso_local i32 @Dbl_isone_lowmantissap2(i32) #1

declare dso_local i32 @Dbl_leftshift(i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Dbl_set_exponent(i32, i32) #1

declare dso_local i32 @Dbl_setzero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

declare dso_local i32 @Dbl_isnotzero_mantissa(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
