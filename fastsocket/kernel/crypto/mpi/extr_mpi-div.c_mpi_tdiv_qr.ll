; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-div.c_mpi_tdiv_qr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpi-div.c_mpi_tdiv_qr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_tdiv_qr(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca [5 x i64*], align 16
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %16, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %19, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %42, %45
  store i32 %46, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %47 = getelementptr inbounds [5 x i64*], [5 x i64*]* %23, i64 0, i64 0
  %48 = call i32 @memset(i64** %47, i32 0, i32 40)
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %18, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call i64 @mpi_resize(%struct.TYPE_7__* %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  br label %342

56:                                               ; preds = %4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = icmp ne %struct.TYPE_7__* %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @MPN_COPY(i64* %79, i64* %82, i32 %83)
  br label %85

85:                                               ; preds = %66, %62
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = icmp ne %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %85
  store i32 0, i32* %5, align 4
  br label %355

94:                                               ; preds = %56
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = icmp ne %struct.TYPE_7__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = load i32, i32* %17, align 4
  %100 = call i64 @mpi_resize(%struct.TYPE_7__* %98, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %342

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %94
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  store i64* %107, i64** %11, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  store i64* %110, i64** %12, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  store i64* %113, i64** %14, align 8
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %167

116:                                              ; preds = %104
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = icmp ne %struct.TYPE_7__* %117, null
  br i1 %118, label %119, label %146

119:                                              ; preds = %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  store i64* %122, i64** %13, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = load i64*, i64** %11, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i64*, i64** %12, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @mpihelp_divmod_1(i64* %123, i64* %124, i32 %125, i64 %128)
  store i64 %129, i64* %25, align 8
  %130 = load i64*, i64** %13, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %130, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %17, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %153

146:                                              ; preds = %116
  %147 = load i64*, i64** %11, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i64*, i64** %12, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @mpihelp_mod_1(i64* %147, i32 %148, i64 %151)
  store i64 %152, i64* %25, align 8
  br label %153

153:                                              ; preds = %146, %119
  %154 = load i64, i64* %25, align 8
  %155 = load i64*, i64** %14, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %25, align 8
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  store i32 0, i32* %5, align 4
  br label %355

167:                                              ; preds = %104
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %169 = icmp ne %struct.TYPE_7__* %168, null
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  store i64* %173, i64** %13, align 8
  %174 = load i64*, i64** %13, align 8
  %175 = load i64*, i64** %11, align 8
  %176 = icmp eq i64* %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %170
  %178 = load i32, i32* %15, align 4
  %179 = call i64* @mpi_alloc_limb_space(i32 %178)
  %180 = load i32, i32* %24, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %24, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds [5 x i64*], [5 x i64*]* %23, i64 0, i64 %182
  store i64* %179, i64** %183, align 8
  store i64* %179, i64** %11, align 8
  %184 = load i64*, i64** %11, align 8
  %185 = load i64*, i64** %13, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @MPN_COPY(i64* %184, i64* %185, i32 %186)
  br label %188

188:                                              ; preds = %177, %170
  br label %194

189:                                              ; preds = %167
  %190 = load i64*, i64** %14, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  store i64* %193, i64** %13, align 8
  br label %194

194:                                              ; preds = %189, %188
  %195 = load i32, i32* %21, align 4
  %196 = load i64*, i64** %12, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %196, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @count_leading_zeros(i32 %195, i64 %201)
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %240

205:                                              ; preds = %194
  %206 = load i32, i32* %16, align 4
  %207 = call i64* @mpi_alloc_limb_space(i32 %206)
  %208 = load i32, i32* %24, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %24, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds [5 x i64*], [5 x i64*]* %23, i64 0, i64 %210
  store i64* %207, i64** %211, align 8
  store i64* %207, i64** %26, align 8
  %212 = load i64*, i64** %26, align 8
  %213 = icmp ne i64* %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %205
  br label %342

215:                                              ; preds = %205
  %216 = load i64*, i64** %26, align 8
  %217 = load i64*, i64** %12, align 8
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* %21, align 4
  %220 = call i64 @mpihelp_lshift(i64* %216, i64* %217, i32 %218, i32 %219)
  %221 = load i64*, i64** %26, align 8
  store i64* %221, i64** %12, align 8
  %222 = load i64*, i64** %14, align 8
  %223 = load i64*, i64** %11, align 8
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %21, align 4
  %226 = call i64 @mpihelp_lshift(i64* %222, i64* %223, i32 %224, i32 %225)
  store i64 %226, i64* %27, align 8
  %227 = load i64, i64* %27, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %215
  %230 = load i64, i64* %27, align 8
  %231 = load i64*, i64** %14, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  store i64 %230, i64* %234, align 8
  %235 = load i32, i32* %15, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %18, align 4
  br label %239

237:                                              ; preds = %215
  %238 = load i32, i32* %15, align 4
  store i32 %238, i32* %18, align 4
  br label %239

239:                                              ; preds = %237, %229
  br label %278

240:                                              ; preds = %194
  %241 = load i64*, i64** %12, align 8
  %242 = load i64*, i64** %14, align 8
  %243 = icmp eq i64* %241, %242
  br i1 %243, label %251, label %244

244:                                              ; preds = %240
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %246 = icmp ne %struct.TYPE_7__* %245, null
  br i1 %246, label %247, label %267

247:                                              ; preds = %244
  %248 = load i64*, i64** %12, align 8
  %249 = load i64*, i64** %13, align 8
  %250 = icmp eq i64* %248, %249
  br i1 %250, label %251, label %267

251:                                              ; preds = %247, %240
  %252 = load i32, i32* %16, align 4
  %253 = call i64* @mpi_alloc_limb_space(i32 %252)
  %254 = load i32, i32* %24, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %24, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds [5 x i64*], [5 x i64*]* %23, i64 0, i64 %256
  store i64* %253, i64** %257, align 8
  store i64* %253, i64** %28, align 8
  %258 = load i64*, i64** %28, align 8
  %259 = icmp ne i64* %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %251
  br label %342

261:                                              ; preds = %251
  %262 = load i64*, i64** %28, align 8
  %263 = load i64*, i64** %12, align 8
  %264 = load i32, i32* %16, align 4
  %265 = call i32 @MPN_COPY(i64* %262, i64* %263, i32 %264)
  %266 = load i64*, i64** %28, align 8
  store i64* %266, i64** %12, align 8
  br label %267

267:                                              ; preds = %261, %247, %244
  %268 = load i64*, i64** %14, align 8
  %269 = load i64*, i64** %11, align 8
  %270 = icmp ne i64* %268, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load i64*, i64** %14, align 8
  %273 = load i64*, i64** %11, align 8
  %274 = load i32, i32* %15, align 4
  %275 = call i32 @MPN_COPY(i64* %272, i64* %273, i32 %274)
  br label %276

276:                                              ; preds = %271, %267
  %277 = load i32, i32* %15, align 4
  store i32 %277, i32* %18, align 4
  br label %278

278:                                              ; preds = %276, %239
  %279 = load i64*, i64** %13, align 8
  %280 = load i64*, i64** %14, align 8
  %281 = load i32, i32* %18, align 4
  %282 = load i64*, i64** %12, align 8
  %283 = load i32, i32* %16, align 4
  %284 = call i64 @mpihelp_divrem(i64* %279, i32 0, i64* %280, i32 %281, i64* %282, i32 %283)
  store i64 %284, i64* %22, align 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %286 = icmp ne %struct.TYPE_7__* %285, null
  br i1 %286, label %287, label %308

287:                                              ; preds = %278
  %288 = load i32, i32* %18, align 4
  %289 = load i32, i32* %16, align 4
  %290 = sub nsw i32 %288, %289
  store i32 %290, i32* %17, align 4
  %291 = load i64, i64* %22, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %287
  %294 = load i64, i64* %22, align 8
  %295 = load i64*, i64** %13, align 8
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  store i64 %294, i64* %298, align 8
  %299 = load i32, i32* %17, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %17, align 4
  br label %301

301:                                              ; preds = %293, %287
  %302 = load i32, i32* %17, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 8
  %305 = load i32, i32* %20, align 4
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  br label %308

308:                                              ; preds = %301, %278
  %309 = load i32, i32* %16, align 4
  store i32 %309, i32* %18, align 4
  %310 = load i64*, i64** %14, align 8
  %311 = load i32, i32* %18, align 4
  %312 = call i32 @MPN_NORMALIZE(i64* %310, i32 %311)
  %313 = load i32, i32* %21, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %335

315:                                              ; preds = %308
  %316 = load i32, i32* %18, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %335

318:                                              ; preds = %315
  %319 = load i64*, i64** %14, align 8
  %320 = load i64*, i64** %14, align 8
  %321 = load i32, i32* %18, align 4
  %322 = load i32, i32* %21, align 4
  %323 = call i32 @mpihelp_rshift(i64* %319, i64* %320, i32 %321, i32 %322)
  %324 = load i64*, i64** %14, align 8
  %325 = load i32, i32* %18, align 4
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %324, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = icmp eq i64 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i32 1, i32 0
  %333 = load i32, i32* %18, align 4
  %334 = sub nsw i32 %333, %332
  store i32 %334, i32* %18, align 4
  br label %335

335:                                              ; preds = %318, %315, %308
  %336 = load i32, i32* %18, align 4
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  %339 = load i32, i32* %19, align 4
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 4
  store i32 0, i32* %10, align 4
  br label %342

342:                                              ; preds = %335, %260, %214, %102, %55
  br label %343

343:                                              ; preds = %346, %342
  %344 = load i32, i32* %24, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  %347 = load i32, i32* %24, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %24, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [5 x i64*], [5 x i64*]* %23, i64 0, i64 %349
  %351 = load i64*, i64** %350, align 8
  %352 = call i32 @mpi_free_limb_space(i64* %351)
  br label %343

353:                                              ; preds = %343
  %354 = load i32, i32* %10, align 4
  store i32 %354, i32* %5, align 4
  br label %355

355:                                              ; preds = %353, %153, %93
  %356 = load i32, i32* %5, align 4
  ret i32 %356
}

declare dso_local i32 @memset(i64**, i32, i32) #1

declare dso_local i64 @mpi_resize(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @MPN_COPY(i64*, i64*, i32) #1

declare dso_local i64 @mpihelp_divmod_1(i64*, i64*, i32, i64) #1

declare dso_local i64 @mpihelp_mod_1(i64*, i32, i64) #1

declare dso_local i64* @mpi_alloc_limb_space(i32) #1

declare dso_local i32 @count_leading_zeros(i32, i64) #1

declare dso_local i64 @mpihelp_lshift(i64*, i64*, i32, i32) #1

declare dso_local i64 @mpihelp_divrem(i64*, i32, i64*, i32, i64*, i32) #1

declare dso_local i32 @MPN_NORMALIZE(i64*, i32) #1

declare dso_local i32 @mpihelp_rshift(i64*, i64*, i32, i32) #1

declare dso_local i32 @mpi_free_limb_space(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
