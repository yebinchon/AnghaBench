; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfsub.c_dbl_fsub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfsub.c_dbl_fsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@unfl = common dso_local global i32 0, align 4
@UNDERFLOWEXCEPTION = common dso_local global i32 0, align 4
@DBL_THRESHOLD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ovfl = common dso_local global i32 0, align 4
@OVERFLOWEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_fsub(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %25, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @Dbl_copyfromptr(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @Dbl_copyfromptr(i32* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @Dbl_xortointp1(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @Dbl_exponent(i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %123

44:                                               ; preds = %4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @Dbl_iszero_mantissa(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i64 @Dbl_isnotnan(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %49
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @Dbl_isinfinity(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = call i64 (...) @Is_invalidtrap_enabled()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %66, i32* %5, align 4
  br label %677

67:                                               ; preds = %62
  %68 = call i32 (...) @Set_invalidflag()
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @Dbl_makequietnan(i32 %69, i32 %70)
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @Dbl_copytoptr(i32 %72, i32 %73, i32* %74)
  %76 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %76, i32* %5, align 4
  br label %677

77:                                               ; preds = %59, %54
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @Dbl_copytoptr(i32 %78, i32 %79, i32* %80)
  %82 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %82, i32* %5, align 4
  br label %677

83:                                               ; preds = %49
  br label %122

84:                                               ; preds = %44
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @Dbl_isone_signaling(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = call i64 (...) @Is_invalidtrap_enabled()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %92, i32* %5, align 4
  br label %677

93:                                               ; preds = %88
  %94 = call i32 (...) @Set_invalidflag()
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @Dbl_set_quiet(i32 %95)
  br label %116

97:                                               ; preds = %84
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @Dbl_is_signalingnan(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = call i64 (...) @Is_invalidtrap_enabled()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %105, i32* %5, align 4
  br label %677

106:                                              ; preds = %101
  %107 = call i32 (...) @Set_invalidflag()
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @Dbl_set_quiet(i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @Dbl_copytoptr(i32 %110, i32 %111, i32* %112)
  %114 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %114, i32* %5, align 4
  br label %677

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %93
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @Dbl_copytoptr(i32 %117, i32 %118, i32* %119)
  %121 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %121, i32* %5, align 4
  br label %677

122:                                              ; preds = %83
  br label %123

123:                                              ; preds = %122, %4
  %124 = load i32, i32* %15, align 4
  %125 = call i64 @Dbl_isinfinity_exponent(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %159

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i64 @Dbl_iszero_mantissa(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @Dbl_invert_sign(i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @Dbl_copytoptr(i32 %135, i32 %136, i32* %137)
  %139 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %139, i32* %5, align 4
  br label %677

140:                                              ; preds = %127
  %141 = load i32, i32* %15, align 4
  %142 = call i64 @Dbl_isone_signaling(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = call i64 (...) @Is_invalidtrap_enabled()
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %148, i32* %5, align 4
  br label %677

149:                                              ; preds = %144
  %150 = call i32 (...) @Set_invalidflag()
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @Dbl_set_quiet(i32 %151)
  br label %153

153:                                              ; preds = %149, %140
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @Dbl_copytoptr(i32 %154, i32 %155, i32* %156)
  %158 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %158, i32* %5, align 4
  br label %677

159:                                              ; preds = %123
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @Dbl_copytoint_exponentmantissap1(i32 %160, i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @Dbl_copytoint_exponentmantissap1(i32 %163, i32 %164)
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i64 @Dbl_ismagnitudeless(i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %159
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @Dbl_xorfromintp1(i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @Dbl_xorfromintp1(i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %16, align 4
  %183 = call i32 @Dbl_swap_lower(i32 %181, i32 %182)
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @Dbl_exponent(i32 %184)
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @Dbl_invert_sign(i32 %186)
  br label %188

188:                                              ; preds = %172, %159
  %189 = load i32, i32* %15, align 4
  %190 = call i32 @Dbl_exponent(i32 %189)
  store i32 %190, i32* %21, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %337

192:                                              ; preds = %188
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call i64 @Dbl_iszero_mantissa(i32 %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %251

197:                                              ; preds = %192
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = call i64 @Dbl_iszero_exponentmantissa(i32 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %197
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @Dbl_invert_sign(i32 %203)
  %205 = call i64 @Is_rounding_mode(i32 131)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @Dbl_or_signs(i32 %208, i32 %209)
  br label %215

211:                                              ; preds = %202
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %15, align 4
  %214 = call i32 @Dbl_and_signs(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %207
  br label %245

216:                                              ; preds = %197
  %217 = load i32, i32* %20, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %244

219:                                              ; preds = %216
  %220 = call i64 (...) @Is_underflowtrap_enabled()
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %244

222:                                              ; preds = %219
  %223 = load i32, i32* %13, align 4
  %224 = call i32 @Dbl_signextendedsign(i32 %223)
  store i32 %224, i32* %23, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @Dbl_leftshiftby1(i32 %225, i32 %226)
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %14, align 4
  %230 = load i32, i32* %20, align 4
  %231 = call i32 @Dbl_normalize(i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %23, align 4
  %234 = call i32 @Dbl_set_sign(i32 %232, i32 %233)
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* @unfl, align 4
  %238 = call i32 @Dbl_setwrapped_exponent(i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %14, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = call i32 @Dbl_copytoptr(i32 %239, i32 %240, i32* %241)
  %243 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %243, i32* %5, align 4
  br label %677

244:                                              ; preds = %219, %216
  br label %245

245:                                              ; preds = %244, %215
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %14, align 4
  %248 = load i32*, i32** %8, align 8
  %249 = call i32 @Dbl_copytoptr(i32 %246, i32 %247, i32* %248)
  %250 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %250, i32* %5, align 4
  br label %677

251:                                              ; preds = %192
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @Dbl_clear_sign(i32 %252)
  %254 = load i32, i32* %20, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %336

256:                                              ; preds = %251
  %257 = load i32, i32* %12, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %287

259:                                              ; preds = %256
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %19, align 4
  %266 = call i32 @Dbl_subtract(i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* %19, align 4
  %269 = call i64 @Dbl_iszero_mantissa(i32 %267, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %286

271:                                              ; preds = %259
  %272 = call i64 @Is_rounding_mode(i32 131)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* %18, align 4
  %276 = call i32 @Dbl_setone_sign(i32 %275)
  br label %280

277:                                              ; preds = %271
  %278 = load i32, i32* %18, align 4
  %279 = call i32 @Dbl_setzero_sign(i32 %278)
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* %19, align 4
  %283 = load i32*, i32** %8, align 8
  %284 = call i32 @Dbl_copytoptr(i32 %281, i32 %282, i32* %283)
  %285 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %285, i32* %5, align 4
  br label %677

286:                                              ; preds = %259
  br label %305

287:                                              ; preds = %256
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* %16, align 4
  %292 = load i32, i32* %18, align 4
  %293 = load i32, i32* %19, align 4
  %294 = call i32 @Dbl_addition(i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %18, align 4
  %296 = call i64 @Dbl_isone_hidden(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %287
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* %19, align 4
  %301 = load i32*, i32** %8, align 8
  %302 = call i32 @Dbl_copytoptr(i32 %299, i32 %300, i32* %301)
  %303 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %303, i32* %5, align 4
  br label %677

304:                                              ; preds = %287
  br label %305

305:                                              ; preds = %304, %286
  %306 = call i64 (...) @Is_underflowtrap_enabled()
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %330

308:                                              ; preds = %305
  %309 = load i32, i32* %18, align 4
  %310 = call i32 @Dbl_signextendedsign(i32 %309)
  store i32 %310, i32* %23, align 4
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* %19, align 4
  %313 = call i32 @Dbl_leftshiftby1(i32 %311, i32 %312)
  %314 = load i32, i32* %18, align 4
  %315 = load i32, i32* %19, align 4
  %316 = load i32, i32* %20, align 4
  %317 = call i32 @Dbl_normalize(i32 %314, i32 %315, i32 %316)
  %318 = load i32, i32* %18, align 4
  %319 = load i32, i32* %23, align 4
  %320 = call i32 @Dbl_set_sign(i32 %318, i32 %319)
  %321 = load i32, i32* %18, align 4
  %322 = load i32, i32* %20, align 4
  %323 = load i32, i32* @unfl, align 4
  %324 = call i32 @Dbl_setwrapped_exponent(i32 %321, i32 %322, i32 %323)
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* %19, align 4
  %327 = load i32*, i32** %8, align 8
  %328 = call i32 @Dbl_copytoptr(i32 %325, i32 %326, i32* %327)
  %329 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %329, i32* %5, align 4
  br label %677

330:                                              ; preds = %305
  %331 = load i32, i32* %18, align 4
  %332 = load i32, i32* %19, align 4
  %333 = load i32*, i32** %8, align 8
  %334 = call i32 @Dbl_copytoptr(i32 %331, i32 %332, i32* %333)
  %335 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %335, i32* %5, align 4
  br label %677

336:                                              ; preds = %251
  store i32 1, i32* %21, align 4
  br label %340

337:                                              ; preds = %188
  %338 = load i32, i32* %15, align 4
  %339 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %338)
  br label %340

340:                                              ; preds = %337, %336
  %341 = load i32, i32* %13, align 4
  %342 = call i32 @Dbl_clear_exponent_set_hidden(i32 %341)
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %21, align 4
  %345 = sub nsw i32 %343, %344
  store i32 %345, i32* %22, align 4
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* @DBL_THRESHOLD, align 4
  %348 = icmp sgt i32 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %340
  %350 = load i32, i32* @DBL_THRESHOLD, align 4
  store i32 %350, i32* %22, align 4
  br label %351

351:                                              ; preds = %349, %340
  %352 = load i32, i32* %15, align 4
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %22, align 4
  %355 = load i32, i32* %17, align 4
  %356 = call i32 @Dbl_right_align(i32 %352, i32 %353, i32 %354, i32 %355)
  %357 = load i32, i32* %12, align 4
  %358 = icmp sge i32 %357, 0
  br i1 %358, label %359, label %544

359:                                              ; preds = %351
  %360 = load i32, i32* %13, align 4
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* %16, align 4
  %364 = load i32, i32* %17, align 4
  %365 = load i32, i32* %18, align 4
  %366 = load i32, i32* %19, align 4
  %367 = call i32 @Dbl_subtract_withextension(i32 %360, i32 %361, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366)
  %368 = load i32, i32* %18, align 4
  %369 = call i64 @Dbl_iszero_hidden(i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %543

371:                                              ; preds = %359
  %372 = load i32, i32* %18, align 4
  %373 = call i32 @Dbl_signextendedsign(i32 %372)
  store i32 %373, i32* %23, align 4
  %374 = load i32, i32* %18, align 4
  %375 = load i32, i32* %19, align 4
  %376 = load i32, i32* %17, align 4
  %377 = load i32, i32* %18, align 4
  %378 = load i32, i32* %19, align 4
  %379 = call i32 @Dbl_leftshiftby1_withextent(i32 %374, i32 %375, i32 %376, i32 %377, i32 %378)
  %380 = load i32, i32* %18, align 4
  %381 = load i32, i32* %19, align 4
  %382 = call i64 @Dbl_iszero(i32 %380, i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %396

384:                                              ; preds = %371
  %385 = call i64 @Is_rounding_mode(i32 131)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i32, i32* %18, align 4
  %389 = call i32 @Dbl_setone_sign(i32 %388)
  br label %390

390:                                              ; preds = %387, %384
  %391 = load i32, i32* %18, align 4
  %392 = load i32, i32* %19, align 4
  %393 = load i32*, i32** %8, align 8
  %394 = call i32 @Dbl_copytoptr(i32 %391, i32 %392, i32* %393)
  %395 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %395, i32* %5, align 4
  br label %677

396:                                              ; preds = %371
  %397 = load i32, i32* %20, align 4
  %398 = add nsw i32 %397, -1
  store i32 %398, i32* %20, align 4
  %399 = load i32, i32* %18, align 4
  %400 = call i64 @Dbl_isone_hidden(i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %412

402:                                              ; preds = %396
  %403 = load i32, i32* %20, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  br label %510

406:                                              ; preds = %402
  %407 = load i32, i32* %18, align 4
  %408 = load i32, i32* %23, align 4
  %409 = call i32 @Dbl_set_sign(i32 %407, i32 %408)
  %410 = load i32, i32* %17, align 4
  %411 = call i32 @Ext_leftshiftby1(i32 %410)
  br label %567

412:                                              ; preds = %396
  %413 = call i64 (...) @Is_underflowtrap_enabled()
  store i64 %413, i64* %26, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %419, label %415

415:                                              ; preds = %412
  %416 = load i32, i32* %20, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  br label %510

419:                                              ; preds = %415, %412
  %420 = load i32, i32* %17, align 4
  %421 = call i32 @Ext_leftshiftby1(i32 %420)
  br label %422

422:                                              ; preds = %437, %419
  %423 = load i32, i32* %18, align 4
  %424 = call i64 @Dbl_iszero_hiddenhigh7mantissa(i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %438

426:                                              ; preds = %422
  %427 = load i32, i32* %18, align 4
  %428 = load i32, i32* %19, align 4
  %429 = call i32 @Dbl_leftshiftby8(i32 %427, i32 %428)
  %430 = load i32, i32* %20, align 4
  %431 = sub nsw i32 %430, 8
  store i32 %431, i32* %20, align 4
  %432 = icmp sle i32 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %426
  %434 = load i64, i64* %26, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %433
  br label %510

437:                                              ; preds = %433, %426
  br label %422

438:                                              ; preds = %422
  %439 = load i32, i32* %18, align 4
  %440 = call i64 @Dbl_iszero_hiddenhigh3mantissa(i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %454

442:                                              ; preds = %438
  %443 = load i32, i32* %18, align 4
  %444 = load i32, i32* %19, align 4
  %445 = call i32 @Dbl_leftshiftby4(i32 %443, i32 %444)
  %446 = load i32, i32* %20, align 4
  %447 = sub nsw i32 %446, 4
  store i32 %447, i32* %20, align 4
  %448 = icmp sle i32 %447, 0
  br i1 %448, label %449, label %453

449:                                              ; preds = %442
  %450 = load i64, i64* %26, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %453, label %452

452:                                              ; preds = %449
  br label %510

453:                                              ; preds = %449, %442
  br label %454

454:                                              ; preds = %453, %438
  %455 = load i32, i32* %18, align 4
  %456 = call i32 @Dbl_hiddenhigh3mantissa(i32 %455)
  store i32 %456, i32* %24, align 4
  %457 = icmp sgt i32 %456, 7
  br i1 %457, label %458, label %474

458:                                              ; preds = %454
  %459 = load i32, i32* %20, align 4
  %460 = icmp sle i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  br label %510

462:                                              ; preds = %458
  %463 = load i32, i32* %18, align 4
  %464 = load i32, i32* %23, align 4
  %465 = call i32 @Dbl_set_sign(i32 %463, i32 %464)
  %466 = load i32, i32* %18, align 4
  %467 = load i32, i32* %20, align 4
  %468 = call i32 @Dbl_set_exponent(i32 %466, i32 %467)
  %469 = load i32, i32* %18, align 4
  %470 = load i32, i32* %19, align 4
  %471 = load i32*, i32** %8, align 8
  %472 = call i32 @Dbl_copytoptr(i32 %469, i32 %470, i32* %471)
  %473 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %473, i32* %5, align 4
  br label %677

474:                                              ; preds = %454
  %475 = load i32, i32* %18, align 4
  %476 = load i32, i32* %23, align 4
  %477 = call i32 @Dbl_sethigh4bits(i32 %475, i32 %476)
  %478 = load i32, i32* %24, align 4
  switch i32 %478, label %497 [
    i32 1, label %479
    i32 2, label %485
    i32 3, label %485
    i32 4, label %491
    i32 5, label %491
    i32 6, label %491
    i32 7, label %491
  ]

479:                                              ; preds = %474
  %480 = load i32, i32* %18, align 4
  %481 = load i32, i32* %19, align 4
  %482 = call i32 @Dbl_leftshiftby3(i32 %480, i32 %481)
  %483 = load i32, i32* %20, align 4
  %484 = sub nsw i32 %483, 3
  store i32 %484, i32* %20, align 4
  br label %497

485:                                              ; preds = %474, %474
  %486 = load i32, i32* %18, align 4
  %487 = load i32, i32* %19, align 4
  %488 = call i32 @Dbl_leftshiftby2(i32 %486, i32 %487)
  %489 = load i32, i32* %20, align 4
  %490 = sub nsw i32 %489, 2
  store i32 %490, i32* %20, align 4
  br label %497

491:                                              ; preds = %474, %474, %474, %474
  %492 = load i32, i32* %18, align 4
  %493 = load i32, i32* %19, align 4
  %494 = call i32 @Dbl_leftshiftby1(i32 %492, i32 %493)
  %495 = load i32, i32* %20, align 4
  %496 = sub nsw i32 %495, 1
  store i32 %496, i32* %20, align 4
  br label %497

497:                                              ; preds = %474, %491, %485, %479
  %498 = load i32, i32* %20, align 4
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %500, label %509

500:                                              ; preds = %497
  %501 = load i32, i32* %18, align 4
  %502 = load i32, i32* %20, align 4
  %503 = call i32 @Dbl_set_exponent(i32 %501, i32 %502)
  %504 = load i32, i32* %18, align 4
  %505 = load i32, i32* %19, align 4
  %506 = load i32*, i32** %8, align 8
  %507 = call i32 @Dbl_copytoptr(i32 %504, i32 %505, i32* %506)
  %508 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %508, i32* %5, align 4
  br label %677

509:                                              ; preds = %497
  br label %510

510:                                              ; preds = %509, %461, %452, %436, %418, %405
  %511 = call i64 (...) @Is_underflowtrap_enabled()
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %526

513:                                              ; preds = %510
  %514 = load i32, i32* %18, align 4
  %515 = load i32, i32* %23, align 4
  %516 = call i32 @Dbl_set_sign(i32 %514, i32 %515)
  %517 = load i32, i32* %18, align 4
  %518 = load i32, i32* %20, align 4
  %519 = load i32, i32* @unfl, align 4
  %520 = call i32 @Dbl_setwrapped_exponent(i32 %517, i32 %518, i32 %519)
  %521 = load i32, i32* %18, align 4
  %522 = load i32, i32* %19, align 4
  %523 = load i32*, i32** %8, align 8
  %524 = call i32 @Dbl_copytoptr(i32 %521, i32 %522, i32* %523)
  %525 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %525, i32* %5, align 4
  br label %677

526:                                              ; preds = %510
  %527 = load i32, i32* %18, align 4
  %528 = load i32, i32* %19, align 4
  %529 = load i32, i32* %20, align 4
  %530 = sub nsw i32 1, %529
  %531 = load i32, i32* %17, align 4
  %532 = call i32 @Dbl_fix_overshift(i32 %527, i32 %528, i32 %530, i32 %531)
  %533 = load i32, i32* %18, align 4
  %534 = call i32 @Dbl_clear_signexponent(i32 %533)
  %535 = load i32, i32* %18, align 4
  %536 = load i32, i32* %23, align 4
  %537 = call i32 @Dbl_set_sign(i32 %535, i32 %536)
  %538 = load i32, i32* %18, align 4
  %539 = load i32, i32* %19, align 4
  %540 = load i32*, i32** %8, align 8
  %541 = call i32 @Dbl_copytoptr(i32 %538, i32 %539, i32* %540)
  %542 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %542, i32* %5, align 4
  br label %677

543:                                              ; preds = %359
  br label %566

544:                                              ; preds = %351
  %545 = load i32, i32* %13, align 4
  %546 = load i32, i32* %14, align 4
  %547 = load i32, i32* %15, align 4
  %548 = load i32, i32* %16, align 4
  %549 = load i32, i32* %18, align 4
  %550 = load i32, i32* %19, align 4
  %551 = call i32 @Dbl_addition(i32 %545, i32 %546, i32 %547, i32 %548, i32 %549, i32 %550)
  %552 = load i32, i32* %18, align 4
  %553 = call i64 @Dbl_isone_hiddenoverflow(i32 %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %565

555:                                              ; preds = %544
  %556 = load i32, i32* %19, align 4
  %557 = load i32, i32* %17, align 4
  %558 = load i32, i32* %17, align 4
  %559 = call i32 @Dbl_rightshiftby1_withextent(i32 %556, i32 %557, i32 %558)
  %560 = load i32, i32* %18, align 4
  %561 = load i32, i32* %19, align 4
  %562 = call i32 @Dbl_arithrightshiftby1(i32 %560, i32 %561)
  %563 = load i32, i32* %20, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %20, align 4
  br label %565

565:                                              ; preds = %555, %544
  br label %566

566:                                              ; preds = %565, %543
  br label %567

567:                                              ; preds = %566, %406
  %568 = load i32, i32* %17, align 4
  %569 = call i64 @Ext_isnotzero(i32 %568)
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %619

571:                                              ; preds = %567
  %572 = load i64, i64* @TRUE, align 8
  store i64 %572, i64* %25, align 8
  %573 = call i32 (...) @Rounding_mode()
  switch i32 %573, label %611 [
    i32 130, label %574
    i32 129, label %592
    i32 131, label %601
    i32 128, label %610
  ]

574:                                              ; preds = %571
  %575 = load i32, i32* %17, align 4
  %576 = call i32 @Ext_isone_sign(i32 %575)
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %591

578:                                              ; preds = %574
  %579 = load i32, i32* %17, align 4
  %580 = call i32 @Ext_isnotzero_lower(i32 %579)
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %586, label %582

582:                                              ; preds = %578
  %583 = load i32, i32* %19, align 4
  %584 = call i32 @Dbl_isone_lowmantissap2(i32 %583)
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %590

586:                                              ; preds = %582, %578
  %587 = load i32, i32* %18, align 4
  %588 = load i32, i32* %19, align 4
  %589 = call i32 @Dbl_increment(i32 %587, i32 %588)
  br label %590

590:                                              ; preds = %586, %582
  br label %591

591:                                              ; preds = %590, %574
  br label %611

592:                                              ; preds = %571
  %593 = load i32, i32* %18, align 4
  %594 = call i32 @Dbl_iszero_sign(i32 %593)
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %600

596:                                              ; preds = %592
  %597 = load i32, i32* %18, align 4
  %598 = load i32, i32* %19, align 4
  %599 = call i32 @Dbl_increment(i32 %597, i32 %598)
  br label %600

600:                                              ; preds = %596, %592
  br label %611

601:                                              ; preds = %571
  %602 = load i32, i32* %18, align 4
  %603 = call i32 @Dbl_isone_sign(i32 %602)
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %609

605:                                              ; preds = %601
  %606 = load i32, i32* %18, align 4
  %607 = load i32, i32* %19, align 4
  %608 = call i32 @Dbl_increment(i32 %606, i32 %607)
  br label %609

609:                                              ; preds = %605, %601
  br label %610

610:                                              ; preds = %571, %609
  br label %611

611:                                              ; preds = %610, %571, %600, %591
  %612 = load i32, i32* %18, align 4
  %613 = call i64 @Dbl_isone_hiddenoverflow(i32 %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %618

615:                                              ; preds = %611
  %616 = load i32, i32* %20, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %20, align 4
  br label %618

618:                                              ; preds = %615, %611
  br label %619

619:                                              ; preds = %618, %567
  %620 = load i32, i32* %20, align 4
  %621 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %622 = icmp eq i32 %620, %621
  br i1 %622, label %623, label %656

623:                                              ; preds = %619
  %624 = call i64 (...) @Is_overflowtrap_enabled()
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %649

626:                                              ; preds = %623
  %627 = load i32, i32* %18, align 4
  %628 = load i32, i32* %20, align 4
  %629 = load i32, i32* @ovfl, align 4
  %630 = call i32 @Dbl_setwrapped_exponent(i32 %627, i32 %628, i32 %629)
  %631 = load i32, i32* %18, align 4
  %632 = load i32, i32* %19, align 4
  %633 = load i32*, i32** %8, align 8
  %634 = call i32 @Dbl_copytoptr(i32 %631, i32 %632, i32* %633)
  %635 = load i64, i64* %25, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %647

637:                                              ; preds = %626
  %638 = call i64 (...) @Is_inexacttrap_enabled()
  %639 = icmp ne i64 %638, 0
  br i1 %639, label %640, label %644

640:                                              ; preds = %637
  %641 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  %642 = load i32, i32* @INEXACTEXCEPTION, align 4
  %643 = or i32 %641, %642
  store i32 %643, i32* %5, align 4
  br label %677

644:                                              ; preds = %637
  %645 = call i32 (...) @Set_inexactflag()
  br label %646

646:                                              ; preds = %644
  br label %647

647:                                              ; preds = %646, %626
  %648 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  store i32 %648, i32* %5, align 4
  br label %677

649:                                              ; preds = %623
  %650 = load i64, i64* @TRUE, align 8
  store i64 %650, i64* %25, align 8
  %651 = call i32 (...) @Set_overflowflag()
  %652 = load i32, i32* %18, align 4
  %653 = load i32, i32* %19, align 4
  %654 = call i32 @Dbl_setoverflow(i32 %652, i32 %653)
  br label %655

655:                                              ; preds = %649
  br label %660

656:                                              ; preds = %619
  %657 = load i32, i32* %18, align 4
  %658 = load i32, i32* %20, align 4
  %659 = call i32 @Dbl_set_exponent(i32 %657, i32 %658)
  br label %660

660:                                              ; preds = %656, %655
  %661 = load i32, i32* %18, align 4
  %662 = load i32, i32* %19, align 4
  %663 = load i32*, i32** %8, align 8
  %664 = call i32 @Dbl_copytoptr(i32 %661, i32 %662, i32* %663)
  %665 = load i64, i64* %25, align 8
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %675

667:                                              ; preds = %660
  %668 = call i64 (...) @Is_inexacttrap_enabled()
  %669 = icmp ne i64 %668, 0
  br i1 %669, label %670, label %672

670:                                              ; preds = %667
  %671 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %671, i32* %5, align 4
  br label %677

672:                                              ; preds = %667
  %673 = call i32 (...) @Set_inexactflag()
  br label %674

674:                                              ; preds = %672
  br label %675

675:                                              ; preds = %674, %660
  %676 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %676, i32* %5, align 4
  br label %677

677:                                              ; preds = %675, %670, %647, %640, %526, %513, %500, %462, %390, %330, %308, %298, %280, %245, %222, %153, %147, %132, %116, %106, %104, %91, %77, %67, %65
  %678 = load i32, i32* %5, align 4
  ret i32 %678
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_xortointp1(i32, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_iszero_mantissa(i32, i32) #1

declare dso_local i64 @Dbl_isnotnan(i32, i32) #1

declare dso_local i64 @Dbl_isinfinity(i32, i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_makequietnan(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i64 @Dbl_isone_signaling(i32) #1

declare dso_local i32 @Dbl_set_quiet(i32) #1

declare dso_local i64 @Dbl_is_signalingnan(i32) #1

declare dso_local i64 @Dbl_isinfinity_exponent(i32) #1

declare dso_local i32 @Dbl_invert_sign(i32) #1

declare dso_local i32 @Dbl_copytoint_exponentmantissap1(i32, i32) #1

declare dso_local i64 @Dbl_ismagnitudeless(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_xorfromintp1(i32, i32, i32) #1

declare dso_local i32 @Dbl_swap_lower(i32, i32) #1

declare dso_local i64 @Dbl_iszero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Is_rounding_mode(i32) #1

declare dso_local i32 @Dbl_or_signs(i32, i32) #1

declare dso_local i32 @Dbl_and_signs(i32, i32) #1

declare dso_local i64 @Is_underflowtrap_enabled(...) #1

declare dso_local i32 @Dbl_signextendedsign(i32) #1

declare dso_local i32 @Dbl_leftshiftby1(i32, i32) #1

declare dso_local i32 @Dbl_normalize(i32, i32, i32) #1

declare dso_local i32 @Dbl_set_sign(i32, i32) #1

declare dso_local i32 @Dbl_setwrapped_exponent(i32, i32, i32) #1

declare dso_local i32 @Dbl_clear_sign(i32) #1

declare dso_local i32 @Dbl_subtract(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_setone_sign(i32) #1

declare dso_local i32 @Dbl_setzero_sign(i32) #1

declare dso_local i32 @Dbl_addition(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_hidden(i32) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_clear_exponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_right_align(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_subtract_withextension(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_hidden(i32) #1

declare dso_local i32 @Dbl_leftshiftby1_withextent(i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero(i32, i32) #1

declare dso_local i32 @Ext_leftshiftby1(i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh7mantissa(i32) #1

declare dso_local i32 @Dbl_leftshiftby8(i32, i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Dbl_leftshiftby4(i32, i32) #1

declare dso_local i32 @Dbl_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Dbl_set_exponent(i32, i32) #1

declare dso_local i32 @Dbl_sethigh4bits(i32, i32) #1

declare dso_local i32 @Dbl_leftshiftby3(i32, i32) #1

declare dso_local i32 @Dbl_leftshiftby2(i32, i32) #1

declare dso_local i32 @Dbl_fix_overshift(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_clear_signexponent(i32) #1

declare dso_local i64 @Dbl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Dbl_rightshiftby1_withextent(i32, i32, i32) #1

declare dso_local i32 @Dbl_arithrightshiftby1(i32, i32) #1

declare dso_local i64 @Ext_isnotzero(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Ext_isone_sign(i32) #1

declare dso_local i32 @Ext_isnotzero_lower(i32) #1

declare dso_local i32 @Dbl_isone_lowmantissap2(i32) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_isone_sign(i32) #1

declare dso_local i64 @Is_overflowtrap_enabled(...) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Set_overflowflag(...) #1

declare dso_local i32 @Dbl_setoverflow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
