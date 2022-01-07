; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_sfcmp.c_sgl_fcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_sfcmp.c_sgl_fcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SGL_INFINITY_EXPONENT = common dso_local global i64 0, align 8
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_fcmp(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @Sgl_exponent(i32 %17)
  %19 = load i64, i64* @SGL_INFINITY_EXPONENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = call i64 @Sgl_exponent(i32 %22)
  %24 = load i64, i64* @SGL_INFINITY_EXPONENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %100

26:                                               ; preds = %21, %4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @Sgl_exponent(i32 %27)
  %29 = load i64, i64* @SGL_INFINITY_EXPONENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @Sgl_isnotzero_mantissa(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @Exception(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @Sgl_isone_signaling(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %39, %31, %26
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @Sgl_exponent(i32 %44)
  %46 = load i64, i64* @SGL_INFINITY_EXPONENT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @Sgl_isnotzero_mantissa(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @Exception(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @Sgl_isone_signaling(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %56, %52, %39, %35
  %61 = call i64 (...) @Is_invalidtrap_enabled()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @Unordered(i32 %64)
  %66 = call i32 @Set_status_cbit(i32 %65)
  %67 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %67, i32* %5, align 4
  br label %181

68:                                               ; preds = %60
  %69 = call i32 (...) @Set_invalidflag()
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @Unordered(i32 %71)
  %73 = call i32 @Set_status_cbit(i32 %72)
  %74 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %74, i32* %5, align 4
  br label %181

75:                                               ; preds = %56, %48, %43
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @Sgl_exponent(i32 %76)
  %78 = load i64, i64* @SGL_INFINITY_EXPONENT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @Sgl_isnotzero_mantissa(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @Sgl_exponent(i32 %85)
  %87 = load i64, i64* @SGL_INFINITY_EXPONENT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @Sgl_isnotzero_mantissa(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89, %80
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @Unordered(i32 %94)
  %96 = call i32 @Set_status_cbit(i32 %95)
  %97 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %97, i32* %5, align 4
  br label %181

98:                                               ; preds = %89, %84
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %21
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @Sgl_xortointp1(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @Sgl_iszero_exponentmantissa(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = call i64 @Sgl_iszero_exponentmantissa(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @Equal(i32 %116)
  %118 = call i32 @Set_status_cbit(i32 %117)
  br label %132

119:                                              ; preds = %111, %107
  %120 = load i32, i32* %10, align 4
  %121 = call i64 @Sgl_isone_sign(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @Lessthan(i32 %124)
  %126 = call i32 @Set_status_cbit(i32 %125)
  br label %131

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @Greaterthan(i32 %128)
  %130 = call i32 @Set_status_cbit(i32 %129)
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %115
  br label %179

133:                                              ; preds = %100
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @Sgl_all(i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = call i64 @Sgl_all(i32 %136)
  %138 = icmp eq i64 %135, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @Equal(i32 %140)
  %142 = call i32 @Set_status_cbit(i32 %141)
  br label %178

143:                                              ; preds = %133
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @Sgl_iszero_sign(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @Sgl_all(i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = call i64 @Sgl_all(i32 %150)
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @Lessthan(i32 %154)
  %156 = call i32 @Set_status_cbit(i32 %155)
  br label %161

157:                                              ; preds = %147
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @Greaterthan(i32 %158)
  %160 = call i32 @Set_status_cbit(i32 %159)
  br label %161

161:                                              ; preds = %157, %153
  br label %177

162:                                              ; preds = %143
  %163 = load i32, i32* %10, align 4
  %164 = call i64 @Sgl_all(i32 %163)
  %165 = load i32, i32* %11, align 4
  %166 = call i64 @Sgl_all(i32 %165)
  %167 = icmp sgt i64 %164, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @Lessthan(i32 %169)
  %171 = call i32 @Set_status_cbit(i32 %170)
  br label %176

172:                                              ; preds = %162
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @Greaterthan(i32 %173)
  %175 = call i32 @Set_status_cbit(i32 %174)
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %161
  br label %178

178:                                              ; preds = %177, %139
  br label %179

179:                                              ; preds = %178, %132
  %180 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %179, %93, %70, %63
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i64 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Exception(i32) #1

declare dso_local i64 @Sgl_isone_signaling(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_status_cbit(i32) #1

declare dso_local i32 @Unordered(i32) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_xortointp1(i32, i32, i32) #1

declare dso_local i64 @Sgl_iszero_exponentmantissa(i32) #1

declare dso_local i32 @Equal(i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Lessthan(i32) #1

declare dso_local i32 @Greaterthan(i32) #1

declare dso_local i64 @Sgl_all(i32) #1

declare dso_local i64 @Sgl_iszero_sign(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
