; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_sfdiv.c_sgl_fdiv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_sfdiv.c_sgl_fdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@DIVISIONBYZEROEXCEPTION = common dso_local global i32 0, align 4
@SGL_BIAS = common dso_local global i32 0, align 4
@SGL_P = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SGL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@ovfl = common dso_local global i32 0, align 4
@OVERFLOWEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4
@unfl = common dso_local global i32 0, align 4
@UNDERFLOWEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_fdiv(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @Sgl_sign(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @Sgl_sign(i32 %29)
  %31 = xor i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @Sgl_setnegativezero(i32 %34)
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @Sgl_setzero(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @Sgl_isinfinity_exponent(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %109

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @Sgl_iszero_mantissa(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @Sgl_isnotnan(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @Sgl_isinfinity(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = call i64 (...) @Is_invalidtrap_enabled()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %59, i32* %5, align 4
  br label %599

60:                                               ; preds = %55
  %61 = call i32 (...) @Set_invalidflag()
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @Sgl_makequietnan(i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %66, i32* %5, align 4
  br label %599

67:                                               ; preds = %51
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @Sgl_setinfinity_exponentmantissa(i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %72, i32* %5, align 4
  br label %599

73:                                               ; preds = %47
  br label %108

74:                                               ; preds = %43
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @Sgl_isone_signaling(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = call i64 (...) @Is_invalidtrap_enabled()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %82, i32* %5, align 4
  br label %599

83:                                               ; preds = %78
  %84 = call i32 (...) @Set_invalidflag()
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @Sgl_set_quiet(i32 %85)
  br label %104

87:                                               ; preds = %74
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @Sgl_is_signalingnan(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = call i64 (...) @Is_invalidtrap_enabled()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %95, i32* %5, align 4
  br label %599

96:                                               ; preds = %91
  %97 = call i32 (...) @Set_invalidflag()
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @Sgl_set_quiet(i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %102, i32* %5, align 4
  br label %599

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32, i32* %10, align 4
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %107, i32* %5, align 4
  br label %599

108:                                              ; preds = %73
  br label %109

109:                                              ; preds = %108, %39
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @Sgl_isinfinity_exponent(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @Sgl_iszero_mantissa(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @Sgl_setzero_exponentmantissa(i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %122, i32* %5, align 4
  br label %599

123:                                              ; preds = %113
  %124 = load i32, i32* %11, align 4
  %125 = call i64 @Sgl_isone_signaling(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = call i64 (...) @Is_invalidtrap_enabled()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %131, i32* %5, align 4
  br label %599

132:                                              ; preds = %127
  %133 = call i32 (...) @Set_invalidflag()
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @Sgl_set_quiet(i32 %134)
  br label %136

136:                                              ; preds = %132, %123
  %137 = load i32, i32* %11, align 4
  %138 = load i32*, i32** %8, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %139, i32* %5, align 4
  br label %599

140:                                              ; preds = %109
  %141 = load i32, i32* %11, align 4
  %142 = call i64 @Sgl_iszero_exponentmantissa(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = call i64 @Sgl_iszero_exponentmantissa(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = call i64 (...) @Is_invalidtrap_enabled()
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %152, i32* %5, align 4
  br label %599

153:                                              ; preds = %148
  %154 = call i32 (...) @Set_invalidflag()
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @Sgl_makequietnan(i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %159, i32* %5, align 4
  br label %599

160:                                              ; preds = %144
  %161 = call i64 (...) @Is_divisionbyzerotrap_enabled()
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* @DIVISIONBYZEROEXCEPTION, align 4
  store i32 %164, i32* %5, align 4
  br label %599

165:                                              ; preds = %160
  %166 = call i32 (...) @Set_divisionbyzeroflag()
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @Sgl_setinfinity_exponentmantissa(i32 %167)
  %169 = load i32, i32* %13, align 4
  %170 = load i32*, i32** %8, align 8
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %171, i32* %5, align 4
  br label %599

172:                                              ; preds = %140
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @Sgl_exponent(i32 %173)
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @Sgl_exponent(i32 %175)
  %177 = sub nsw i32 %174, %176
  %178 = load i32, i32* @SGL_BIAS, align 4
  %179 = add nsw i32 %177, %178
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i64 @Sgl_isnotzero_exponent(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %172
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %184)
  br label %204

186:                                              ; preds = %172
  %187 = load i32, i32* %10, align 4
  %188 = call i64 @Sgl_iszero_mantissa(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %191 = load i32, i32* %13, align 4
  %192 = call i32 @Sgl_setzero_exponentmantissa(i32 %191)
  %193 = load i32, i32* %13, align 4
  %194 = load i32*, i32** %8, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %195, i32* %5, align 4
  br label %599

196:                                              ; preds = %186
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @Sgl_clear_signexponent(i32 %197)
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @Sgl_leftshiftby1(i32 %199)
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @Sgl_normalize(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %196, %183
  %205 = load i32, i32* %11, align 4
  %206 = call i64 @Sgl_isnotzero_exponent(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %209)
  br label %245

211:                                              ; preds = %204
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @Sgl_clear_signexponent(i32 %212)
  %214 = load i32, i32* %11, align 4
  %215 = call i32 @Sgl_leftshiftby1(i32 %214)
  br label %216

216:                                              ; preds = %220, %211
  %217 = load i32, i32* %11, align 4
  %218 = call i64 @Sgl_iszero_hiddenhigh7mantissa(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @Sgl_leftshiftby8(i32 %221)
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 8
  store i32 %224, i32* %14, align 4
  br label %216

225:                                              ; preds = %216
  %226 = load i32, i32* %11, align 4
  %227 = call i64 @Sgl_iszero_hiddenhigh3mantissa(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @Sgl_leftshiftby4(i32 %230)
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 4
  store i32 %233, i32* %14, align 4
  br label %234

234:                                              ; preds = %229, %225
  br label %235

235:                                              ; preds = %239, %234
  %236 = load i32, i32* %11, align 4
  %237 = call i64 @Sgl_iszero_hidden(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @Sgl_leftshiftby1(i32 %240)
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %235

244:                                              ; preds = %235
  br label %245

245:                                              ; preds = %244, %208
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @Sgl_subtract(i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @Sgl_setzero(i32 %250)
  store i32 1, i32* %15, align 4
  br label %252

252:                                              ; preds = %283, %245
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* @SGL_P, align 4
  %255 = icmp sle i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i32, i32* %10, align 4
  %258 = call i32 @Sgl_all(i32 %257)
  %259 = icmp ne i32 %258, 0
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i1 [ false, %252 ], [ %259, %256 ]
  br i1 %261, label %262, label %286

262:                                              ; preds = %260
  %263 = load i32, i32* %10, align 4
  %264 = call i32 @Sgl_leftshiftby1(i32 %263)
  %265 = load i32, i32* %12, align 4
  %266 = call i32 @Sgl_leftshiftby1(i32 %265)
  %267 = load i32, i32* %10, align 4
  %268 = call i64 @Sgl_iszero_sign(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %262
  %271 = load i32, i32* %12, align 4
  %272 = call i32 @Sgl_setone_lowmantissa(i32 %271)
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %10, align 4
  %276 = call i32 @Sgl_subtract(i32 %273, i32 %274, i32 %275)
  br label %282

277:                                              ; preds = %262
  %278 = load i32, i32* %10, align 4
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @Sgl_addition(i32 %278, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %277, %270
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %15, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %15, align 4
  br label %252

286:                                              ; preds = %260
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* @SGL_P, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %309

290:                                              ; preds = %286
  %291 = load i32, i32* %12, align 4
  %292 = call i32 @Sgl_leftshiftby1(i32 %291)
  %293 = load i32, i32* %12, align 4
  %294 = call i32 @Sgl_setone_lowmantissa(i32 %293)
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* @SGL_P, align 4
  %297 = load i32, i32* %15, align 4
  %298 = sub nsw i32 %296, %297
  %299 = call i32 @Sgl_leftshift(i32 %295, i32 %298)
  %300 = load i32, i32* %12, align 4
  %301 = call i64 @Sgl_iszero_hidden(i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %290
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @Sgl_leftshiftby1(i32 %304)
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %14, align 4
  br label %308

308:                                              ; preds = %303, %290
  br label %345

309:                                              ; preds = %286
  %310 = load i32, i32* %12, align 4
  %311 = call i64 @Sgl_iszero_hidden(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %336

313:                                              ; preds = %309
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @Sgl_leftshiftby1(i32 %314)
  %316 = load i32, i32* %12, align 4
  %317 = call i32 @Sgl_leftshiftby1(i32 %316)
  %318 = load i32, i32* %10, align 4
  %319 = call i64 @Sgl_iszero_sign(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %313
  %322 = load i32, i32* %12, align 4
  %323 = call i32 @Sgl_setone_lowmantissa(i32 %322)
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* %10, align 4
  %327 = call i32 @Sgl_subtract(i32 %324, i32 %325, i32 %326)
  br label %333

328:                                              ; preds = %313
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %10, align 4
  %332 = call i32 @Sgl_addition(i32 %329, i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %328, %321
  %334 = load i32, i32* %14, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %14, align 4
  br label %336

336:                                              ; preds = %333, %309
  %337 = load i32, i32* %10, align 4
  %338 = call i64 @Sgl_iszero_sign(i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = load i32, i32* @TRUE, align 4
  store i32 %341, i32* %17, align 4
  br label %342

342:                                              ; preds = %340, %336
  %343 = load i32, i32* %10, align 4
  %344 = call i32 @Sgl_all(i32 %343)
  store i32 %344, i32* %18, align 4
  br label %345

345:                                              ; preds = %342, %308
  %346 = load i32, i32* %17, align 4
  %347 = load i32, i32* %18, align 4
  %348 = or i32 %346, %347
  store i32 %348, i32* %16, align 4
  %349 = load i32, i32* %16, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %400

351:                                              ; preds = %345
  %352 = load i32, i32* %14, align 4
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = call i64 (...) @Is_underflowtrap_enabled()
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %400

357:                                              ; preds = %354, %351
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @Sgl_clear_signexponent(i32 %358)
  %360 = call i32 (...) @Rounding_mode()
  switch i32 %360, label %392 [
    i32 128, label %361
    i32 130, label %369
    i32 129, label %377
  ]

361:                                              ; preds = %357
  %362 = load i32, i32* %13, align 4
  %363 = call i64 @Sgl_iszero_sign(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %361
  %366 = load i32, i32* %12, align 4
  %367 = call i32 @Sgl_increment_mantissa(i32 %366)
  br label %368

368:                                              ; preds = %365, %361
  br label %392

369:                                              ; preds = %357
  %370 = load i32, i32* %13, align 4
  %371 = call i32 @Sgl_isone_sign(i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = load i32, i32* %12, align 4
  %375 = call i32 @Sgl_increment_mantissa(i32 %374)
  br label %376

376:                                              ; preds = %373, %369
  br label %392

377:                                              ; preds = %357
  %378 = load i32, i32* %17, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %391

380:                                              ; preds = %377
  %381 = load i32, i32* %18, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %387, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* %12, align 4
  %385 = call i32 @Sgl_isone_lowmantissa(i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %383, %380
  %388 = load i32, i32* %12, align 4
  %389 = call i32 @Sgl_increment_mantissa(i32 %388)
  br label %390

390:                                              ; preds = %387, %383
  br label %391

391:                                              ; preds = %390, %377
  br label %392

392:                                              ; preds = %391, %357, %376, %368
  %393 = load i32, i32* %12, align 4
  %394 = call i64 @Sgl_isone_hidden(i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %392
  %397 = load i32, i32* %14, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %14, align 4
  br label %399

399:                                              ; preds = %396, %392
  br label %400

400:                                              ; preds = %399, %354, %345
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* %12, align 4
  %403 = call i32 @Sgl_set_mantissa(i32 %401, i32 %402)
  %404 = load i32, i32* %14, align 4
  %405 = load i32, i32* @SGL_INFINITY_EXPONENT, align 4
  %406 = icmp sge i32 %404, %405
  br i1 %406, label %407, label %436

407:                                              ; preds = %400
  %408 = call i64 (...) @Is_overflowtrap_enabled()
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %431

410:                                              ; preds = %407
  %411 = load i32, i32* %13, align 4
  %412 = load i32, i32* %14, align 4
  %413 = load i32, i32* @ovfl, align 4
  %414 = call i32 @Sgl_setwrapped_exponent(i32 %411, i32 %412, i32 %413)
  %415 = load i32, i32* %13, align 4
  %416 = load i32*, i32** %8, align 8
  store i32 %415, i32* %416, align 4
  %417 = load i32, i32* %16, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %429

419:                                              ; preds = %410
  %420 = call i64 (...) @Is_inexacttrap_enabled()
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  %424 = load i32, i32* @INEXACTEXCEPTION, align 4
  %425 = or i32 %423, %424
  store i32 %425, i32* %5, align 4
  br label %599

426:                                              ; preds = %419
  %427 = call i32 (...) @Set_inexactflag()
  br label %428

428:                                              ; preds = %426
  br label %429

429:                                              ; preds = %428, %410
  %430 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  store i32 %430, i32* %5, align 4
  br label %599

431:                                              ; preds = %407
  %432 = call i32 (...) @Set_overflowflag()
  %433 = load i32, i32* %13, align 4
  %434 = call i32 @Sgl_setoverflow(i32 %433)
  %435 = load i32, i32* @TRUE, align 4
  store i32 %435, i32* %16, align 4
  br label %584

436:                                              ; preds = %400
  %437 = load i32, i32* %14, align 4
  %438 = icmp sle i32 %437, 0
  br i1 %438, label %439, label %579

439:                                              ; preds = %436
  %440 = call i64 (...) @Is_underflowtrap_enabled()
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %463

442:                                              ; preds = %439
  %443 = load i32, i32* %13, align 4
  %444 = load i32, i32* %14, align 4
  %445 = load i32, i32* @unfl, align 4
  %446 = call i32 @Sgl_setwrapped_exponent(i32 %443, i32 %444, i32 %445)
  %447 = load i32, i32* %13, align 4
  %448 = load i32*, i32** %8, align 8
  store i32 %447, i32* %448, align 4
  %449 = load i32, i32* %16, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %461

451:                                              ; preds = %442
  %452 = call i64 (...) @Is_inexacttrap_enabled()
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %451
  %455 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  %456 = load i32, i32* @INEXACTEXCEPTION, align 4
  %457 = or i32 %455, %456
  store i32 %457, i32* %5, align 4
  br label %599

458:                                              ; preds = %451
  %459 = call i32 (...) @Set_inexactflag()
  br label %460

460:                                              ; preds = %458
  br label %461

461:                                              ; preds = %460, %442
  %462 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %462, i32* %5, align 4
  br label %599

463:                                              ; preds = %439
  %464 = load i32, i32* @TRUE, align 4
  store i32 %464, i32* %19, align 4
  %465 = load i32, i32* %14, align 4
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %527

467:                                              ; preds = %463
  %468 = load i32, i32* %16, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %527

470:                                              ; preds = %467
  %471 = call i32 (...) @Rounding_mode()
  switch i32 %471, label %526 [
    i32 128, label %472
    i32 130, label %488
    i32 129, label %504
  ]

472:                                              ; preds = %470
  %473 = load i32, i32* %13, align 4
  %474 = call i64 @Sgl_iszero_sign(i32 %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %487

476:                                              ; preds = %472
  %477 = load i32, i32* %12, align 4
  %478 = call i32 @Sgl_increment(i32 %477)
  %479 = load i32, i32* %12, align 4
  %480 = call i32 @Sgl_isone_hiddenoverflow(i32 %479)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %476
  %483 = load i32, i32* @FALSE, align 4
  store i32 %483, i32* %19, align 4
  br label %484

484:                                              ; preds = %482, %476
  %485 = load i32, i32* %12, align 4
  %486 = call i32 @Sgl_decrement(i32 %485)
  br label %487

487:                                              ; preds = %484, %472
  br label %526

488:                                              ; preds = %470
  %489 = load i32, i32* %13, align 4
  %490 = call i32 @Sgl_isone_sign(i32 %489)
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %503

492:                                              ; preds = %488
  %493 = load i32, i32* %12, align 4
  %494 = call i32 @Sgl_increment(i32 %493)
  %495 = load i32, i32* %12, align 4
  %496 = call i32 @Sgl_isone_hiddenoverflow(i32 %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %492
  %499 = load i32, i32* @FALSE, align 4
  store i32 %499, i32* %19, align 4
  br label %500

500:                                              ; preds = %498, %492
  %501 = load i32, i32* %12, align 4
  %502 = call i32 @Sgl_decrement(i32 %501)
  br label %503

503:                                              ; preds = %500, %488
  br label %526

504:                                              ; preds = %470
  %505 = load i32, i32* %17, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %525

507:                                              ; preds = %504
  %508 = load i32, i32* %18, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %514, label %510

510:                                              ; preds = %507
  %511 = load i32, i32* %12, align 4
  %512 = call i32 @Sgl_isone_lowmantissa(i32 %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %525

514:                                              ; preds = %510, %507
  %515 = load i32, i32* %12, align 4
  %516 = call i32 @Sgl_increment(i32 %515)
  %517 = load i32, i32* %12, align 4
  %518 = call i32 @Sgl_isone_hiddenoverflow(i32 %517)
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %514
  %521 = load i32, i32* @FALSE, align 4
  store i32 %521, i32* %19, align 4
  br label %522

522:                                              ; preds = %520, %514
  %523 = load i32, i32* %12, align 4
  %524 = call i32 @Sgl_decrement(i32 %523)
  br label %525

525:                                              ; preds = %522, %510, %504
  br label %526

526:                                              ; preds = %470, %525, %503, %487
  br label %527

527:                                              ; preds = %526, %467, %463
  %528 = load i32, i32* %16, align 4
  store i32 %528, i32* %18, align 4
  %529 = load i32, i32* %12, align 4
  %530 = load i32, i32* %14, align 4
  %531 = load i32, i32* %17, align 4
  %532 = load i32, i32* %18, align 4
  %533 = load i32, i32* %16, align 4
  %534 = call i32 @Sgl_denormalize(i32 %529, i32 %530, i32 %531, i32 %532, i32 %533)
  %535 = load i32, i32* %16, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %575

537:                                              ; preds = %527
  %538 = call i32 (...) @Rounding_mode()
  switch i32 %538, label %569 [
    i32 128, label %539
    i32 130, label %547
    i32 129, label %555
  ]

539:                                              ; preds = %537
  %540 = load i32, i32* %13, align 4
  %541 = call i64 @Sgl_iszero_sign(i32 %540)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %539
  %544 = load i32, i32* %12, align 4
  %545 = call i32 @Sgl_increment(i32 %544)
  br label %546

546:                                              ; preds = %543, %539
  br label %569

547:                                              ; preds = %537
  %548 = load i32, i32* %13, align 4
  %549 = call i32 @Sgl_isone_sign(i32 %548)
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %547
  %552 = load i32, i32* %12, align 4
  %553 = call i32 @Sgl_increment(i32 %552)
  br label %554

554:                                              ; preds = %551, %547
  br label %569

555:                                              ; preds = %537
  %556 = load i32, i32* %17, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %568

558:                                              ; preds = %555
  %559 = load i32, i32* %18, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %565, label %561

561:                                              ; preds = %558
  %562 = load i32, i32* %12, align 4
  %563 = call i32 @Sgl_isone_lowmantissa(i32 %562)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %568

565:                                              ; preds = %561, %558
  %566 = load i32, i32* %12, align 4
  %567 = call i32 @Sgl_increment(i32 %566)
  br label %568

568:                                              ; preds = %565, %561, %555
  br label %569

569:                                              ; preds = %537, %568, %554, %546
  %570 = load i32, i32* %19, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %569
  %573 = call i32 (...) @Set_underflowflag()
  br label %574

574:                                              ; preds = %572, %569
  br label %575

575:                                              ; preds = %574, %527
  %576 = load i32, i32* %13, align 4
  %577 = load i32, i32* %12, align 4
  %578 = call i32 @Sgl_set_exponentmantissa(i32 %576, i32 %577)
  br label %583

579:                                              ; preds = %436
  %580 = load i32, i32* %13, align 4
  %581 = load i32, i32* %14, align 4
  %582 = call i32 @Sgl_set_exponent(i32 %580, i32 %581)
  br label %583

583:                                              ; preds = %579, %575
  br label %584

584:                                              ; preds = %583, %431
  %585 = load i32, i32* %13, align 4
  %586 = load i32*, i32** %8, align 8
  store i32 %585, i32* %586, align 4
  %587 = load i32, i32* %16, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %597

589:                                              ; preds = %584
  %590 = call i64 (...) @Is_inexacttrap_enabled()
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %589
  %593 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %593, i32* %5, align 4
  br label %599

594:                                              ; preds = %589
  %595 = call i32 (...) @Set_inexactflag()
  br label %596

596:                                              ; preds = %594
  br label %597

597:                                              ; preds = %596, %584
  %598 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %598, i32* %5, align 4
  br label %599

599:                                              ; preds = %597, %592, %461, %454, %429, %422, %190, %165, %163, %153, %151, %136, %130, %117, %104, %96, %94, %81, %67, %60, %58
  %600 = load i32, i32* %5, align 4
  ret i32 %600
}

declare dso_local i32 @Sgl_sign(i32) #1

declare dso_local i32 @Sgl_setnegativezero(i32) #1

declare dso_local i32 @Sgl_setzero(i32) #1

declare dso_local i64 @Sgl_isinfinity_exponent(i32) #1

declare dso_local i64 @Sgl_iszero_mantissa(i32) #1

declare dso_local i64 @Sgl_isnotnan(i32) #1

declare dso_local i64 @Sgl_isinfinity(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_makequietnan(i32) #1

declare dso_local i32 @Sgl_setinfinity_exponentmantissa(i32) #1

declare dso_local i64 @Sgl_isone_signaling(i32) #1

declare dso_local i32 @Sgl_set_quiet(i32) #1

declare dso_local i64 @Sgl_is_signalingnan(i32) #1

declare dso_local i32 @Sgl_setzero_exponentmantissa(i32) #1

declare dso_local i64 @Sgl_iszero_exponentmantissa(i32) #1

declare dso_local i64 @Is_divisionbyzerotrap_enabled(...) #1

declare dso_local i32 @Set_divisionbyzeroflag(...) #1

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isnotzero_exponent(i32) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Sgl_clear_signexponent(i32) #1

declare dso_local i32 @Sgl_leftshiftby1(i32) #1

declare dso_local i32 @Sgl_normalize(i32, i32) #1

declare dso_local i64 @Sgl_iszero_hiddenhigh7mantissa(i32) #1

declare dso_local i32 @Sgl_leftshiftby8(i32) #1

declare dso_local i64 @Sgl_iszero_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Sgl_leftshiftby4(i32) #1

declare dso_local i64 @Sgl_iszero_hidden(i32) #1

declare dso_local i32 @Sgl_subtract(i32, i32, i32) #1

declare dso_local i32 @Sgl_all(i32) #1

declare dso_local i64 @Sgl_iszero_sign(i32) #1

declare dso_local i32 @Sgl_setone_lowmantissa(i32) #1

declare dso_local i32 @Sgl_addition(i32, i32, i32) #1

declare dso_local i32 @Sgl_leftshift(i32, i32) #1

declare dso_local i64 @Is_underflowtrap_enabled(...) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_increment_mantissa(i32) #1

declare dso_local i32 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Sgl_isone_lowmantissa(i32) #1

declare dso_local i64 @Sgl_isone_hidden(i32) #1

declare dso_local i32 @Sgl_set_mantissa(i32, i32) #1

declare dso_local i64 @Is_overflowtrap_enabled(...) #1

declare dso_local i32 @Sgl_setwrapped_exponent(i32, i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Set_overflowflag(...) #1

declare dso_local i32 @Sgl_setoverflow(i32) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Sgl_decrement(i32) #1

declare dso_local i32 @Sgl_denormalize(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Set_underflowflag(...) #1

declare dso_local i32 @Sgl_set_exponentmantissa(i32, i32) #1

declare dso_local i32 @Sgl_set_exponent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
