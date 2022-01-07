; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_sfsqrt.c_sgl_fsqrt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_sfsqrt.c_sgl_fsqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SGL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@SGL_P = common dso_local global i32 0, align 4
@SGL_BIAS = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_fsqrt(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @Sgl_exponent(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @SGL_INFINITY_EXPONENT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @Sgl_isone_signaling(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = call i64 (...) @Is_invalidtrap_enabled()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %32, i32* %5, align 4
  br label %213

33:                                               ; preds = %28
  %34 = call i32 (...) @Set_invalidflag()
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @Sgl_set_quiet(i32 %35)
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @Sgl_iszero_sign(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @Sgl_isnotzero_mantissa(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %48, i32* %5, align 4
  br label %213

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @Sgl_iszero_exponentmantissa(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %57, i32* %5, align 4
  br label %213

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @Sgl_isone_sign(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = call i64 (...) @Is_invalidtrap_enabled()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %66, i32* %5, align 4
  br label %213

67:                                               ; preds = %62
  %68 = call i32 (...) @Set_invalidflag()
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @Sgl_makequietnan(i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %73, i32* %5, align 4
  br label %213

74:                                               ; preds = %58
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @Sgl_hidden(i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %80)
  br label %92

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @Sgl_clear_signexponent(i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @Sgl_normalize(i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %82, %77
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @Sgl_leftshiftby1(i32 %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @Sgl_setzero(i32 %99)
  %101 = load i32, i32* @SGL_P, align 4
  %102 = shl i32 1, %101
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %131, %98
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @Sgl_isnotzero(i32 %107)
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i1 [ false, %103 ], [ %109, %106 ]
  br i1 %111, label %112, label %136

112:                                              ; preds = %110
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @Sgl_addition(i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @Sgl_all(i32 %118)
  %120 = icmp ule i32 %117, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %112
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = shl i32 %123, 1
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @Sgl_addition(i32 %122, i32 %124, i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @Sgl_subtract(i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %121, %112
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @Sgl_rightshiftby1(i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @Sgl_leftshiftby1(i32 %134)
  br label %103

136:                                              ; preds = %110
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @Sgl_rightshiftby1(i32 %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %10, align 4
  %144 = call i64 @Sgl_isnotzero(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %198

146:                                              ; preds = %142
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i64 @Sgl_islessthan(i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @Sgl_increment(i32 %155)
  br label %157

157:                                              ; preds = %154, %149, %146
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @Sgl_lowmantissa(i32 %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @Sgl_rightshiftby1(i32 %160)
  %162 = call i32 (...) @Rounding_mode()
  switch i32 %162, label %173 [
    i32 128, label %163
    i32 129, label %166
  ]

163:                                              ; preds = %157
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @Sgl_increment(i32 %164)
  br label %173

166:                                              ; preds = %157
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @Sgl_increment(i32 %170)
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %157, %172, %163
  %174 = load i32, i32* %11, align 4
  %175 = call i64 @Sgl_isone_hiddenoverflow(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 2
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %177, %173
  %181 = call i64 (...) @Is_inexacttrap_enabled()
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @SGL_BIAS, align 4
  %187 = sub nsw i32 %185, %186
  %188 = ashr i32 %187, 1
  %189 = load i32, i32* @SGL_BIAS, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @Sgl_set_exponent(i32 %184, i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = load i32*, i32** %8, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %194, i32* %5, align 4
  br label %213

195:                                              ; preds = %180
  %196 = call i32 (...) @Set_inexactflag()
  br label %197

197:                                              ; preds = %195
  br label %201

198:                                              ; preds = %142
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @Sgl_rightshiftby1(i32 %199)
  br label %201

201:                                              ; preds = %198, %197
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @SGL_BIAS, align 4
  %205 = sub nsw i32 %203, %204
  %206 = ashr i32 %205, 1
  %207 = load i32, i32* @SGL_BIAS, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i32 @Sgl_set_exponent(i32 %202, i32 %208)
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** %8, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %201, %183, %67, %65, %54, %45, %31
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isone_signaling(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_set_quiet(i32) #1

declare dso_local i64 @Sgl_iszero_sign(i32) #1

declare dso_local i64 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Sgl_iszero_exponentmantissa(i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Sgl_makequietnan(i32) #1

declare dso_local i32 @Sgl_hidden(i32) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Sgl_clear_signexponent(i32) #1

declare dso_local i32 @Sgl_normalize(i32, i32) #1

declare dso_local i32 @Sgl_leftshiftby1(i32) #1

declare dso_local i32 @Sgl_setzero(i32) #1

declare dso_local i64 @Sgl_isnotzero(i32) #1

declare dso_local i32 @Sgl_addition(i32, i32, i32) #1

declare dso_local i32 @Sgl_all(i32) #1

declare dso_local i32 @Sgl_subtract(i32, i32, i32) #1

declare dso_local i32 @Sgl_rightshiftby1(i32) #1

declare dso_local i64 @Sgl_islessthan(i32, i32) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_lowmantissa(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i64 @Sgl_isone_hiddenoverflow(i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Sgl_set_exponent(i32, i32) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
