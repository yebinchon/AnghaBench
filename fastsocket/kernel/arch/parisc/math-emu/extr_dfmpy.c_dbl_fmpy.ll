; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfmpy.c_dbl_fmpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfmpy.c_dbl_fmpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@DBL_BIAS = common dso_local global i32 0, align 4
@DBL_P = common dso_local global i32 0, align 4
@DBL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@ovfl = common dso_local global i32 0, align 4
@OVERFLOWEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@unfl = common dso_local global i32 0, align 4
@UNDERFLOWEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_fmpy(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %22, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @Dbl_copyfromptr(i32* %27, i32 %28, i32 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @Dbl_copyfromptr(i32* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @Dbl_sign(i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @Dbl_sign(i32 %37)
  %39 = xor i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @Dbl_setnegativezerop1(i32 %42)
  br label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @Dbl_setzerop1(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @Dbl_isinfinity_exponent(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %130

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @Dbl_iszero_mantissa(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i64 @Dbl_isnotnan(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @Dbl_iszero_exponentmantissa(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = call i64 (...) @Is_invalidtrap_enabled()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %70, i32* %5, align 4
  br label %648

71:                                               ; preds = %66
  %72 = call i32 (...) @Set_invalidflag()
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @Dbl_makequietnan(i32 %73, i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @Dbl_copytoptr(i32 %76, i32 %77, i32* %78)
  %80 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %80, i32* %5, align 4
  br label %648

81:                                               ; preds = %61
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @Dbl_setinfinity_exponentmantissa(i32 %82, i32 %83)
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @Dbl_copytoptr(i32 %85, i32 %86, i32* %87)
  %89 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %89, i32* %5, align 4
  br label %648

90:                                               ; preds = %56
  br label %129

91:                                               ; preds = %51
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @Dbl_isone_signaling(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = call i64 (...) @Is_invalidtrap_enabled()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %99, i32* %5, align 4
  br label %648

100:                                              ; preds = %95
  %101 = call i32 (...) @Set_invalidflag()
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @Dbl_set_quiet(i32 %102)
  br label %123

104:                                              ; preds = %91
  %105 = load i32, i32* %12, align 4
  %106 = call i64 @Dbl_is_signalingnan(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = call i64 (...) @Is_invalidtrap_enabled()
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %112, i32* %5, align 4
  br label %648

113:                                              ; preds = %108
  %114 = call i32 (...) @Set_invalidflag()
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @Dbl_set_quiet(i32 %115)
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @Dbl_copytoptr(i32 %117, i32 %118, i32* %119)
  %121 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %121, i32* %5, align 4
  br label %648

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %100
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @Dbl_copytoptr(i32 %124, i32 %125, i32* %126)
  %128 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %128, i32* %5, align 4
  br label %648

129:                                              ; preds = %90
  br label %130

130:                                              ; preds = %129, %47
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @Dbl_isinfinity_exponent(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %187

134:                                              ; preds = %130
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i64 @Dbl_iszero_mantissa(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %134
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @Dbl_iszero_exponentmantissa(i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  %145 = call i64 (...) @Is_invalidtrap_enabled()
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %148, i32* %5, align 4
  br label %648

149:                                              ; preds = %144
  %150 = call i32 (...) @Set_invalidflag()
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @Dbl_makequietnan(i32 %151, i32 %152)
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @Dbl_copytoptr(i32 %154, i32 %155, i32* %156)
  %158 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %158, i32* %5, align 4
  br label %648

159:                                              ; preds = %139
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @Dbl_setinfinity_exponentmantissa(i32 %160, i32 %161)
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @Dbl_copytoptr(i32 %163, i32 %164, i32* %165)
  %167 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %167, i32* %5, align 4
  br label %648

168:                                              ; preds = %134
  %169 = load i32, i32* %12, align 4
  %170 = call i64 @Dbl_isone_signaling(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = call i64 (...) @Is_invalidtrap_enabled()
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %176, i32* %5, align 4
  br label %648

177:                                              ; preds = %172
  %178 = call i32 (...) @Set_invalidflag()
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @Dbl_set_quiet(i32 %179)
  br label %181

181:                                              ; preds = %177, %168
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @Dbl_copytoptr(i32 %182, i32 %183, i32* %184)
  %186 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %186, i32* %5, align 4
  br label %648

187:                                              ; preds = %130
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @Dbl_exponent(i32 %188)
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @Dbl_exponent(i32 %190)
  %192 = add nsw i32 %189, %191
  %193 = load i32, i32* @DBL_BIAS, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i64 @Dbl_isnotzero_exponent(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %199)
  br label %225

201:                                              ; preds = %187
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %11, align 4
  %204 = call i64 @Dbl_iszero_mantissa(i32 %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %201
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @Dbl_setzero_exponentmantissa(i32 %207, i32 %208)
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load i32*, i32** %8, align 8
  %213 = call i32 @Dbl_copytoptr(i32 %210, i32 %211, i32* %212)
  %214 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %214, i32* %5, align 4
  br label %648

215:                                              ; preds = %201
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @Dbl_clear_signexponent(i32 %216)
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @Dbl_leftshiftby1(i32 %218, i32 %219)
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @Dbl_normalize(i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %215, %198
  %226 = load i32, i32* %12, align 4
  %227 = call i64 @Dbl_isnotzero_exponent(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %230)
  br label %256

232:                                              ; preds = %225
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %13, align 4
  %235 = call i64 @Dbl_iszero_mantissa(i32 %233, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %17, align 4
  %240 = call i32 @Dbl_setzero_exponentmantissa(i32 %238, i32 %239)
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %17, align 4
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 @Dbl_copytoptr(i32 %241, i32 %242, i32* %243)
  %245 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %245, i32* %5, align 4
  br label %648

246:                                              ; preds = %232
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @Dbl_clear_signexponent(i32 %247)
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @Dbl_leftshiftby1(i32 %249, i32 %250)
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %18, align 4
  %255 = call i32 @Dbl_normalize(i32 %252, i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %246, %229
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @Dbl_leftshiftby7(i32 %257, i32 %258)
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @Dbl_setzero(i32 %260, i32 %261)
  store i32 1, i32* %19, align 4
  br label %263

263:                                              ; preds = %333, %256
  %264 = load i32, i32* %19, align 4
  %265 = load i32, i32* @DBL_P, align 4
  %266 = icmp sle i32 %264, %265
  br i1 %266, label %267, label %336

267:                                              ; preds = %263
  %268 = load i32, i32* %15, align 4
  %269 = call i32 @Dlow4p2(i32 %268)
  %270 = load i32, i32* %22, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %22, align 4
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %15, align 4
  %274 = call i32 @Dbl_rightshiftby4(i32 %272, i32 %273)
  %275 = load i32, i32* %11, align 4
  %276 = call i64 @Dbit28p2(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %289

278:                                              ; preds = %267
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %12, align 4
  %282 = shl i32 %281, 3
  %283 = load i32, i32* %13, align 4
  %284 = lshr i32 %283, 29
  %285 = or i32 %282, %284
  %286 = load i32, i32* %13, align 4
  %287 = shl i32 %286, 3
  %288 = call i32 @Twoword_add(i32 %279, i32 %280, i32 %285, i32 %287)
  br label %289

289:                                              ; preds = %278, %267
  %290 = load i32, i32* %11, align 4
  %291 = call i64 @Dbit29p2(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %289
  %294 = load i32, i32* %14, align 4
  %295 = load i32, i32* %15, align 4
  %296 = load i32, i32* %12, align 4
  %297 = shl i32 %296, 2
  %298 = load i32, i32* %13, align 4
  %299 = lshr i32 %298, 30
  %300 = or i32 %297, %299
  %301 = load i32, i32* %13, align 4
  %302 = shl i32 %301, 2
  %303 = call i32 @Twoword_add(i32 %294, i32 %295, i32 %300, i32 %302)
  br label %304

304:                                              ; preds = %293, %289
  %305 = load i32, i32* %11, align 4
  %306 = call i64 @Dbit30p2(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %319

308:                                              ; preds = %304
  %309 = load i32, i32* %14, align 4
  %310 = load i32, i32* %15, align 4
  %311 = load i32, i32* %12, align 4
  %312 = shl i32 %311, 1
  %313 = load i32, i32* %13, align 4
  %314 = lshr i32 %313, 31
  %315 = or i32 %312, %314
  %316 = load i32, i32* %13, align 4
  %317 = shl i32 %316, 1
  %318 = call i32 @Twoword_add(i32 %309, i32 %310, i32 %315, i32 %317)
  br label %319

319:                                              ; preds = %308, %304
  %320 = load i32, i32* %11, align 4
  %321 = call i64 @Dbit31p2(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %319
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %12, align 4
  %327 = load i32, i32* %13, align 4
  %328 = call i32 @Twoword_add(i32 %324, i32 %325, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %323, %319
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* %11, align 4
  %332 = call i32 @Dbl_rightshiftby4(i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %329
  %334 = load i32, i32* %19, align 4
  %335 = add nsw i32 %334, 4
  store i32 %335, i32* %19, align 4
  br label %263

336:                                              ; preds = %263
  %337 = load i32, i32* %14, align 4
  %338 = call i64 @Dbit3p1(i32 %337)
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load i32, i32* %14, align 4
  %342 = load i32, i32* %15, align 4
  %343 = call i32 @Dbl_leftshiftby1(i32 %341, i32 %342)
  br label %347

344:                                              ; preds = %336
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %18, align 4
  br label %347

347:                                              ; preds = %344, %340
  br label %348

348:                                              ; preds = %352, %347
  %349 = load i32, i32* %14, align 4
  %350 = call i64 @Dbit3p1(i32 %349)
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %348
  %353 = load i32, i32* %14, align 4
  %354 = load i32, i32* %15, align 4
  %355 = call i32 @Dbl_leftshiftby1(i32 %353, i32 %354)
  %356 = load i32, i32* %18, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %18, align 4
  br label %348

358:                                              ; preds = %348
  %359 = load i32, i32* %15, align 4
  %360 = call i32 @Dallp2(i32 %359)
  %361 = shl i32 %360, 25
  %362 = load i32, i32* %22, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %22, align 4
  %364 = load i32, i32* %15, align 4
  %365 = call i32 @Dallp2(i32 %364)
  %366 = shl i32 %365, 24
  %367 = ashr i32 %366, 31
  store i32 %367, i32* %21, align 4
  %368 = load i32, i32* %21, align 4
  %369 = load i32, i32* %22, align 4
  %370 = or i32 %368, %369
  store i32 %370, i32* %20, align 4
  %371 = load i32, i32* %14, align 4
  %372 = load i32, i32* %15, align 4
  %373 = call i32 @Dbl_rightshiftby8(i32 %371, i32 %372)
  %374 = load i32, i32* %20, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %428

376:                                              ; preds = %358
  %377 = load i32, i32* %18, align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = call i64 (...) @Is_underflowtrap_enabled()
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %428

382:                                              ; preds = %379, %376
  %383 = load i32, i32* %14, align 4
  %384 = call i32 @Dbl_clear_signexponent(i32 %383)
  %385 = call i32 (...) @Rounding_mode()
  switch i32 %385, label %420 [
    i32 128, label %386
    i32 130, label %395
    i32 129, label %404
  ]

386:                                              ; preds = %382
  %387 = load i32, i32* %16, align 4
  %388 = call i32 @Dbl_iszero_sign(i32 %387)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %386
  %391 = load i32, i32* %14, align 4
  %392 = load i32, i32* %15, align 4
  %393 = call i32 @Dbl_increment(i32 %391, i32 %392)
  br label %394

394:                                              ; preds = %390, %386
  br label %420

395:                                              ; preds = %382
  %396 = load i32, i32* %16, align 4
  %397 = call i32 @Dbl_isone_sign(i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load i32, i32* %14, align 4
  %401 = load i32, i32* %15, align 4
  %402 = call i32 @Dbl_increment(i32 %400, i32 %401)
  br label %403

403:                                              ; preds = %399, %395
  br label %420

404:                                              ; preds = %382
  %405 = load i32, i32* %21, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %419

407:                                              ; preds = %404
  %408 = load i32, i32* %22, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* %15, align 4
  %412 = call i32 @Dbl_isone_lowmantissap2(i32 %411)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %410, %407
  %415 = load i32, i32* %14, align 4
  %416 = load i32, i32* %15, align 4
  %417 = call i32 @Dbl_increment(i32 %415, i32 %416)
  br label %418

418:                                              ; preds = %414, %410
  br label %419

419:                                              ; preds = %418, %404
  br label %420

420:                                              ; preds = %419, %382, %403, %394
  %421 = load i32, i32* %14, align 4
  %422 = call i64 @Dbl_isone_hidden(i32 %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %420
  %425 = load i32, i32* %18, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %18, align 4
  br label %427

427:                                              ; preds = %424, %420
  br label %428

428:                                              ; preds = %427, %379, %358
  %429 = load i32, i32* %16, align 4
  %430 = load i32, i32* %17, align 4
  %431 = load i32, i32* %14, align 4
  %432 = load i32, i32* %15, align 4
  %433 = call i32 @Dbl_set_mantissa(i32 %429, i32 %430, i32 %431, i32 %432)
  %434 = load i32, i32* %18, align 4
  %435 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %436 = icmp sge i32 %434, %435
  br i1 %436, label %437, label %469

437:                                              ; preds = %428
  %438 = call i64 (...) @Is_overflowtrap_enabled()
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %463

440:                                              ; preds = %437
  %441 = load i32, i32* %16, align 4
  %442 = load i32, i32* %18, align 4
  %443 = load i32, i32* @ovfl, align 4
  %444 = call i32 @Dbl_setwrapped_exponent(i32 %441, i32 %442, i32 %443)
  %445 = load i32, i32* %16, align 4
  %446 = load i32, i32* %17, align 4
  %447 = load i32*, i32** %8, align 8
  %448 = call i32 @Dbl_copytoptr(i32 %445, i32 %446, i32* %447)
  %449 = load i32, i32* %20, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %461

451:                                              ; preds = %440
  %452 = call i64 (...) @Is_inexacttrap_enabled()
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %451
  %455 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  %456 = load i32, i32* @INEXACTEXCEPTION, align 4
  %457 = or i32 %455, %456
  store i32 %457, i32* %5, align 4
  br label %648

458:                                              ; preds = %451
  %459 = call i32 (...) @Set_inexactflag()
  br label %460

460:                                              ; preds = %458
  br label %461

461:                                              ; preds = %460, %440
  %462 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  store i32 %462, i32* %5, align 4
  br label %648

463:                                              ; preds = %437
  %464 = load i32, i32* @TRUE, align 4
  store i32 %464, i32* %20, align 4
  %465 = call i32 (...) @Set_overflowflag()
  %466 = load i32, i32* %16, align 4
  %467 = load i32, i32* %17, align 4
  %468 = call i32 @Dbl_setoverflow(i32 %466, i32 %467)
  br label %631

469:                                              ; preds = %428
  %470 = load i32, i32* %18, align 4
  %471 = icmp sle i32 %470, 0
  br i1 %471, label %472, label %626

472:                                              ; preds = %469
  %473 = call i64 (...) @Is_underflowtrap_enabled()
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %498

475:                                              ; preds = %472
  %476 = load i32, i32* %16, align 4
  %477 = load i32, i32* %18, align 4
  %478 = load i32, i32* @unfl, align 4
  %479 = call i32 @Dbl_setwrapped_exponent(i32 %476, i32 %477, i32 %478)
  %480 = load i32, i32* %16, align 4
  %481 = load i32, i32* %17, align 4
  %482 = load i32*, i32** %8, align 8
  %483 = call i32 @Dbl_copytoptr(i32 %480, i32 %481, i32* %482)
  %484 = load i32, i32* %20, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %496

486:                                              ; preds = %475
  %487 = call i64 (...) @Is_inexacttrap_enabled()
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %486
  %490 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  %491 = load i32, i32* @INEXACTEXCEPTION, align 4
  %492 = or i32 %490, %491
  store i32 %492, i32* %5, align 4
  br label %648

493:                                              ; preds = %486
  %494 = call i32 (...) @Set_inexactflag()
  br label %495

495:                                              ; preds = %493
  br label %496

496:                                              ; preds = %495, %475
  %497 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %497, i32* %5, align 4
  br label %648

498:                                              ; preds = %472
  %499 = load i32, i32* @TRUE, align 4
  store i32 %499, i32* %23, align 4
  %500 = load i32, i32* %18, align 4
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %568

502:                                              ; preds = %498
  %503 = load i32, i32* %20, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %568

505:                                              ; preds = %502
  %506 = call i32 (...) @Rounding_mode()
  switch i32 %506, label %567 [
    i32 128, label %507
    i32 130, label %525
    i32 129, label %543
  ]

507:                                              ; preds = %505
  %508 = load i32, i32* %16, align 4
  %509 = call i32 @Dbl_iszero_sign(i32 %508)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %524

511:                                              ; preds = %507
  %512 = load i32, i32* %14, align 4
  %513 = load i32, i32* %15, align 4
  %514 = call i32 @Dbl_increment(i32 %512, i32 %513)
  %515 = load i32, i32* %14, align 4
  %516 = call i32 @Dbl_isone_hiddenoverflow(i32 %515)
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %511
  %519 = load i32, i32* @FALSE, align 4
  store i32 %519, i32* %23, align 4
  br label %520

520:                                              ; preds = %518, %511
  %521 = load i32, i32* %14, align 4
  %522 = load i32, i32* %15, align 4
  %523 = call i32 @Dbl_decrement(i32 %521, i32 %522)
  br label %524

524:                                              ; preds = %520, %507
  br label %567

525:                                              ; preds = %505
  %526 = load i32, i32* %16, align 4
  %527 = call i32 @Dbl_isone_sign(i32 %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %542

529:                                              ; preds = %525
  %530 = load i32, i32* %14, align 4
  %531 = load i32, i32* %15, align 4
  %532 = call i32 @Dbl_increment(i32 %530, i32 %531)
  %533 = load i32, i32* %14, align 4
  %534 = call i32 @Dbl_isone_hiddenoverflow(i32 %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %538

536:                                              ; preds = %529
  %537 = load i32, i32* @FALSE, align 4
  store i32 %537, i32* %23, align 4
  br label %538

538:                                              ; preds = %536, %529
  %539 = load i32, i32* %14, align 4
  %540 = load i32, i32* %15, align 4
  %541 = call i32 @Dbl_decrement(i32 %539, i32 %540)
  br label %542

542:                                              ; preds = %538, %525
  br label %567

543:                                              ; preds = %505
  %544 = load i32, i32* %21, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %566

546:                                              ; preds = %543
  %547 = load i32, i32* %22, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %553, label %549

549:                                              ; preds = %546
  %550 = load i32, i32* %15, align 4
  %551 = call i32 @Dbl_isone_lowmantissap2(i32 %550)
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %566

553:                                              ; preds = %549, %546
  %554 = load i32, i32* %14, align 4
  %555 = load i32, i32* %15, align 4
  %556 = call i32 @Dbl_increment(i32 %554, i32 %555)
  %557 = load i32, i32* %14, align 4
  %558 = call i32 @Dbl_isone_hiddenoverflow(i32 %557)
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %553
  %561 = load i32, i32* @FALSE, align 4
  store i32 %561, i32* %23, align 4
  br label %562

562:                                              ; preds = %560, %553
  %563 = load i32, i32* %14, align 4
  %564 = load i32, i32* %15, align 4
  %565 = call i32 @Dbl_decrement(i32 %563, i32 %564)
  br label %566

566:                                              ; preds = %562, %549, %543
  br label %567

567:                                              ; preds = %505, %566, %542, %524
  br label %568

568:                                              ; preds = %567, %502, %498
  %569 = load i32, i32* %20, align 4
  store i32 %569, i32* %22, align 4
  %570 = load i32, i32* %14, align 4
  %571 = load i32, i32* %15, align 4
  %572 = load i32, i32* %18, align 4
  %573 = load i32, i32* %21, align 4
  %574 = load i32, i32* %22, align 4
  %575 = load i32, i32* %20, align 4
  %576 = call i32 @Dbl_denormalize(i32 %570, i32 %571, i32 %572, i32 %573, i32 %574, i32 %575)
  %577 = load i32, i32* %20, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %620

579:                                              ; preds = %568
  %580 = call i32 (...) @Rounding_mode()
  switch i32 %580, label %614 [
    i32 128, label %581
    i32 130, label %590
    i32 129, label %599
  ]

581:                                              ; preds = %579
  %582 = load i32, i32* %16, align 4
  %583 = call i32 @Dbl_iszero_sign(i32 %582)
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %589

585:                                              ; preds = %581
  %586 = load i32, i32* %14, align 4
  %587 = load i32, i32* %15, align 4
  %588 = call i32 @Dbl_increment(i32 %586, i32 %587)
  br label %589

589:                                              ; preds = %585, %581
  br label %614

590:                                              ; preds = %579
  %591 = load i32, i32* %16, align 4
  %592 = call i32 @Dbl_isone_sign(i32 %591)
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %598

594:                                              ; preds = %590
  %595 = load i32, i32* %14, align 4
  %596 = load i32, i32* %15, align 4
  %597 = call i32 @Dbl_increment(i32 %595, i32 %596)
  br label %598

598:                                              ; preds = %594, %590
  br label %614

599:                                              ; preds = %579
  %600 = load i32, i32* %21, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %613

602:                                              ; preds = %599
  %603 = load i32, i32* %22, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %609, label %605

605:                                              ; preds = %602
  %606 = load i32, i32* %15, align 4
  %607 = call i32 @Dbl_isone_lowmantissap2(i32 %606)
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %613

609:                                              ; preds = %605, %602
  %610 = load i32, i32* %14, align 4
  %611 = load i32, i32* %15, align 4
  %612 = call i32 @Dbl_increment(i32 %610, i32 %611)
  br label %613

613:                                              ; preds = %609, %605, %599
  br label %614

614:                                              ; preds = %579, %613, %598, %589
  %615 = load i32, i32* %23, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %619

617:                                              ; preds = %614
  %618 = call i32 (...) @Set_underflowflag()
  br label %619

619:                                              ; preds = %617, %614
  br label %620

620:                                              ; preds = %619, %568
  %621 = load i32, i32* %16, align 4
  %622 = load i32, i32* %17, align 4
  %623 = load i32, i32* %14, align 4
  %624 = load i32, i32* %15, align 4
  %625 = call i32 @Dbl_set_exponentmantissa(i32 %621, i32 %622, i32 %623, i32 %624)
  br label %630

626:                                              ; preds = %469
  %627 = load i32, i32* %16, align 4
  %628 = load i32, i32* %18, align 4
  %629 = call i32 @Dbl_set_exponent(i32 %627, i32 %628)
  br label %630

630:                                              ; preds = %626, %620
  br label %631

631:                                              ; preds = %630, %463
  %632 = load i32, i32* %16, align 4
  %633 = load i32, i32* %17, align 4
  %634 = load i32*, i32** %8, align 8
  %635 = call i32 @Dbl_copytoptr(i32 %632, i32 %633, i32* %634)
  %636 = load i32, i32* %20, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %646

638:                                              ; preds = %631
  %639 = call i64 (...) @Is_inexacttrap_enabled()
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %641, label %643

641:                                              ; preds = %638
  %642 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %642, i32* %5, align 4
  br label %648

643:                                              ; preds = %638
  %644 = call i32 (...) @Set_inexactflag()
  br label %645

645:                                              ; preds = %643
  br label %646

646:                                              ; preds = %645, %631
  %647 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %647, i32* %5, align 4
  br label %648

648:                                              ; preds = %646, %641, %496, %489, %461, %454, %237, %206, %181, %175, %159, %149, %147, %123, %113, %111, %98, %81, %71, %69
  %649 = load i32, i32* %5, align 4
  ret i32 %649
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_sign(i32) #1

declare dso_local i32 @Dbl_setnegativezerop1(i32) #1

declare dso_local i32 @Dbl_setzerop1(i32) #1

declare dso_local i64 @Dbl_isinfinity_exponent(i32) #1

declare dso_local i64 @Dbl_iszero_mantissa(i32, i32) #1

declare dso_local i64 @Dbl_isnotnan(i32, i32) #1

declare dso_local i64 @Dbl_iszero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_makequietnan(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dbl_setinfinity_exponentmantissa(i32, i32) #1

declare dso_local i64 @Dbl_isone_signaling(i32) #1

declare dso_local i32 @Dbl_set_quiet(i32) #1

declare dso_local i64 @Dbl_is_signalingnan(i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isnotzero_exponent(i32) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_setzero_exponentmantissa(i32, i32) #1

declare dso_local i32 @Dbl_clear_signexponent(i32) #1

declare dso_local i32 @Dbl_leftshiftby1(i32, i32) #1

declare dso_local i32 @Dbl_normalize(i32, i32, i32) #1

declare dso_local i32 @Dbl_leftshiftby7(i32, i32) #1

declare dso_local i32 @Dbl_setzero(i32, i32) #1

declare dso_local i32 @Dlow4p2(i32) #1

declare dso_local i32 @Dbl_rightshiftby4(i32, i32) #1

declare dso_local i64 @Dbit28p2(i32) #1

declare dso_local i32 @Twoword_add(i32, i32, i32, i32) #1

declare dso_local i64 @Dbit29p2(i32) #1

declare dso_local i64 @Dbit30p2(i32) #1

declare dso_local i64 @Dbit31p2(i32) #1

declare dso_local i64 @Dbit3p1(i32) #1

declare dso_local i32 @Dallp2(i32) #1

declare dso_local i32 @Dbl_rightshiftby8(i32, i32) #1

declare dso_local i64 @Is_underflowtrap_enabled(...) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Dbl_isone_lowmantissap2(i32) #1

declare dso_local i64 @Dbl_isone_hidden(i32) #1

declare dso_local i32 @Dbl_set_mantissa(i32, i32, i32, i32) #1

declare dso_local i64 @Is_overflowtrap_enabled(...) #1

declare dso_local i32 @Dbl_setwrapped_exponent(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Set_overflowflag(...) #1

declare dso_local i32 @Dbl_setoverflow(i32, i32) #1

declare dso_local i32 @Dbl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Dbl_decrement(i32, i32) #1

declare dso_local i32 @Dbl_denormalize(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Set_underflowflag(...) #1

declare dso_local i32 @Dbl_set_exponentmantissa(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_set_exponent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
