; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-pow.c_mpi_powm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-pow.c_mpi_powm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32 }
%struct.karatsuba_ctx = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BITS_PER_MPI_LIMB = common dso_local global i32 0, align 4
@KARATSUBA_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_powm(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.karatsuba_ctx, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %31, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %18, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = mul nsw i32 2, %49
  store i32 %50, i32* %26, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %22, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %23, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %14, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %15, align 8
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %4
  %66 = load i32, i32* %19, align 4
  %67 = sdiv i32 1, %66
  store i32 %67, i32* %19, align 4
  br label %68

68:                                               ; preds = %65, %4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %14, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br label %83

83:                                               ; preds = %76, %71
  %84 = phi i1 [ false, %71 ], [ %82, %76 ]
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  br label %542

91:                                               ; preds = %68
  %92 = load i32, i32* %19, align 4
  %93 = call i32* @mpi_alloc_limb_space(i32 %92)
  store i32* %93, i32** %9, align 8
  store i32* %93, i32** %16, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %543

97:                                               ; preds = %91
  %98 = load i32, i32* %27, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @count_leading_zeros(i32 %98, i32 %106)
  %108 = load i32, i32* %27, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %97
  %111 = load i32*, i32** %16, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %27, align 4
  %117 = call i32 @mpihelp_lshift(i32* %111, i32* %114, i32 %115, i32 %116)
  br label %125

118:                                              ; preds = %97
  %119 = load i32*, i32** %16, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @MPN_COPY(i32* %119, i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %110
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %20, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %162

135:                                              ; preds = %125
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i32* @mpi_alloc_limb_space(i32 %137)
  store i32* %138, i32** %10, align 8
  store i32* %138, i32** %17, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  br label %543

142:                                              ; preds = %135
  %143 = load i32*, i32** %17, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @MPN_COPY(i32* %143, i32* %146, i32 %147)
  %149 = load i32*, i32** %17, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* %20, align 4
  %155 = load i32*, i32** %16, align 8
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @mpihelp_divrem(i32* %152, i32 0, i32* %153, i32 %154, i32* %155, i32 %156)
  %158 = load i32, i32* %19, align 4
  store i32 %158, i32* %20, align 4
  %159 = load i32*, i32** %17, align 8
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @MPN_NORMALIZE(i32* %159, i32 %160)
  br label %166

162:                                              ; preds = %125
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  store i32* %165, i32** %17, align 8
  br label %166

166:                                              ; preds = %162, %142
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  br label %542

174:                                              ; preds = %166
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %26, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %174
  %181 = load i32*, i32** %14, align 8
  %182 = load i32*, i32** %15, align 8
  %183 = icmp eq i32* %181, %182
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = load i32*, i32** %14, align 8
  %186 = load i32*, i32** %16, align 8
  %187 = icmp eq i32* %185, %186
  br i1 %187, label %192, label %188

188:                                              ; preds = %184
  %189 = load i32*, i32** %14, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = icmp eq i32* %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %188, %184, %180
  %193 = load i32, i32* %26, align 4
  %194 = call i32* @mpi_alloc_limb_space(i32 %193)
  store i32* %194, i32** %14, align 8
  %195 = load i32*, i32** %14, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %543

198:                                              ; preds = %192
  store i32 1, i32* %29, align 4
  br label %209

199:                                              ; preds = %188
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = load i32, i32* %26, align 4
  %202 = call i64 @mpi_resize(%struct.TYPE_8__* %200, i32 %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %543

205:                                              ; preds = %199
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  store i32* %208, i32** %14, align 8
  br label %209

209:                                              ; preds = %205, %198
  br label %260

210:                                              ; preds = %174
  %211 = load i32*, i32** %14, align 8
  %212 = load i32*, i32** %17, align 8
  %213 = icmp eq i32* %211, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %210
  %215 = load i32*, i32** %10, align 8
  %216 = call i32 @BUG_ON(i32* %215)
  %217 = load i32, i32* %20, align 4
  %218 = call i32* @mpi_alloc_limb_space(i32 %217)
  store i32* %218, i32** %10, align 8
  store i32* %218, i32** %17, align 8
  %219 = load i32*, i32** %17, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %214
  br label %543

222:                                              ; preds = %214
  %223 = load i32*, i32** %17, align 8
  %224 = load i32*, i32** %14, align 8
  %225 = load i32, i32* %20, align 4
  %226 = call i32 @MPN_COPY(i32* %223, i32* %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %210
  %228 = load i32*, i32** %14, align 8
  %229 = load i32*, i32** %15, align 8
  %230 = icmp eq i32* %228, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %227
  %232 = load i32, i32* %18, align 4
  %233 = call i32* @mpi_alloc_limb_space(i32 %232)
  store i32* %233, i32** %11, align 8
  store i32* %233, i32** %15, align 8
  %234 = load i32*, i32** %15, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %231
  br label %543

237:                                              ; preds = %231
  %238 = load i32*, i32** %15, align 8
  %239 = load i32*, i32** %14, align 8
  %240 = load i32, i32* %18, align 4
  %241 = call i32 @MPN_COPY(i32* %238, i32* %239, i32 %240)
  br label %242

242:                                              ; preds = %237, %227
  %243 = load i32*, i32** %14, align 8
  %244 = load i32*, i32** %16, align 8
  %245 = icmp eq i32* %243, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %242
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @BUG_ON(i32* %247)
  %249 = load i32, i32* %19, align 4
  %250 = call i32* @mpi_alloc_limb_space(i32 %249)
  store i32* %250, i32** %9, align 8
  store i32* %250, i32** %16, align 8
  %251 = load i32*, i32** %16, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %246
  br label %543

254:                                              ; preds = %246
  %255 = load i32*, i32** %16, align 8
  %256 = load i32*, i32** %14, align 8
  %257 = load i32, i32* %19, align 4
  %258 = call i32 @MPN_COPY(i32* %255, i32* %256, i32 %257)
  br label %259

259:                                              ; preds = %254, %242
  br label %260

260:                                              ; preds = %259, %209
  %261 = load i32*, i32** %14, align 8
  %262 = load i32*, i32** %17, align 8
  %263 = load i32, i32* %20, align 4
  %264 = call i32 @MPN_COPY(i32* %261, i32* %262, i32 %263)
  %265 = load i32, i32* %20, align 4
  store i32 %265, i32* %21, align 4
  %266 = load i32, i32* %24, align 4
  store i32 %266, i32* %25, align 4
  %267 = load i32, i32* %19, align 4
  %268 = add nsw i32 %267, 1
  %269 = mul nsw i32 2, %268
  %270 = call i32* @mpi_alloc_limb_space(i32 %269)
  store i32* %270, i32** %12, align 8
  store i32* %270, i32** %33, align 8
  %271 = load i32*, i32** %33, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %260
  br label %543

274:                                              ; preds = %260
  %275 = call i32 @memset(%struct.karatsuba_ctx* %37, i32 0, i32 4)
  %276 = load i32*, i32** %15, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 1
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br label %286

286:                                              ; preds = %281, %274
  %287 = phi i1 [ false, %274 ], [ %285, %281 ]
  %288 = zext i1 %287 to i32
  store i32 %288, i32* %28, align 4
  %289 = load i32, i32* %18, align 4
  %290 = sub nsw i32 %289, 1
  store i32 %290, i32* %32, align 4
  %291 = load i32*, i32** %15, align 8
  %292 = load i32, i32* %32, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %35, align 4
  %296 = load i32, i32* %34, align 4
  %297 = load i32, i32* %35, align 4
  %298 = call i32 @count_leading_zeros(i32 %296, i32 %297)
  %299 = load i32, i32* %35, align 4
  %300 = load i32, i32* %34, align 4
  %301 = shl i32 %299, %300
  %302 = shl i32 %301, 1
  store i32 %302, i32* %35, align 4
  %303 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  %304 = sub nsw i32 %303, 1
  %305 = load i32, i32* %34, align 4
  %306 = sub nsw i32 %304, %305
  store i32 %306, i32* %34, align 4
  br label %307

307:                                              ; preds = %438, %286
  br label %308

308:                                              ; preds = %427, %307
  %309 = load i32, i32* %34, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %432

311:                                              ; preds = %308
  %312 = load i32, i32* %21, align 4
  %313 = load i32, i32* @KARATSUBA_THRESHOLD, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = load i32*, i32** %33, align 8
  %317 = load i32*, i32** %14, align 8
  %318 = load i32, i32* %21, align 4
  %319 = call i32 @mpih_sqr_n_basecase(i32* %316, i32* %317, i32 %318)
  br label %355

320:                                              ; preds = %311
  %321 = load i32*, i32** %13, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %332, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %21, align 4
  %325 = mul nsw i32 2, %324
  store i32 %325, i32* %30, align 4
  %326 = load i32, i32* %30, align 4
  %327 = call i32* @mpi_alloc_limb_space(i32 %326)
  store i32* %327, i32** %13, align 8
  %328 = load i32*, i32** %13, align 8
  %329 = icmp ne i32* %328, null
  br i1 %329, label %331, label %330

330:                                              ; preds = %323
  br label %543

331:                                              ; preds = %323
  br label %349

332:                                              ; preds = %320
  %333 = load i32, i32* %30, align 4
  %334 = load i32, i32* %21, align 4
  %335 = mul nsw i32 2, %334
  %336 = icmp slt i32 %333, %335
  br i1 %336, label %337, label %348

337:                                              ; preds = %332
  %338 = load i32*, i32** %13, align 8
  %339 = call i32 @mpi_free_limb_space(i32* %338)
  %340 = load i32, i32* %21, align 4
  %341 = mul nsw i32 2, %340
  store i32 %341, i32* %30, align 4
  %342 = load i32, i32* %30, align 4
  %343 = call i32* @mpi_alloc_limb_space(i32 %342)
  store i32* %343, i32** %13, align 8
  %344 = load i32*, i32** %13, align 8
  %345 = icmp ne i32* %344, null
  br i1 %345, label %347, label %346

346:                                              ; preds = %337
  br label %543

347:                                              ; preds = %337
  br label %348

348:                                              ; preds = %347, %332
  br label %349

349:                                              ; preds = %348, %331
  %350 = load i32*, i32** %33, align 8
  %351 = load i32*, i32** %14, align 8
  %352 = load i32, i32* %21, align 4
  %353 = load i32*, i32** %13, align 8
  %354 = call i32 @mpih_sqr_n(i32* %350, i32* %351, i32 %352, i32* %353)
  br label %355

355:                                              ; preds = %349, %315
  %356 = load i32, i32* %21, align 4
  %357 = mul nsw i32 2, %356
  store i32 %357, i32* %39, align 4
  %358 = load i32, i32* %39, align 4
  %359 = load i32, i32* %19, align 4
  %360 = icmp sgt i32 %358, %359
  br i1 %360, label %361, label %372

361:                                              ; preds = %355
  %362 = load i32*, i32** %33, align 8
  %363 = load i32, i32* %19, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32*, i32** %33, align 8
  %367 = load i32, i32* %39, align 4
  %368 = load i32*, i32** %16, align 8
  %369 = load i32, i32* %19, align 4
  %370 = call i32 @mpihelp_divrem(i32* %365, i32 0, i32* %366, i32 %367, i32* %368, i32 %369)
  %371 = load i32, i32* %19, align 4
  store i32 %371, i32* %39, align 4
  br label %372

372:                                              ; preds = %361, %355
  %373 = load i32*, i32** %14, align 8
  store i32* %373, i32** %38, align 8
  %374 = load i32*, i32** %33, align 8
  store i32* %374, i32** %14, align 8
  %375 = load i32*, i32** %38, align 8
  store i32* %375, i32** %33, align 8
  %376 = load i32, i32* %39, align 4
  store i32 %376, i32* %21, align 4
  %377 = load i32, i32* %35, align 4
  %378 = sext i32 %377 to i64
  %379 = icmp slt i64 %378, 0
  br i1 %379, label %380, label %427

380:                                              ; preds = %372
  %381 = load i32, i32* %20, align 4
  %382 = load i32, i32* @KARATSUBA_THRESHOLD, align 4
  %383 = icmp slt i32 %381, %382
  br i1 %383, label %384, label %394

384:                                              ; preds = %380
  %385 = load i32*, i32** %33, align 8
  %386 = load i32*, i32** %14, align 8
  %387 = load i32, i32* %21, align 4
  %388 = load i32*, i32** %17, align 8
  %389 = load i32, i32* %20, align 4
  %390 = call i64 @mpihelp_mul(i32* %385, i32* %386, i32 %387, i32* %388, i32 %389, i32* %40)
  %391 = icmp slt i64 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %384
  br label %543

393:                                              ; preds = %384
  br label %404

394:                                              ; preds = %380
  %395 = load i32*, i32** %33, align 8
  %396 = load i32*, i32** %14, align 8
  %397 = load i32, i32* %21, align 4
  %398 = load i32*, i32** %17, align 8
  %399 = load i32, i32* %20, align 4
  %400 = call i64 @mpihelp_mul_karatsuba_case(i32* %395, i32* %396, i32 %397, i32* %398, i32 %399, %struct.karatsuba_ctx* %37)
  %401 = icmp slt i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %394
  br label %543

403:                                              ; preds = %394
  br label %404

404:                                              ; preds = %403, %393
  %405 = load i32, i32* %21, align 4
  %406 = load i32, i32* %20, align 4
  %407 = add nsw i32 %405, %406
  store i32 %407, i32* %39, align 4
  %408 = load i32, i32* %39, align 4
  %409 = load i32, i32* %19, align 4
  %410 = icmp sgt i32 %408, %409
  br i1 %410, label %411, label %422

411:                                              ; preds = %404
  %412 = load i32*, i32** %33, align 8
  %413 = load i32, i32* %19, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32*, i32** %33, align 8
  %417 = load i32, i32* %39, align 4
  %418 = load i32*, i32** %16, align 8
  %419 = load i32, i32* %19, align 4
  %420 = call i32 @mpihelp_divrem(i32* %415, i32 0, i32* %416, i32 %417, i32* %418, i32 %419)
  %421 = load i32, i32* %19, align 4
  store i32 %421, i32* %39, align 4
  br label %422

422:                                              ; preds = %411, %404
  %423 = load i32*, i32** %14, align 8
  store i32* %423, i32** %38, align 8
  %424 = load i32*, i32** %33, align 8
  store i32* %424, i32** %14, align 8
  %425 = load i32*, i32** %38, align 8
  store i32* %425, i32** %33, align 8
  %426 = load i32, i32* %39, align 4
  store i32 %426, i32* %21, align 4
  br label %427

427:                                              ; preds = %422, %372
  %428 = load i32, i32* %35, align 4
  %429 = shl i32 %428, 1
  store i32 %429, i32* %35, align 4
  %430 = load i32, i32* %34, align 4
  %431 = add nsw i32 %430, -1
  store i32 %431, i32* %34, align 4
  br label %308

432:                                              ; preds = %308
  %433 = load i32, i32* %32, align 4
  %434 = add nsw i32 %433, -1
  store i32 %434, i32* %32, align 4
  %435 = load i32, i32* %32, align 4
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %432
  br label %445

438:                                              ; preds = %432
  %439 = load i32*, i32** %15, align 8
  %440 = load i32, i32* %32, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %35, align 4
  %444 = load i32, i32* @BITS_PER_MPI_LIMB, align 4
  store i32 %444, i32* %34, align 4
  br label %307

445:                                              ; preds = %437
  %446 = load i32, i32* %27, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %470

448:                                              ; preds = %445
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 2
  %451 = load i32*, i32** %450, align 8
  %452 = load i32*, i32** %14, align 8
  %453 = load i32, i32* %21, align 4
  %454 = load i32, i32* %27, align 4
  %455 = call i32 @mpihelp_lshift(i32* %451, i32* %452, i32 %453, i32 %454)
  store i32 %455, i32* %36, align 4
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  store i32* %458, i32** %14, align 8
  %459 = load i32, i32* %36, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %469

461:                                              ; preds = %448
  %462 = load i32, i32* %36, align 4
  %463 = load i32*, i32** %14, align 8
  %464 = load i32, i32* %21, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  store i32 %462, i32* %466, align 4
  %467 = load i32, i32* %21, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %21, align 4
  br label %469

469:                                              ; preds = %461, %448
  br label %480

470:                                              ; preds = %445
  %471 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %471, i32 0, i32 2
  %473 = load i32*, i32** %472, align 8
  %474 = load i32*, i32** %14, align 8
  %475 = load i32, i32* %21, align 4
  %476 = call i32 @MPN_COPY(i32* %473, i32* %474, i32 %475)
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 2
  %479 = load i32*, i32** %478, align 8
  store i32* %479, i32** %14, align 8
  br label %480

480:                                              ; preds = %470, %469
  %481 = load i32, i32* %21, align 4
  %482 = load i32, i32* %19, align 4
  %483 = icmp sge i32 %481, %482
  br i1 %483, label %484, label %495

484:                                              ; preds = %480
  %485 = load i32*, i32** %14, align 8
  %486 = load i32, i32* %19, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32*, i32** %14, align 8
  %490 = load i32, i32* %21, align 4
  %491 = load i32*, i32** %16, align 8
  %492 = load i32, i32* %19, align 4
  %493 = call i32 @mpihelp_divrem(i32* %488, i32 0, i32* %489, i32 %490, i32* %491, i32 %492)
  %494 = load i32, i32* %19, align 4
  store i32 %494, i32* %21, align 4
  br label %495

495:                                              ; preds = %484, %480
  %496 = load i32, i32* %27, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %504

498:                                              ; preds = %495
  %499 = load i32*, i32** %14, align 8
  %500 = load i32*, i32** %14, align 8
  %501 = load i32, i32* %21, align 4
  %502 = load i32, i32* %27, align 4
  %503 = call i32 @mpihelp_rshift(i32* %499, i32* %500, i32 %501, i32 %502)
  br label %504

504:                                              ; preds = %498, %495
  %505 = load i32*, i32** %14, align 8
  %506 = load i32, i32* %21, align 4
  %507 = call i32 @MPN_NORMALIZE(i32* %505, i32 %506)
  %508 = call i32 @mpihelp_release_karatsuba_ctx(%struct.karatsuba_ctx* %37)
  %509 = load i32, i32* %28, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %535

511:                                              ; preds = %504
  %512 = load i32, i32* %21, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %535

514:                                              ; preds = %511
  %515 = load i32, i32* %27, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %523

517:                                              ; preds = %514
  %518 = load i32*, i32** %16, align 8
  %519 = load i32*, i32** %16, align 8
  %520 = load i32, i32* %19, align 4
  %521 = load i32, i32* %27, align 4
  %522 = call i32 @mpihelp_rshift(i32* %518, i32* %519, i32 %520, i32 %521)
  br label %523

523:                                              ; preds = %517, %514
  %524 = load i32*, i32** %14, align 8
  %525 = load i32*, i32** %16, align 8
  %526 = load i32, i32* %19, align 4
  %527 = load i32*, i32** %14, align 8
  %528 = load i32, i32* %21, align 4
  %529 = call i32 @mpihelp_sub(i32* %524, i32* %525, i32 %526, i32* %527, i32 %528)
  %530 = load i32, i32* %19, align 4
  store i32 %530, i32* %21, align 4
  %531 = load i32, i32* %23, align 4
  store i32 %531, i32* %25, align 4
  %532 = load i32*, i32** %14, align 8
  %533 = load i32, i32* %21, align 4
  %534 = call i32 @MPN_NORMALIZE(i32* %532, i32 %533)
  br label %535

535:                                              ; preds = %523, %511, %504
  %536 = load i32, i32* %21, align 4
  %537 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 0
  store i32 %536, i32* %538, align 8
  %539 = load i32, i32* %25, align 4
  %540 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 1
  store i32 %539, i32* %541, align 4
  br label %542

542:                                              ; preds = %535, %169, %83
  store i32 0, i32* %31, align 4
  br label %543

543:                                              ; preds = %542, %402, %392, %346, %330, %273, %253, %236, %221, %204, %197, %141, %96
  %544 = load i32, i32* %29, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %551

546:                                              ; preds = %543
  %547 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %548 = load i32*, i32** %14, align 8
  %549 = load i32, i32* %26, align 4
  %550 = call i32 @mpi_assign_limb_space(%struct.TYPE_8__* %547, i32* %548, i32 %549)
  br label %551

551:                                              ; preds = %546, %543
  %552 = load i32*, i32** %9, align 8
  %553 = icmp ne i32* %552, null
  br i1 %553, label %554, label %557

554:                                              ; preds = %551
  %555 = load i32*, i32** %9, align 8
  %556 = call i32 @mpi_free_limb_space(i32* %555)
  br label %557

557:                                              ; preds = %554, %551
  %558 = load i32*, i32** %10, align 8
  %559 = icmp ne i32* %558, null
  br i1 %559, label %560, label %563

560:                                              ; preds = %557
  %561 = load i32*, i32** %10, align 8
  %562 = call i32 @mpi_free_limb_space(i32* %561)
  br label %563

563:                                              ; preds = %560, %557
  %564 = load i32*, i32** %11, align 8
  %565 = icmp ne i32* %564, null
  br i1 %565, label %566, label %569

566:                                              ; preds = %563
  %567 = load i32*, i32** %11, align 8
  %568 = call i32 @mpi_free_limb_space(i32* %567)
  br label %569

569:                                              ; preds = %566, %563
  %570 = load i32*, i32** %12, align 8
  %571 = icmp ne i32* %570, null
  br i1 %571, label %572, label %575

572:                                              ; preds = %569
  %573 = load i32*, i32** %12, align 8
  %574 = call i32 @mpi_free_limb_space(i32* %573)
  br label %575

575:                                              ; preds = %572, %569
  %576 = load i32*, i32** %13, align 8
  %577 = icmp ne i32* %576, null
  br i1 %577, label %578, label %581

578:                                              ; preds = %575
  %579 = load i32*, i32** %13, align 8
  %580 = call i32 @mpi_free_limb_space(i32* %579)
  br label %581

581:                                              ; preds = %578, %575
  %582 = load i32, i32* %31, align 4
  ret i32 %582
}

declare dso_local i32* @mpi_alloc_limb_space(i32) #1

declare dso_local i32 @count_leading_zeros(i32, i32) #1

declare dso_local i32 @mpihelp_lshift(i32*, i32*, i32, i32) #1

declare dso_local i32 @MPN_COPY(i32*, i32*, i32) #1

declare dso_local i32 @mpihelp_divrem(i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @MPN_NORMALIZE(i32*, i32) #1

declare dso_local i64 @mpi_resize(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @BUG_ON(i32*) #1

declare dso_local i32 @memset(%struct.karatsuba_ctx*, i32, i32) #1

declare dso_local i32 @mpih_sqr_n_basecase(i32*, i32*, i32) #1

declare dso_local i32 @mpi_free_limb_space(i32*) #1

declare dso_local i32 @mpih_sqr_n(i32*, i32*, i32, i32*) #1

declare dso_local i64 @mpihelp_mul(i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @mpihelp_mul_karatsuba_case(i32*, i32*, i32, i32*, i32, %struct.karatsuba_ctx*) #1

declare dso_local i32 @mpihelp_rshift(i32*, i32*, i32, i32) #1

declare dso_local i32 @mpihelp_release_karatsuba_ctx(%struct.karatsuba_ctx*) #1

declare dso_local i32 @mpihelp_sub(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mpi_assign_limb_space(%struct.TYPE_8__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
