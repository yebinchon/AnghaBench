; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_ieee_fpe_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh2a/extr_fpu.c_ieee_fpe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.pt_regs = type { i32, i32, i32, i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@FPSCR_FPU_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @ieee_fpe_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_fpe_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.task_struct*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i16*
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %4, align 2
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %34 = load i16, i16* %4, align 2
  %35 = zext i16 %34 to i32
  %36 = ashr i32 %35, 12
  %37 = and i32 %36, 15
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds i32, i32* %33, i64 1
  %39 = load i16, i16* %4, align 2
  %40 = zext i16 %39 to i32
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 15
  store i32 %42, i32* %38, align 4
  %43 = getelementptr inbounds i32, i32* %38, i64 1
  %44 = load i16, i16* %4, align 2
  %45 = zext i16 %44 to i32
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 15
  store i32 %47, i32* %43, align 4
  %48 = getelementptr inbounds i32, i32* %43, i64 1
  %49 = load i16, i16* %4, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 15
  store i32 %51, i32* %48, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %67, label %55

55:                                               ; preds = %1
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 11
  br i1 %66, label %67, label %74

67:                                               ; preds = %63, %1
  %68 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 4
  %72 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %63, %59, %55
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %82, label %103

82:                                               ; preds = %78, %74
  %83 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 4
  %87 = load i16, i16* %4, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %88, 4095
  %90 = shl i32 %89, 4
  %91 = trunc i32 %90 to i16
  %92 = sext i16 %91 to i32
  %93 = ashr i32 %92, 3
  %94 = add nsw i32 %86, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %6, align 8
  %96 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i16*
  %102 = load i16, i16* %101, align 2
  store i16 %102, i16* %5, align 2
  br label %283

103:                                              ; preds = %78
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %107, label %144

107:                                              ; preds = %103
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 13
  br i1 %110, label %111, label %144

111:                                              ; preds = %107
  %112 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 4
  %122 = load i16, i16* %4, align 2
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, 255
  %125 = trunc i32 %124 to i8
  %126 = sext i8 %125 to i32
  %127 = shl i32 %126, 1
  %128 = add nsw i32 %121, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %6, align 8
  br label %136

130:                                              ; preds = %111
  %131 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %130, %117
  %137 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %138 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i16*
  %143 = load i16, i16* %142, align 2
  store i16 %143, i16* %5, align 2
  br label %282

144:                                              ; preds = %107, %103
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = icmp eq i32 %146, 8
  br i1 %147, label %148, label %185

148:                                              ; preds = %144
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 15
  br i1 %151, label %152, label %185

152:                                              ; preds = %148
  %153 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %160 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 4
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %6, align 8
  br label %177

164:                                              ; preds = %152
  %165 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %166 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 4
  %169 = load i16, i16* %4, align 2
  %170 = zext i16 %169 to i32
  %171 = and i32 %170, 255
  %172 = trunc i32 %171 to i8
  %173 = sext i8 %172 to i32
  %174 = shl i32 %173, 1
  %175 = add nsw i32 %168, %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %6, align 8
  br label %177

177:                                              ; preds = %164, %158
  %178 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i16*
  %184 = load i16, i16* %183, align 2
  store i16 %184, i16* %5, align 2
  br label %281

185:                                              ; preds = %148, %144
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %187 = load i32, i32* %186, align 16
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %189, label %217

189:                                              ; preds = %185
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 11
  br i1 %192, label %193, label %217

193:                                              ; preds = %189
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %217

201:                                              ; preds = %197, %193
  %202 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %203 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %202, i32 0, i32 3
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %204, i64 %207
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %6, align 8
  %210 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %211 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i16*
  %216 = load i16, i16* %215, align 2
  store i16 %216, i16* %5, align 2
  br label %280

217:                                              ; preds = %197, %189, %185
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %219 = load i32, i32* %218, align 16
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %255

221:                                              ; preds = %217
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 3
  br i1 %224, label %225, label %255

225:                                              ; preds = %221
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %255

233:                                              ; preds = %229, %225
  %234 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %235 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 4
  %238 = sext i32 %237 to i64
  %239 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %240 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %239, i32 0, i32 3
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %241, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = add i64 %238, %246
  store i64 %247, i64* %6, align 8
  %248 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %249 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 2
  %252 = sext i32 %251 to i64
  %253 = inttoptr i64 %252 to i16*
  %254 = load i16, i16* %253, align 2
  store i16 %254, i16* %5, align 2
  br label %279

255:                                              ; preds = %229, %221, %217
  %256 = load i16, i16* %4, align 2
  %257 = zext i16 %256 to i32
  %258 = icmp eq i32 %257, 11
  br i1 %258, label %259, label %271

259:                                              ; preds = %255
  %260 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %261 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %6, align 8
  %264 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %265 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, 2
  %268 = sext i32 %267 to i64
  %269 = inttoptr i64 %268 to i16*
  %270 = load i16, i16* %269, align 2
  store i16 %270, i16* %5, align 2
  br label %278

271:                                              ; preds = %255
  %272 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %273 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, 2
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %6, align 8
  %277 = load i16, i16* %4, align 2
  store i16 %277, i16* %5, align 2
  br label %278

278:                                              ; preds = %271, %259
  br label %279

279:                                              ; preds = %278, %233
  br label %280

280:                                              ; preds = %279, %201
  br label %281

281:                                              ; preds = %280, %177
  br label %282

282:                                              ; preds = %281, %136
  br label %283

283:                                              ; preds = %282, %82
  %284 = load i16, i16* %5, align 2
  %285 = zext i16 %284 to i32
  %286 = and i32 %285, 61951
  %287 = icmp eq i32 %286, 61613
  br i1 %287, label %288, label %315

288:                                              ; preds = %283
  %289 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %289, %struct.task_struct** %8, align 8
  %290 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %291 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = and i32 %295, 131072
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %288
  %299 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %300 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load i16, i16* %5, align 2
  %304 = zext i16 %303 to i32
  %305 = ashr i32 %304, 8
  %306 = and i32 %305, 15
  %307 = trunc i32 %306 to i16
  %308 = call i32 @denormal_to_double(%struct.TYPE_6__* %302, i16 zeroext %307)
  br label %310

309:                                              ; preds = %288
  store i32 0, i32* %2, align 4
  br label %666

310:                                              ; preds = %298
  %311 = load i64, i64* %6, align 8
  %312 = trunc i64 %311 to i32
  %313 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %314 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  store i32 1, i32* %2, align 4
  br label %666

315:                                              ; preds = %283
  %316 = load i16, i16* %5, align 2
  %317 = zext i16 %316 to i32
  %318 = and i32 %317, 61455
  %319 = icmp eq i32 %318, 61442
  br i1 %319, label %320, label %487

320:                                              ; preds = %315
  %321 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %321, %struct.task_struct** %9, align 8
  %322 = load i16, i16* %5, align 2
  %323 = zext i16 %322 to i32
  %324 = ashr i32 %323, 8
  %325 = and i32 %324, 15
  store i32 %325, i32* %11, align 4
  %326 = load i16, i16* %5, align 2
  %327 = zext i16 %326 to i32
  %328 = ashr i32 %327, 4
  %329 = and i32 %328, 15
  store i32 %329, i32* %12, align 4
  %330 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %331 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %11, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %14, align 4
  %340 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %341 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %12, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %15, align 4
  %350 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %351 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* %10, align 4
  %357 = and i32 %356, 524288
  store i32 %357, i32* %13, align 4
  %358 = load i32, i32* %10, align 4
  %359 = and i32 %358, 131072
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %442

361:                                              ; preds = %320
  %362 = load i32, i32* %13, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %442

364:                                              ; preds = %361
  %365 = load i32, i32* %14, align 4
  %366 = and i32 %365, 2147483647
  %367 = icmp ult i32 %366, 1048576
  br i1 %367, label %372, label %368

368:                                              ; preds = %364
  %369 = load i32, i32* %15, align 4
  %370 = and i32 %369, 2147483647
  %371 = icmp ult i32 %370, 1048576
  br i1 %371, label %372, label %442

372:                                              ; preds = %368, %364
  %373 = load i32, i32* %14, align 4
  %374 = zext i32 %373 to i64
  %375 = shl i64 %374, 32
  %376 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %377 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %11, align 4
  %383 = add nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = zext i32 %386 to i64
  %388 = or i64 %375, %387
  store i64 %388, i64* %16, align 8
  %389 = load i32, i32* %15, align 4
  %390 = zext i32 %389 to i64
  %391 = shl i64 %390, 32
  %392 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %393 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %12, align 4
  %399 = add nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %397, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  %404 = or i64 %391, %403
  store i64 %404, i64* %17, align 8
  %405 = load i32, i32* %14, align 4
  %406 = and i32 %405, 2147483647
  %407 = icmp uge i32 %406, 1048576
  br i1 %407, label %408, label %412

408:                                              ; preds = %372
  %409 = load i64, i64* %17, align 8
  %410 = load i64, i64* %16, align 8
  %411 = call i64 @denormal_muld(i64 %409, i64 %410)
  store i64 %411, i64* %16, align 8
  br label %416

412:                                              ; preds = %372
  %413 = load i64, i64* %16, align 8
  %414 = load i64, i64* %17, align 8
  %415 = call i64 @denormal_muld(i64 %413, i64 %414)
  store i64 %415, i64* %16, align 8
  br label %416

416:                                              ; preds = %412, %408
  %417 = load i64, i64* %16, align 8
  %418 = ashr i64 %417, 32
  %419 = trunc i64 %418 to i32
  %420 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %421 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %11, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %419, i32* %428, align 4
  %429 = load i64, i64* %16, align 8
  %430 = and i64 %429, 4294967295
  %431 = trunc i64 %430 to i32
  %432 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %433 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %11, align 4
  %439 = add nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  store i32 %431, i32* %441, align 4
  br label %482

442:                                              ; preds = %368, %361, %320
  %443 = load i32, i32* %10, align 4
  %444 = and i32 %443, 131072
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %480

446:                                              ; preds = %442
  %447 = load i32, i32* %13, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %480, label %449

449:                                              ; preds = %446
  %450 = load i32, i32* %14, align 4
  %451 = and i32 %450, 2147483647
  %452 = icmp ult i32 %451, 8388608
  br i1 %452, label %457, label %453

453:                                              ; preds = %449
  %454 = load i32, i32* %15, align 4
  %455 = and i32 %454, 2147483647
  %456 = icmp ult i32 %455, 8388608
  br i1 %456, label %457, label %480

457:                                              ; preds = %453, %449
  %458 = load i32, i32* %14, align 4
  %459 = and i32 %458, 2147483647
  %460 = icmp uge i32 %459, 8388608
  br i1 %460, label %461, label %465

461:                                              ; preds = %457
  %462 = load i32, i32* %15, align 4
  %463 = load i32, i32* %14, align 4
  %464 = call i32 @denormal_mulf(i32 %462, i32 %463)
  store i32 %464, i32* %14, align 4
  br label %469

465:                                              ; preds = %457
  %466 = load i32, i32* %14, align 4
  %467 = load i32, i32* %15, align 4
  %468 = call i32 @denormal_mulf(i32 %466, i32 %467)
  store i32 %468, i32* %14, align 4
  br label %469

469:                                              ; preds = %465, %461
  %470 = load i32, i32* %14, align 4
  %471 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %472 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 1
  %476 = load i32*, i32** %475, align 8
  %477 = load i32, i32* %11, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  store i32 %470, i32* %479, align 4
  br label %481

480:                                              ; preds = %453, %446, %442
  store i32 0, i32* %2, align 4
  br label %666

481:                                              ; preds = %469
  br label %482

482:                                              ; preds = %481, %416
  %483 = load i64, i64* %6, align 8
  %484 = trunc i64 %483 to i32
  %485 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %486 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %485, i32 0, i32 0
  store i32 %484, i32* %486, align 8
  store i32 1, i32* %2, align 4
  br label %666

487:                                              ; preds = %315
  %488 = load i16, i16* %5, align 2
  %489 = zext i16 %488 to i32
  %490 = and i32 %489, 61454
  %491 = icmp eq i32 %490, 61440
  br i1 %491, label %492, label %663

492:                                              ; preds = %487
  %493 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %493, %struct.task_struct** %18, align 8
  %494 = load i16, i16* %5, align 2
  %495 = zext i16 %494 to i32
  %496 = ashr i32 %495, 8
  %497 = and i32 %496, 15
  store i32 %497, i32* %20, align 4
  %498 = load i16, i16* %5, align 2
  %499 = zext i16 %498 to i32
  %500 = ashr i32 %499, 4
  %501 = and i32 %500, 15
  store i32 %501, i32* %21, align 4
  %502 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %503 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 1
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %20, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  store i32 %511, i32* %23, align 4
  %512 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %513 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 1
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %21, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  store i32 %521, i32* %24, align 4
  %522 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %523 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  store i32 %527, i32* %19, align 4
  %528 = load i32, i32* %19, align 4
  %529 = and i32 %528, 524288
  store i32 %529, i32* %22, align 4
  %530 = load i32, i32* %19, align 4
  %531 = and i32 %530, 131072
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %616

533:                                              ; preds = %492
  %534 = load i32, i32* %22, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %616

536:                                              ; preds = %533
  %537 = load i32, i32* %23, align 4
  %538 = and i32 %537, 2147483647
  %539 = icmp ult i32 %538, 1048576
  br i1 %539, label %544, label %540

540:                                              ; preds = %536
  %541 = load i32, i32* %24, align 4
  %542 = and i32 %541, 2147483647
  %543 = icmp ult i32 %542, 1048576
  br i1 %543, label %544, label %616

544:                                              ; preds = %540, %536
  %545 = load i32, i32* %23, align 4
  %546 = zext i32 %545 to i64
  %547 = shl i64 %546, 32
  %548 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %549 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %551, i32 0, i32 1
  %553 = load i32*, i32** %552, align 8
  %554 = load i32, i32* %20, align 4
  %555 = add nsw i32 %554, 1
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %553, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = zext i32 %558 to i64
  %560 = or i64 %547, %559
  store i64 %560, i64* %25, align 8
  %561 = load i32, i32* %24, align 4
  %562 = zext i32 %561 to i64
  %563 = shl i64 %562, 32
  %564 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %565 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %567, i32 0, i32 1
  %569 = load i32*, i32** %568, align 8
  %570 = load i32, i32* %21, align 4
  %571 = add nsw i32 %570, 1
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32* %569, i64 %572
  %574 = load i32, i32* %573, align 4
  %575 = zext i32 %574 to i64
  %576 = or i64 %563, %575
  store i64 %576, i64* %26, align 8
  %577 = load i16, i16* %5, align 2
  %578 = zext i16 %577 to i32
  %579 = and i32 %578, 61455
  %580 = icmp eq i32 %579, 61440
  br i1 %580, label %581, label %585

581:                                              ; preds = %544
  %582 = load i64, i64* %25, align 8
  %583 = load i64, i64* %26, align 8
  %584 = call i64 @denormal_addd(i64 %582, i64 %583)
  store i64 %584, i64* %25, align 8
  br label %590

585:                                              ; preds = %544
  %586 = load i64, i64* %25, align 8
  %587 = load i64, i64* %26, align 8
  %588 = xor i64 %587, -9223372036854775808
  %589 = call i64 @denormal_addd(i64 %586, i64 %588)
  store i64 %589, i64* %25, align 8
  br label %590

590:                                              ; preds = %585, %581
  %591 = load i64, i64* %25, align 8
  %592 = ashr i64 %591, 32
  %593 = trunc i64 %592 to i32
  %594 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %595 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %597, i32 0, i32 1
  %599 = load i32*, i32** %598, align 8
  %600 = load i32, i32* %20, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %599, i64 %601
  store i32 %593, i32* %602, align 4
  %603 = load i64, i64* %25, align 8
  %604 = and i64 %603, 4294967295
  %605 = trunc i64 %604 to i32
  %606 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %607 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %609, i32 0, i32 1
  %611 = load i32*, i32** %610, align 8
  %612 = load i32, i32* %20, align 4
  %613 = add nsw i32 %612, 1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %611, i64 %614
  store i32 %605, i32* %615, align 4
  br label %658

616:                                              ; preds = %540, %533, %492
  %617 = load i32, i32* %19, align 4
  %618 = and i32 %617, 131072
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %656

620:                                              ; preds = %616
  %621 = load i32, i32* %22, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %656, label %623

623:                                              ; preds = %620
  %624 = load i32, i32* %23, align 4
  %625 = and i32 %624, 2147483647
  %626 = icmp ult i32 %625, 8388608
  br i1 %626, label %631, label %627

627:                                              ; preds = %623
  %628 = load i32, i32* %24, align 4
  %629 = and i32 %628, 2147483647
  %630 = icmp ult i32 %629, 8388608
  br i1 %630, label %631, label %656

631:                                              ; preds = %627, %623
  %632 = load i16, i16* %5, align 2
  %633 = zext i16 %632 to i32
  %634 = and i32 %633, 61455
  %635 = icmp eq i32 %634, 61440
  br i1 %635, label %636, label %640

636:                                              ; preds = %631
  %637 = load i32, i32* %23, align 4
  %638 = load i32, i32* %24, align 4
  %639 = call i32 @denormal_addf(i32 %637, i32 %638)
  store i32 %639, i32* %23, align 4
  br label %645

640:                                              ; preds = %631
  %641 = load i32, i32* %23, align 4
  %642 = load i32, i32* %24, align 4
  %643 = xor i32 %642, -2147483648
  %644 = call i32 @denormal_addf(i32 %641, i32 %643)
  store i32 %644, i32* %23, align 4
  br label %645

645:                                              ; preds = %640, %636
  %646 = load i32, i32* %23, align 4
  %647 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %648 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %650, i32 0, i32 1
  %652 = load i32*, i32** %651, align 8
  %653 = load i32, i32* %20, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  store i32 %646, i32* %655, align 4
  br label %657

656:                                              ; preds = %627, %620, %616
  store i32 0, i32* %2, align 4
  br label %666

657:                                              ; preds = %645
  br label %658

658:                                              ; preds = %657, %590
  %659 = load i64, i64* %6, align 8
  %660 = trunc i64 %659 to i32
  %661 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %662 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %661, i32 0, i32 0
  store i32 %660, i32* %662, align 8
  store i32 1, i32* %2, align 4
  br label %666

663:                                              ; preds = %487
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  store i32 0, i32* %2, align 4
  br label %666

666:                                              ; preds = %665, %658, %656, %482, %480, %310, %309
  %667 = load i32, i32* %2, align 4
  ret i32 %667
}

declare dso_local i32 @denormal_to_double(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i64 @denormal_muld(i64, i64) #1

declare dso_local i32 @denormal_mulf(i32, i32) #1

declare dso_local i64 @denormal_addd(i64, i64) #1

declare dso_local i32 @denormal_addf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
