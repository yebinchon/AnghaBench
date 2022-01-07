; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfdiv.c_dbl_fdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_dfdiv.c_dbl_fdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@DIVISIONBYZEROEXCEPTION = common dso_local global i32 0, align 4
@DBL_BIAS = common dso_local global i32 0, align 4
@DBL_P = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DBL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@ovfl = common dso_local global i32 0, align 4
@OVERFLOWEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4
@unfl = common dso_local global i32 0, align 4
@UNDERFLOWEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_fdiv(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %64 = call i64 @Dbl_isinfinity(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = call i64 (...) @Is_invalidtrap_enabled()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %70, i32* %5, align 4
  br label %692

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
  br label %692

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
  br label %692

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
  br label %692

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
  br label %692

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
  br label %692

122:                                              ; preds = %104
  br label %123

123:                                              ; preds = %122, %100
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @Dbl_copytoptr(i32 %124, i32 %125, i32* %126)
  %128 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %128, i32* %5, align 4
  br label %692

129:                                              ; preds = %90
  br label %130

130:                                              ; preds = %129, %47
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @Dbl_isinfinity_exponent(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %130
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i64 @Dbl_iszero_mantissa(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @Dbl_setzero_exponentmantissa(i32 %140, i32 %141)
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @Dbl_copytoptr(i32 %143, i32 %144, i32* %145)
  %147 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %147, i32* %5, align 4
  br label %692

148:                                              ; preds = %134
  %149 = load i32, i32* %12, align 4
  %150 = call i64 @Dbl_isone_signaling(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = call i64 (...) @Is_invalidtrap_enabled()
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %156, i32* %5, align 4
  br label %692

157:                                              ; preds = %152
  %158 = call i32 (...) @Set_invalidflag()
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @Dbl_set_quiet(i32 %159)
  br label %161

161:                                              ; preds = %157, %148
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @Dbl_copytoptr(i32 %162, i32 %163, i32* %164)
  %166 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %166, i32* %5, align 4
  br label %692

167:                                              ; preds = %130
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i64 @Dbl_iszero_exponentmantissa(i32 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %207

172:                                              ; preds = %167
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %11, align 4
  %175 = call i64 @Dbl_iszero_exponentmantissa(i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %172
  %178 = call i64 (...) @Is_invalidtrap_enabled()
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %181, i32* %5, align 4
  br label %692

182:                                              ; preds = %177
  %183 = call i32 (...) @Set_invalidflag()
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @Dbl_makequietnan(i32 %184, i32 %185)
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @Dbl_copytoptr(i32 %187, i32 %188, i32* %189)
  %191 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %191, i32* %5, align 4
  br label %692

192:                                              ; preds = %172
  %193 = call i64 (...) @Is_divisionbyzerotrap_enabled()
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* @DIVISIONBYZEROEXCEPTION, align 4
  store i32 %196, i32* %5, align 4
  br label %692

197:                                              ; preds = %192
  %198 = call i32 (...) @Set_divisionbyzeroflag()
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @Dbl_setinfinity_exponentmantissa(i32 %199, i32 %200)
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 @Dbl_copytoptr(i32 %202, i32 %203, i32* %204)
  %206 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %206, i32* %5, align 4
  br label %692

207:                                              ; preds = %167
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @Dbl_exponent(i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @Dbl_exponent(i32 %210)
  %212 = sub nsw i32 %209, %211
  %213 = load i32, i32* @DBL_BIAS, align 4
  %214 = add nsw i32 %212, %213
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i64 @Dbl_isnotzero_exponent(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %207
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %219)
  br label %245

221:                                              ; preds = %207
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %11, align 4
  %224 = call i64 @Dbl_iszero_mantissa(i32 %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call i32 @Dbl_setzero_exponentmantissa(i32 %227, i32 %228)
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* %17, align 4
  %232 = load i32*, i32** %8, align 8
  %233 = call i32 @Dbl_copytoptr(i32 %230, i32 %231, i32* %232)
  %234 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %234, i32* %5, align 4
  br label %692

235:                                              ; preds = %221
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @Dbl_clear_signexponent(i32 %236)
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @Dbl_leftshiftby1(i32 %238, i32 %239)
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* %18, align 4
  %244 = call i32 @Dbl_normalize(i32 %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %235, %218
  %246 = load i32, i32* %12, align 4
  %247 = call i64 @Dbl_isnotzero_exponent(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %250)
  br label %290

252:                                              ; preds = %245
  %253 = load i32, i32* %12, align 4
  %254 = call i32 @Dbl_clear_signexponent(i32 %253)
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @Dbl_leftshiftby1(i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %262, %252
  %259 = load i32, i32* %12, align 4
  %260 = call i64 @Dbl_iszero_hiddenhigh7mantissa(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = load i32, i32* %18, align 4
  %264 = add nsw i32 %263, 8
  store i32 %264, i32* %18, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @Dbl_leftshiftby8(i32 %265, i32 %266)
  br label %258

268:                                              ; preds = %258
  %269 = load i32, i32* %12, align 4
  %270 = call i64 @Dbl_iszero_hiddenhigh3mantissa(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %273, 4
  store i32 %274, i32* %18, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %13, align 4
  %277 = call i32 @Dbl_leftshiftby4(i32 %275, i32 %276)
  br label %278

278:                                              ; preds = %272, %268
  br label %279

279:                                              ; preds = %283, %278
  %280 = load i32, i32* %12, align 4
  %281 = call i64 @Dbl_iszero_hidden(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = load i32, i32* %18, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %18, align 4
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* %13, align 4
  %288 = call i32 @Dbl_leftshiftby1(i32 %286, i32 %287)
  br label %279

289:                                              ; preds = %279
  br label %290

290:                                              ; preds = %289, %249
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @Twoword_subtract(i32 %291, i32 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %14, align 4
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @Dbl_setzero(i32 %296, i32 %297)
  store i32 1, i32* %19, align 4
  br label %299

299:                                              ; preds = %338, %290
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* @DBL_P, align 4
  %302 = icmp sle i32 %300, %301
  br i1 %302, label %303, label %311

303:                                              ; preds = %299
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  br label %309

309:                                              ; preds = %306, %303
  %310 = phi i1 [ true, %303 ], [ %308, %306 ]
  br label %311

311:                                              ; preds = %309, %299
  %312 = phi i1 [ false, %299 ], [ %310, %309 ]
  br i1 %312, label %313, label %341

313:                                              ; preds = %311
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @Dbl_leftshiftby1(i32 %314, i32 %315)
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call i32 @Dbl_leftshiftby1(i32 %317, i32 %318)
  %320 = load i32, i32* %10, align 4
  %321 = call i64 @Dbl_iszero_sign(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %313
  %324 = load i32, i32* %15, align 4
  %325 = call i32 @Dbl_setone_lowmantissap2(i32 %324)
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %12, align 4
  %329 = load i32, i32* %13, align 4
  %330 = call i32 @Twoword_subtract(i32 %326, i32 %327, i32 %328, i32 %329)
  br label %337

331:                                              ; preds = %313
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* %11, align 4
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* %13, align 4
  %336 = call i32 @Twoword_add(i32 %332, i32 %333, i32 %334, i32 %335)
  br label %337

337:                                              ; preds = %331, %323
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %19, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %19, align 4
  br label %299

341:                                              ; preds = %311
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* @DBL_P, align 4
  %344 = icmp sle i32 %342, %343
  br i1 %344, label %345, label %367

345:                                              ; preds = %341
  %346 = load i32, i32* %14, align 4
  %347 = load i32, i32* %15, align 4
  %348 = call i32 @Dbl_leftshiftby1(i32 %346, i32 %347)
  %349 = load i32, i32* %15, align 4
  %350 = call i32 @Dbl_setone_lowmantissap2(i32 %349)
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %15, align 4
  %353 = load i32, i32* @DBL_P, align 4
  %354 = load i32, i32* %19, align 4
  %355 = sub nsw i32 %353, %354
  %356 = call i32 @Dbl_leftshift(i32 %351, i32 %352, i32 %355)
  %357 = load i32, i32* %14, align 4
  %358 = call i64 @Dbl_iszero_hidden(i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %345
  %361 = load i32, i32* %14, align 4
  %362 = load i32, i32* %15, align 4
  %363 = call i32 @Dbl_leftshiftby1(i32 %361, i32 %362)
  %364 = load i32, i32* %18, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %18, align 4
  br label %366

366:                                              ; preds = %360, %345
  br label %415

367:                                              ; preds = %341
  %368 = load i32, i32* %14, align 4
  %369 = call i64 @Dbl_iszero_hidden(i32 %368)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %398

371:                                              ; preds = %367
  %372 = load i32, i32* %10, align 4
  %373 = load i32, i32* %11, align 4
  %374 = call i32 @Dbl_leftshiftby1(i32 %372, i32 %373)
  %375 = load i32, i32* %14, align 4
  %376 = load i32, i32* %15, align 4
  %377 = call i32 @Dbl_leftshiftby1(i32 %375, i32 %376)
  %378 = load i32, i32* %10, align 4
  %379 = call i64 @Dbl_iszero_sign(i32 %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %371
  %382 = load i32, i32* %15, align 4
  %383 = call i32 @Dbl_setone_lowmantissap2(i32 %382)
  %384 = load i32, i32* %10, align 4
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* %13, align 4
  %388 = call i32 @Twoword_subtract(i32 %384, i32 %385, i32 %386, i32 %387)
  br label %395

389:                                              ; preds = %371
  %390 = load i32, i32* %10, align 4
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %13, align 4
  %394 = call i32 @Twoword_add(i32 %390, i32 %391, i32 %392, i32 %393)
  br label %395

395:                                              ; preds = %389, %381
  %396 = load i32, i32* %18, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %18, align 4
  br label %398

398:                                              ; preds = %395, %367
  %399 = load i32, i32* %10, align 4
  %400 = call i64 @Dbl_iszero_sign(i32 %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = load i32, i32* @TRUE, align 4
  store i32 %403, i32* %21, align 4
  br label %404

404:                                              ; preds = %402, %398
  %405 = load i32, i32* %10, align 4
  %406 = call i64 @Dbl_allp1(i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %404
  %409 = load i32, i32* %11, align 4
  %410 = call i64 @Dbl_allp2(i32 %409)
  %411 = icmp ne i64 %410, 0
  br label %412

412:                                              ; preds = %408, %404
  %413 = phi i1 [ true, %404 ], [ %411, %408 ]
  %414 = zext i1 %413 to i32
  store i32 %414, i32* %22, align 4
  br label %415

415:                                              ; preds = %412, %366
  %416 = load i32, i32* %21, align 4
  %417 = load i32, i32* %22, align 4
  %418 = or i32 %416, %417
  store i32 %418, i32* %20, align 4
  %419 = load i32, i32* %20, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %472

421:                                              ; preds = %415
  %422 = load i32, i32* %18, align 4
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %421
  %425 = call i64 (...) @Is_underflowtrap_enabled()
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %472

427:                                              ; preds = %424, %421
  %428 = load i32, i32* %14, align 4
  %429 = call i32 @Dbl_clear_signexponent(i32 %428)
  %430 = call i32 (...) @Rounding_mode()
  switch i32 %430, label %464 [
    i32 128, label %431
    i32 130, label %440
    i32 129, label %449
  ]

431:                                              ; preds = %427
  %432 = load i32, i32* %16, align 4
  %433 = call i64 @Dbl_iszero_sign(i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %431
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %15, align 4
  %438 = call i32 @Dbl_increment(i32 %436, i32 %437)
  br label %439

439:                                              ; preds = %435, %431
  br label %464

440:                                              ; preds = %427
  %441 = load i32, i32* %16, align 4
  %442 = call i32 @Dbl_isone_sign(i32 %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %440
  %445 = load i32, i32* %14, align 4
  %446 = load i32, i32* %15, align 4
  %447 = call i32 @Dbl_increment(i32 %445, i32 %446)
  br label %448

448:                                              ; preds = %444, %440
  br label %464

449:                                              ; preds = %427
  %450 = load i32, i32* %21, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %463

452:                                              ; preds = %449
  %453 = load i32, i32* %22, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %459, label %455

455:                                              ; preds = %452
  %456 = load i32, i32* %15, align 4
  %457 = call i32 @Dbl_isone_lowmantissap2(i32 %456)
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %455, %452
  %460 = load i32, i32* %14, align 4
  %461 = load i32, i32* %15, align 4
  %462 = call i32 @Dbl_increment(i32 %460, i32 %461)
  br label %463

463:                                              ; preds = %459, %455, %449
  br label %464

464:                                              ; preds = %463, %427, %448, %439
  %465 = load i32, i32* %14, align 4
  %466 = call i64 @Dbl_isone_hidden(i32 %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %464
  %469 = load i32, i32* %18, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %18, align 4
  br label %471

471:                                              ; preds = %468, %464
  br label %472

472:                                              ; preds = %471, %424, %415
  %473 = load i32, i32* %16, align 4
  %474 = load i32, i32* %17, align 4
  %475 = load i32, i32* %14, align 4
  %476 = load i32, i32* %15, align 4
  %477 = call i32 @Dbl_set_mantissa(i32 %473, i32 %474, i32 %475, i32 %476)
  %478 = load i32, i32* %18, align 4
  %479 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %480 = icmp sge i32 %478, %479
  br i1 %480, label %481, label %513

481:                                              ; preds = %472
  %482 = call i64 (...) @Is_overflowtrap_enabled()
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %507

484:                                              ; preds = %481
  %485 = load i32, i32* %16, align 4
  %486 = load i32, i32* %18, align 4
  %487 = load i32, i32* @ovfl, align 4
  %488 = call i32 @Dbl_setwrapped_exponent(i32 %485, i32 %486, i32 %487)
  %489 = load i32, i32* %16, align 4
  %490 = load i32, i32* %17, align 4
  %491 = load i32*, i32** %8, align 8
  %492 = call i32 @Dbl_copytoptr(i32 %489, i32 %490, i32* %491)
  %493 = load i32, i32* %20, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %505

495:                                              ; preds = %484
  %496 = call i64 (...) @Is_inexacttrap_enabled()
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %495
  %499 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  %500 = load i32, i32* @INEXACTEXCEPTION, align 4
  %501 = or i32 %499, %500
  store i32 %501, i32* %5, align 4
  br label %692

502:                                              ; preds = %495
  %503 = call i32 (...) @Set_inexactflag()
  br label %504

504:                                              ; preds = %502
  br label %505

505:                                              ; preds = %504, %484
  %506 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  store i32 %506, i32* %5, align 4
  br label %692

507:                                              ; preds = %481
  %508 = call i32 (...) @Set_overflowflag()
  %509 = load i32, i32* %16, align 4
  %510 = load i32, i32* %17, align 4
  %511 = call i32 @Dbl_setoverflow(i32 %509, i32 %510)
  %512 = load i32, i32* @TRUE, align 4
  store i32 %512, i32* %20, align 4
  br label %675

513:                                              ; preds = %472
  %514 = load i32, i32* %18, align 4
  %515 = icmp sle i32 %514, 0
  br i1 %515, label %516, label %670

516:                                              ; preds = %513
  %517 = call i64 (...) @Is_underflowtrap_enabled()
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %542

519:                                              ; preds = %516
  %520 = load i32, i32* %16, align 4
  %521 = load i32, i32* %18, align 4
  %522 = load i32, i32* @unfl, align 4
  %523 = call i32 @Dbl_setwrapped_exponent(i32 %520, i32 %521, i32 %522)
  %524 = load i32, i32* %16, align 4
  %525 = load i32, i32* %17, align 4
  %526 = load i32*, i32** %8, align 8
  %527 = call i32 @Dbl_copytoptr(i32 %524, i32 %525, i32* %526)
  %528 = load i32, i32* %20, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %540

530:                                              ; preds = %519
  %531 = call i64 (...) @Is_inexacttrap_enabled()
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %537

533:                                              ; preds = %530
  %534 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  %535 = load i32, i32* @INEXACTEXCEPTION, align 4
  %536 = or i32 %534, %535
  store i32 %536, i32* %5, align 4
  br label %692

537:                                              ; preds = %530
  %538 = call i32 (...) @Set_inexactflag()
  br label %539

539:                                              ; preds = %537
  br label %540

540:                                              ; preds = %539, %519
  %541 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %541, i32* %5, align 4
  br label %692

542:                                              ; preds = %516
  %543 = load i32, i32* @TRUE, align 4
  store i32 %543, i32* %23, align 4
  %544 = load i32, i32* %18, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %612

546:                                              ; preds = %542
  %547 = load i32, i32* %20, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %612

549:                                              ; preds = %546
  %550 = call i32 (...) @Rounding_mode()
  switch i32 %550, label %611 [
    i32 128, label %551
    i32 130, label %569
    i32 129, label %587
  ]

551:                                              ; preds = %549
  %552 = load i32, i32* %16, align 4
  %553 = call i64 @Dbl_iszero_sign(i32 %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %568

555:                                              ; preds = %551
  %556 = load i32, i32* %14, align 4
  %557 = load i32, i32* %15, align 4
  %558 = call i32 @Dbl_increment(i32 %556, i32 %557)
  %559 = load i32, i32* %14, align 4
  %560 = call i32 @Dbl_isone_hiddenoverflow(i32 %559)
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %555
  %563 = load i32, i32* @FALSE, align 4
  store i32 %563, i32* %23, align 4
  br label %564

564:                                              ; preds = %562, %555
  %565 = load i32, i32* %14, align 4
  %566 = load i32, i32* %15, align 4
  %567 = call i32 @Dbl_decrement(i32 %565, i32 %566)
  br label %568

568:                                              ; preds = %564, %551
  br label %611

569:                                              ; preds = %549
  %570 = load i32, i32* %16, align 4
  %571 = call i32 @Dbl_isone_sign(i32 %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %586

573:                                              ; preds = %569
  %574 = load i32, i32* %14, align 4
  %575 = load i32, i32* %15, align 4
  %576 = call i32 @Dbl_increment(i32 %574, i32 %575)
  %577 = load i32, i32* %14, align 4
  %578 = call i32 @Dbl_isone_hiddenoverflow(i32 %577)
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %582

580:                                              ; preds = %573
  %581 = load i32, i32* @FALSE, align 4
  store i32 %581, i32* %23, align 4
  br label %582

582:                                              ; preds = %580, %573
  %583 = load i32, i32* %14, align 4
  %584 = load i32, i32* %15, align 4
  %585 = call i32 @Dbl_decrement(i32 %583, i32 %584)
  br label %586

586:                                              ; preds = %582, %569
  br label %611

587:                                              ; preds = %549
  %588 = load i32, i32* %21, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %610

590:                                              ; preds = %587
  %591 = load i32, i32* %22, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %597, label %593

593:                                              ; preds = %590
  %594 = load i32, i32* %15, align 4
  %595 = call i32 @Dbl_isone_lowmantissap2(i32 %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %610

597:                                              ; preds = %593, %590
  %598 = load i32, i32* %14, align 4
  %599 = load i32, i32* %15, align 4
  %600 = call i32 @Dbl_increment(i32 %598, i32 %599)
  %601 = load i32, i32* %14, align 4
  %602 = call i32 @Dbl_isone_hiddenoverflow(i32 %601)
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %597
  %605 = load i32, i32* @FALSE, align 4
  store i32 %605, i32* %23, align 4
  br label %606

606:                                              ; preds = %604, %597
  %607 = load i32, i32* %14, align 4
  %608 = load i32, i32* %15, align 4
  %609 = call i32 @Dbl_decrement(i32 %607, i32 %608)
  br label %610

610:                                              ; preds = %606, %593, %587
  br label %611

611:                                              ; preds = %549, %610, %586, %568
  br label %612

612:                                              ; preds = %611, %546, %542
  %613 = load i32, i32* %20, align 4
  store i32 %613, i32* %22, align 4
  %614 = load i32, i32* %14, align 4
  %615 = load i32, i32* %15, align 4
  %616 = load i32, i32* %18, align 4
  %617 = load i32, i32* %21, align 4
  %618 = load i32, i32* %22, align 4
  %619 = load i32, i32* %20, align 4
  %620 = call i32 @Dbl_denormalize(i32 %614, i32 %615, i32 %616, i32 %617, i32 %618, i32 %619)
  %621 = load i32, i32* %20, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %664

623:                                              ; preds = %612
  %624 = call i32 (...) @Rounding_mode()
  switch i32 %624, label %658 [
    i32 128, label %625
    i32 130, label %634
    i32 129, label %643
  ]

625:                                              ; preds = %623
  %626 = load i32, i32* %16, align 4
  %627 = call i64 @Dbl_iszero_sign(i32 %626)
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %625
  %630 = load i32, i32* %14, align 4
  %631 = load i32, i32* %15, align 4
  %632 = call i32 @Dbl_increment(i32 %630, i32 %631)
  br label %633

633:                                              ; preds = %629, %625
  br label %658

634:                                              ; preds = %623
  %635 = load i32, i32* %16, align 4
  %636 = call i32 @Dbl_isone_sign(i32 %635)
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %642

638:                                              ; preds = %634
  %639 = load i32, i32* %14, align 4
  %640 = load i32, i32* %15, align 4
  %641 = call i32 @Dbl_increment(i32 %639, i32 %640)
  br label %642

642:                                              ; preds = %638, %634
  br label %658

643:                                              ; preds = %623
  %644 = load i32, i32* %21, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %657

646:                                              ; preds = %643
  %647 = load i32, i32* %22, align 4
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %653, label %649

649:                                              ; preds = %646
  %650 = load i32, i32* %15, align 4
  %651 = call i32 @Dbl_isone_lowmantissap2(i32 %650)
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %657

653:                                              ; preds = %649, %646
  %654 = load i32, i32* %14, align 4
  %655 = load i32, i32* %15, align 4
  %656 = call i32 @Dbl_increment(i32 %654, i32 %655)
  br label %657

657:                                              ; preds = %653, %649, %643
  br label %658

658:                                              ; preds = %623, %657, %642, %633
  %659 = load i32, i32* %23, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %663

661:                                              ; preds = %658
  %662 = call i32 (...) @Set_underflowflag()
  br label %663

663:                                              ; preds = %661, %658
  br label %664

664:                                              ; preds = %663, %612
  %665 = load i32, i32* %16, align 4
  %666 = load i32, i32* %17, align 4
  %667 = load i32, i32* %14, align 4
  %668 = load i32, i32* %15, align 4
  %669 = call i32 @Dbl_set_exponentmantissa(i32 %665, i32 %666, i32 %667, i32 %668)
  br label %674

670:                                              ; preds = %513
  %671 = load i32, i32* %16, align 4
  %672 = load i32, i32* %18, align 4
  %673 = call i32 @Dbl_set_exponent(i32 %671, i32 %672)
  br label %674

674:                                              ; preds = %670, %664
  br label %675

675:                                              ; preds = %674, %507
  %676 = load i32, i32* %16, align 4
  %677 = load i32, i32* %17, align 4
  %678 = load i32*, i32** %8, align 8
  %679 = call i32 @Dbl_copytoptr(i32 %676, i32 %677, i32* %678)
  %680 = load i32, i32* %20, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %690

682:                                              ; preds = %675
  %683 = call i64 (...) @Is_inexacttrap_enabled()
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %687

685:                                              ; preds = %682
  %686 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %686, i32* %5, align 4
  br label %692

687:                                              ; preds = %682
  %688 = call i32 (...) @Set_inexactflag()
  br label %689

689:                                              ; preds = %687
  br label %690

690:                                              ; preds = %689, %675
  %691 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %691, i32* %5, align 4
  br label %692

692:                                              ; preds = %690, %685, %540, %533, %505, %498, %226, %197, %195, %182, %180, %161, %155, %139, %123, %113, %111, %98, %81, %71, %69
  %693 = load i32, i32* %5, align 4
  ret i32 %693
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_sign(i32) #1

declare dso_local i32 @Dbl_setnegativezerop1(i32) #1

declare dso_local i32 @Dbl_setzerop1(i32) #1

declare dso_local i64 @Dbl_isinfinity_exponent(i32) #1

declare dso_local i64 @Dbl_iszero_mantissa(i32, i32) #1

declare dso_local i64 @Dbl_isnotnan(i32, i32) #1

declare dso_local i64 @Dbl_isinfinity(i32, i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_makequietnan(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dbl_setinfinity_exponentmantissa(i32, i32) #1

declare dso_local i64 @Dbl_isone_signaling(i32) #1

declare dso_local i32 @Dbl_set_quiet(i32) #1

declare dso_local i64 @Dbl_is_signalingnan(i32) #1

declare dso_local i32 @Dbl_setzero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Dbl_iszero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Is_divisionbyzerotrap_enabled(...) #1

declare dso_local i32 @Set_divisionbyzeroflag(...) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isnotzero_exponent(i32) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_clear_signexponent(i32) #1

declare dso_local i32 @Dbl_leftshiftby1(i32, i32) #1

declare dso_local i32 @Dbl_normalize(i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh7mantissa(i32) #1

declare dso_local i32 @Dbl_leftshiftby8(i32, i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Dbl_leftshiftby4(i32, i32) #1

declare dso_local i64 @Dbl_iszero_hidden(i32) #1

declare dso_local i32 @Twoword_subtract(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_setzero(i32, i32) #1

declare dso_local i64 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_setone_lowmantissap2(i32) #1

declare dso_local i32 @Twoword_add(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_leftshift(i32, i32, i32) #1

declare dso_local i64 @Dbl_allp1(i32) #1

declare dso_local i64 @Dbl_allp2(i32) #1

declare dso_local i64 @Is_underflowtrap_enabled(...) #1

declare dso_local i32 @Rounding_mode(...) #1

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
