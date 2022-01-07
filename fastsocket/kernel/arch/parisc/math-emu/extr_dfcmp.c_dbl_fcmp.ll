; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfcmp.c_dbl_fcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfcmp.c_dbl_fcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_INFINITY_EXPONENT = common dso_local global i64 0, align 8
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_fcmp(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @Dbl_copyfromptr(i32* %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @Dbl_copyfromptr(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @Dbl_exponent(i32 %23)
  %25 = load i64, i64* @DBL_INFINITY_EXPONENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @Dbl_exponent(i32 %28)
  %30 = load i64, i64* @DBL_INFINITY_EXPONENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %110

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @Dbl_exponent(i32 %33)
  %35 = load i64, i64* @DBL_INFINITY_EXPONENT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @Dbl_isnotzero_mantissa(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @Exception(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @Dbl_isone_signaling(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %46, %37, %32
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @Dbl_exponent(i32 %51)
  %53 = load i64, i64* @DBL_INFINITY_EXPONENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @Dbl_isnotzero_mantissa(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @Exception(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @Dbl_isone_signaling(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64, %60, %46, %42
  %69 = call i64 (...) @Is_invalidtrap_enabled()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @Unordered(i32 %72)
  %74 = call i32 @Set_status_cbit(i32 %73)
  %75 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %75, i32* %5, align 4
  br label %238

76:                                               ; preds = %68
  %77 = call i32 (...) @Set_invalidflag()
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @Unordered(i32 %79)
  %81 = call i32 @Set_status_cbit(i32 %80)
  %82 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %82, i32* %5, align 4
  br label %238

83:                                               ; preds = %64, %55, %50
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @Dbl_exponent(i32 %84)
  %86 = load i64, i64* @DBL_INFINITY_EXPONENT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @Dbl_isnotzero_mantissa(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @Dbl_exponent(i32 %94)
  %96 = load i64, i64* @DBL_INFINITY_EXPONENT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @Dbl_isnotzero_mantissa(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98, %88
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @Unordered(i32 %104)
  %106 = call i32 @Set_status_cbit(i32 %105)
  %107 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %107, i32* %5, align 4
  br label %238

108:                                              ; preds = %98, %93
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %27
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @Dbl_xortointp1(i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %110
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @Dbl_iszero_exponentmantissa(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @Dbl_iszero_exponentmantissa(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @Equal(i32 %128)
  %130 = call i32 @Set_status_cbit(i32 %129)
  br label %144

131:                                              ; preds = %122, %117
  %132 = load i32, i32* %10, align 4
  %133 = call i64 @Dbl_isone_sign(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @Lessthan(i32 %136)
  %138 = call i32 @Set_status_cbit(i32 %137)
  br label %143

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @Greaterthan(i32 %140)
  %142 = call i32 @Set_status_cbit(i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %127
  br label %236

145:                                              ; preds = %110
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i64 @Dbl_isequal(i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @Equal(i32 %153)
  %155 = call i32 @Set_status_cbit(i32 %154)
  br label %235

156:                                              ; preds = %145
  %157 = load i32, i32* %10, align 4
  %158 = call i64 @Dbl_iszero_sign(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %197

160:                                              ; preds = %156
  %161 = load i32, i32* %10, align 4
  %162 = call i64 @Dbl_allp1(i32 %161)
  %163 = load i32, i32* %12, align 4
  %164 = call i64 @Dbl_allp1(i32 %163)
  %165 = icmp slt i64 %162, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @Lessthan(i32 %167)
  %169 = call i32 @Set_status_cbit(i32 %168)
  br label %196

170:                                              ; preds = %160
  %171 = load i32, i32* %10, align 4
  %172 = call i64 @Dbl_allp1(i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = call i64 @Dbl_allp1(i32 %173)
  %175 = icmp sgt i64 %172, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @Greaterthan(i32 %177)
  %179 = call i32 @Set_status_cbit(i32 %178)
  br label %195

180:                                              ; preds = %170
  %181 = load i32, i32* %11, align 4
  %182 = call i64 @Dbl_allp2(i32 %181)
  %183 = load i32, i32* %13, align 4
  %184 = call i64 @Dbl_allp2(i32 %183)
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @Lessthan(i32 %187)
  %189 = call i32 @Set_status_cbit(i32 %188)
  br label %194

190:                                              ; preds = %180
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @Greaterthan(i32 %191)
  %193 = call i32 @Set_status_cbit(i32 %192)
  br label %194

194:                                              ; preds = %190, %186
  br label %195

195:                                              ; preds = %194, %176
  br label %196

196:                                              ; preds = %195, %166
  br label %234

197:                                              ; preds = %156
  %198 = load i32, i32* %10, align 4
  %199 = call i64 @Dbl_allp1(i32 %198)
  %200 = load i32, i32* %12, align 4
  %201 = call i64 @Dbl_allp1(i32 %200)
  %202 = icmp sgt i64 %199, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @Lessthan(i32 %204)
  %206 = call i32 @Set_status_cbit(i32 %205)
  br label %233

207:                                              ; preds = %197
  %208 = load i32, i32* %10, align 4
  %209 = call i64 @Dbl_allp1(i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = call i64 @Dbl_allp1(i32 %210)
  %212 = icmp slt i64 %209, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @Greaterthan(i32 %214)
  %216 = call i32 @Set_status_cbit(i32 %215)
  br label %232

217:                                              ; preds = %207
  %218 = load i32, i32* %11, align 4
  %219 = call i64 @Dbl_allp2(i32 %218)
  %220 = load i32, i32* %13, align 4
  %221 = call i64 @Dbl_allp2(i32 %220)
  %222 = icmp sgt i64 %219, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @Lessthan(i32 %224)
  %226 = call i32 @Set_status_cbit(i32 %225)
  br label %231

227:                                              ; preds = %217
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @Greaterthan(i32 %228)
  %230 = call i32 @Set_status_cbit(i32 %229)
  br label %231

231:                                              ; preds = %227, %223
  br label %232

232:                                              ; preds = %231, %213
  br label %233

233:                                              ; preds = %232, %203
  br label %234

234:                                              ; preds = %233, %196
  br label %235

235:                                              ; preds = %234, %152
  br label %236

236:                                              ; preds = %235, %144
  %237 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %103, %78, %71
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i64 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isnotzero_mantissa(i32, i32) #1

declare dso_local i64 @Exception(i32) #1

declare dso_local i64 @Dbl_isone_signaling(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_status_cbit(i32) #1

declare dso_local i32 @Unordered(i32) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_xortointp1(i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_exponentmantissa(i32, i32) #1

declare dso_local i32 @Equal(i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Lessthan(i32) #1

declare dso_local i32 @Greaterthan(i32) #1

declare dso_local i64 @Dbl_isequal(i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_sign(i32) #1

declare dso_local i64 @Dbl_allp1(i32) #1

declare dso_local i64 @Dbl_allp2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
