; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfu.c_dbl_to_dbl_fcnvfu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fcnvfu.c_dbl_to_dbl_fcnvfu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_dbl_fcnvfu(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @Dbl_copyfromptr(i32* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @Dbl_exponent(i32 %21)
  %23 = load i32, i32* @DBL_BIAS, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %27 = add nsw i32 %26, 1
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @Dbl_isone_sign(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %35

34:                                               ; preds = %29
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = call i64 (...) @Is_invalidtrap_enabled()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %39, i32* %5, align 4
  br label %190

40:                                               ; preds = %35
  %41 = call i32 (...) @Set_invalidflag()
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @Duint_copytoptr(i32 %42, i32 %43, i32* %44)
  %46 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %46, i32* %5, align 4
  br label %190

47:                                               ; preds = %4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %112

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @Dbl_isone_sign(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %55 = call i64 (...) @Is_invalidtrap_enabled()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %58, i32* %5, align 4
  br label %190

59:                                               ; preds = %54
  %60 = call i32 (...) @Set_invalidflag()
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @Duint_copytoptr(i32 %61, i32 %62, i32* %63)
  %65 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %65, i32* %5, align 4
  br label %190

66:                                               ; preds = %50
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @Duint_from_dbl_mantissa(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @Dbl_isinexact_to_unsigned(i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %66
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* %15, align 8
  %82 = call i32 (...) @Rounding_mode()
  switch i32 %82, label %110 [
    i32 128, label %83
    i32 130, label %87
    i32 129, label %88
  ]

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @Duint_increment(i32 %84, i32 %85)
  br label %110

87:                                               ; preds = %80
  br label %110

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @Dbl_isone_roundbit(i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @Dbl_isone_stickybit(i32 %95, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @Duint_isone_lowp2(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100, %94
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @Duint_increment(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %80, %87, %83
  br label %111

111:                                              ; preds = %110, %66
  br label %173

112:                                              ; preds = %47
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @Duint_setzero(i32 %113, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %172

120:                                              ; preds = %112
  %121 = load i64, i64* @TRUE, align 8
  store i64 %121, i64* %15, align 8
  %122 = call i32 (...) @Rounding_mode()
  switch i32 %122, label %171 [
    i32 128, label %123
    i32 130, label %132
    i32 129, label %145
  ]

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @Dbl_iszero_sign(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @Duint_increment(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %123
  br label %171

132:                                              ; preds = %120
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @Dbl_isone_sign(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %137 = call i64 (...) @Is_invalidtrap_enabled()
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %140, i32* %5, align 4
  br label %190

141:                                              ; preds = %136
  %142 = call i32 (...) @Set_invalidflag()
  %143 = load i64, i64* @FALSE, align 8
  store i64 %143, i64* %15, align 8
  br label %144

144:                                              ; preds = %141, %132
  br label %171

145:                                              ; preds = %120
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %170

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @Dbl_isnotzero_mantissa(i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @Dbl_iszero_sign(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @Duint_increment(i32 %158, i32 %159)
  br label %169

161:                                              ; preds = %153
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %162 = call i64 (...) @Is_invalidtrap_enabled()
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %165, i32* %5, align 4
  br label %190

166:                                              ; preds = %161
  %167 = call i32 (...) @Set_invalidflag()
  %168 = load i64, i64* @FALSE, align 8
  store i64 %168, i64* %15, align 8
  br label %169

169:                                              ; preds = %166, %157
  br label %170

170:                                              ; preds = %169, %148, %145
  br label %171

171:                                              ; preds = %170, %120, %144, %131
  br label %172

172:                                              ; preds = %171, %112
  br label %173

173:                                              ; preds = %172, %111
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = call i32 @Duint_copytoptr(i32 %174, i32 %175, i32* %176)
  %178 = load i64, i64* %15, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = call i64 (...) @Is_inexacttrap_enabled()
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %184, i32* %5, align 4
  br label %190

185:                                              ; preds = %180
  %186 = call i32 (...) @Set_inexactflag()
  br label %187

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %187, %173
  %189 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %188, %183, %164, %139, %59, %57, %40, %38
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Duint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Duint_from_dbl_mantissa(i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isinexact_to_unsigned(i32, i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Duint_increment(i32, i32) #1

declare dso_local i32 @Dbl_isone_roundbit(i32, i32, i32) #1

declare dso_local i32 @Dbl_isone_stickybit(i32, i32, i32) #1

declare dso_local i32 @Duint_isone_lowp2(i32) #1

declare dso_local i32 @Duint_setzero(i32, i32) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_isnotzero_mantissa(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
