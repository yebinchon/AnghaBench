; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_fpu.c_ieee_fpe_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_fpu.c_ieee_fpe_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.pt_regs = type { i32, i32, i32, i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@FPSCR_CAUSE_ERROR = common dso_local global i32 0, align 4
@FPSCR_DBL_PRECISION = common dso_local global i32 0, align 4
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
  %27 = alloca %struct.task_struct*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca %struct.task_struct*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i16*
  %45 = load i16, i16* %44, align 2
  store i16 %45, i16* %4, align 2
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = ashr i32 %48, 12
  %50 = and i32 %49, 15
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds i32, i32* %46, i64 1
  %52 = load i16, i16* %4, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 15
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds i32, i32* %51, i64 1
  %57 = load i16, i16* %4, align 2
  %58 = zext i16 %57 to i32
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 15
  store i32 %60, i32* %56, align 4
  %61 = getelementptr inbounds i32, i32* %56, i64 1
  %62 = load i16, i16* %4, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 15
  store i32 %64, i32* %61, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp eq i32 %66, 11
  br i1 %67, label %80, label %68

68:                                               ; preds = %1
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %70 = load i32, i32* %69, align 16
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 11
  br i1 %79, label %80, label %87

80:                                               ; preds = %76, %1
  %81 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %82 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 4
  %85 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %76, %72, %68
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %95, label %116

95:                                               ; preds = %91, %87
  %96 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 4
  %100 = load i16, i16* %4, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, 4095
  %103 = shl i32 %102, 4
  %104 = trunc i32 %103 to i16
  %105 = sext i16 %104 to i32
  %106 = ashr i32 %105, 3
  %107 = add nsw i32 %99, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %6, align 8
  %109 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i16*
  %115 = load i16, i16* %114, align 2
  store i16 %115, i16* %5, align 2
  br label %298

116:                                              ; preds = %91
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %118 = load i32, i32* %117, align 16
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %157

120:                                              ; preds = %116
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 13
  br i1 %123, label %124, label %157

124:                                              ; preds = %120
  %125 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %126 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 4
  %135 = load i16, i16* %4, align 2
  %136 = zext i16 %135 to i32
  %137 = and i32 %136, 255
  %138 = trunc i32 %137 to i8
  %139 = sext i8 %138 to i32
  %140 = shl i32 %139, 1
  %141 = add nsw i32 %134, %140
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %6, align 8
  br label %149

143:                                              ; preds = %124
  %144 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %145 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 4
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %143, %130
  %150 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %151 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i16*
  %156 = load i16, i16* %155, align 2
  store i16 %156, i16* %5, align 2
  br label %297

157:                                              ; preds = %120, %116
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = icmp eq i32 %159, 8
  br i1 %160, label %161, label %198

161:                                              ; preds = %157
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 15
  br i1 %164, label %165, label %198

165:                                              ; preds = %161
  %166 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %167 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %173 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %6, align 8
  br label %190

177:                                              ; preds = %165
  %178 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 4
  %182 = load i16, i16* %4, align 2
  %183 = zext i16 %182 to i32
  %184 = and i32 %183, 255
  %185 = trunc i32 %184 to i8
  %186 = sext i8 %185 to i32
  %187 = shl i32 %186, 1
  %188 = add nsw i32 %181, %187
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %6, align 8
  br label %190

190:                                              ; preds = %177, %171
  %191 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %192 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 2
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i16*
  %197 = load i16, i16* %196, align 2
  store i16 %197, i16* %5, align 2
  br label %296

198:                                              ; preds = %161, %157
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %200 = load i32, i32* %199, align 16
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %230

202:                                              ; preds = %198
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 11
  br i1 %205, label %206, label %230

206:                                              ; preds = %202
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 2
  br i1 %213, label %214, label %230

214:                                              ; preds = %210, %206
  %215 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %216 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %215, i32 0, i32 3
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %6, align 8
  %223 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %224 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 2
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i16*
  %229 = load i16, i16* %228, align 2
  store i16 %229, i16* %5, align 2
  br label %295

230:                                              ; preds = %210, %202, %198
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %232 = load i32, i32* %231, align 16
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %268

234:                                              ; preds = %230
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 3
  br i1 %237, label %238, label %268

238:                                              ; preds = %234
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %268

246:                                              ; preds = %242, %238
  %247 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %248 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 4
  %251 = sext i32 %250 to i64
  %252 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %253 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %252, i32 0, i32 3
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %254, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %251, %259
  store i64 %260, i64* %6, align 8
  %261 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %262 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i16*
  %267 = load i16, i16* %266, align 2
  store i16 %267, i16* %5, align 2
  br label %294

268:                                              ; preds = %242, %234, %230
  %269 = load i16, i16* %4, align 2
  %270 = zext i16 %269 to i32
  %271 = icmp eq i32 %270, 11
  br i1 %271, label %272, label %284

272:                                              ; preds = %268
  %273 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %274 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  store i64 %276, i64* %6, align 8
  %277 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %278 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 2
  %281 = sext i32 %280 to i64
  %282 = inttoptr i64 %281 to i16*
  %283 = load i16, i16* %282, align 2
  store i16 %283, i16* %5, align 2
  br label %293

284:                                              ; preds = %268
  %285 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %286 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = load i16, i16* %4, align 2
  %290 = call i64 @instruction_size(i16 zeroext %289)
  %291 = add i64 %288, %290
  store i64 %291, i64* %6, align 8
  %292 = load i16, i16* %4, align 2
  store i16 %292, i16* %5, align 2
  br label %293

293:                                              ; preds = %284, %272
  br label %294

294:                                              ; preds = %293, %246
  br label %295

295:                                              ; preds = %294, %214
  br label %296

296:                                              ; preds = %295, %190
  br label %297

297:                                              ; preds = %296, %149
  br label %298

298:                                              ; preds = %297, %95
  %299 = load i16, i16* %5, align 2
  %300 = zext i16 %299 to i32
  %301 = and i32 %300, 61951
  %302 = icmp eq i32 %301, 61613
  br i1 %302, label %303, label %334

303:                                              ; preds = %298
  %304 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %304, %struct.task_struct** %8, align 8
  %305 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %306 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %307 = call i32 @save_fpu(%struct.task_struct* %305, %struct.pt_regs* %306)
  %308 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %309 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %328

317:                                              ; preds = %303
  %318 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %319 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = load i16, i16* %5, align 2
  %323 = zext i16 %322 to i32
  %324 = ashr i32 %323, 8
  %325 = and i32 %324, 15
  %326 = trunc i32 %325 to i16
  %327 = call i32 @denormal_to_double(%struct.TYPE_6__* %321, i16 zeroext %326)
  br label %329

328:                                              ; preds = %303
  store i32 0, i32* %2, align 4
  br label %903

329:                                              ; preds = %317
  %330 = load i64, i64* %6, align 8
  %331 = trunc i64 %330 to i32
  %332 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %333 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  store i32 1, i32* %2, align 4
  br label %903

334:                                              ; preds = %298
  %335 = load i16, i16* %5, align 2
  %336 = zext i16 %335 to i32
  %337 = and i32 %336, 61455
  %338 = icmp eq i32 %337, 61442
  br i1 %338, label %339, label %491

339:                                              ; preds = %334
  %340 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %340, %struct.task_struct** %9, align 8
  %341 = load i16, i16* %5, align 2
  %342 = zext i16 %341 to i32
  %343 = ashr i32 %342, 8
  %344 = and i32 %343, 15
  store i32 %344, i32* %11, align 4
  %345 = load i16, i16* %5, align 2
  %346 = zext i16 %345 to i32
  %347 = ashr i32 %346, 4
  %348 = and i32 %347, 15
  store i32 %348, i32* %12, align 4
  %349 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %350 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %14, align 4
  %359 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %360 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %12, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %15, align 4
  %369 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %370 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  store i32 %374, i32* %10, align 4
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* @FPSCR_DBL_PRECISION, align 4
  %377 = and i32 %375, %376
  store i32 %377, i32* %13, align 4
  %378 = load i32, i32* %10, align 4
  %379 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %454

382:                                              ; preds = %339
  %383 = load i32, i32* %13, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %454

385:                                              ; preds = %382
  %386 = load i32, i32* %14, align 4
  %387 = and i32 %386, 2147483647
  %388 = icmp ult i32 %387, 1048576
  br i1 %388, label %393, label %389

389:                                              ; preds = %385
  %390 = load i32, i32* %15, align 4
  %391 = and i32 %390, 2147483647
  %392 = icmp ult i32 %391, 1048576
  br i1 %392, label %393, label %454

393:                                              ; preds = %389, %385
  %394 = load i32, i32* %14, align 4
  %395 = zext i32 %394 to i64
  %396 = shl i64 %395, 32
  %397 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %398 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %11, align 4
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  %409 = or i64 %396, %408
  store i64 %409, i64* %16, align 8
  %410 = load i32, i32* %15, align 4
  %411 = zext i32 %410 to i64
  %412 = shl i64 %411, 32
  %413 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %414 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 1
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %12, align 4
  %420 = add nsw i32 %419, 1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %418, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = zext i32 %423 to i64
  %425 = or i64 %412, %424
  store i64 %425, i64* %17, align 8
  %426 = load i64, i64* %16, align 8
  %427 = load i64, i64* %17, align 8
  %428 = call i64 @float64_mul(i64 %426, i64 %427)
  store i64 %428, i64* %16, align 8
  %429 = load i64, i64* %16, align 8
  %430 = ashr i64 %429, 32
  %431 = trunc i64 %430 to i32
  %432 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %433 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %11, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  store i32 %431, i32* %440, align 4
  %441 = load i64, i64* %16, align 8
  %442 = and i64 %441, 4294967295
  %443 = trunc i64 %442 to i32
  %444 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %445 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 1
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %11, align 4
  %451 = add nsw i32 %450, 1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %449, i64 %452
  store i32 %443, i32* %453, align 4
  br label %486

454:                                              ; preds = %389, %382, %339
  %455 = load i32, i32* %10, align 4
  %456 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %484

459:                                              ; preds = %454
  %460 = load i32, i32* %13, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %484, label %462

462:                                              ; preds = %459
  %463 = load i32, i32* %14, align 4
  %464 = and i32 %463, 2147483647
  %465 = icmp ult i32 %464, 8388608
  br i1 %465, label %470, label %466

466:                                              ; preds = %462
  %467 = load i32, i32* %15, align 4
  %468 = and i32 %467, 2147483647
  %469 = icmp ult i32 %468, 8388608
  br i1 %469, label %470, label %484

470:                                              ; preds = %466, %462
  %471 = load i32, i32* %14, align 4
  %472 = load i32, i32* %15, align 4
  %473 = call i32 @float32_mul(i32 %471, i32 %472)
  store i32 %473, i32* %14, align 4
  %474 = load i32, i32* %14, align 4
  %475 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %476 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 1
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %11, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  store i32 %474, i32* %483, align 4
  br label %485

484:                                              ; preds = %466, %459, %454
  store i32 0, i32* %2, align 4
  br label %903

485:                                              ; preds = %470
  br label %486

486:                                              ; preds = %485, %393
  %487 = load i64, i64* %6, align 8
  %488 = trunc i64 %487 to i32
  %489 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %490 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %489, i32 0, i32 0
  store i32 %488, i32* %490, align 8
  store i32 1, i32* %2, align 4
  br label %903

491:                                              ; preds = %334
  %492 = load i16, i16* %5, align 2
  %493 = zext i16 %492 to i32
  %494 = and i32 %493, 61454
  %495 = icmp eq i32 %494, 61440
  br i1 %495, label %496, label %668

496:                                              ; preds = %491
  %497 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %497, %struct.task_struct** %18, align 8
  %498 = load i16, i16* %5, align 2
  %499 = zext i16 %498 to i32
  %500 = ashr i32 %499, 8
  %501 = and i32 %500, 15
  store i32 %501, i32* %20, align 4
  %502 = load i16, i16* %5, align 2
  %503 = zext i16 %502 to i32
  %504 = ashr i32 %503, 4
  %505 = and i32 %504, 15
  store i32 %505, i32* %21, align 4
  %506 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %507 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 1
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %20, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %511, i64 %513
  %515 = load i32, i32* %514, align 4
  store i32 %515, i32* %23, align 4
  %516 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %517 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %519, i32 0, i32 1
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %21, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  %525 = load i32, i32* %524, align 4
  store i32 %525, i32* %24, align 4
  %526 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %527 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  store i32 %531, i32* %19, align 4
  %532 = load i32, i32* %19, align 4
  %533 = load i32, i32* @FPSCR_DBL_PRECISION, align 4
  %534 = and i32 %532, %533
  store i32 %534, i32* %22, align 4
  %535 = load i32, i32* %19, align 4
  %536 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %621

539:                                              ; preds = %496
  %540 = load i32, i32* %22, align 4
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %621

542:                                              ; preds = %539
  %543 = load i32, i32* %23, align 4
  %544 = and i32 %543, 2147483647
  %545 = icmp ult i32 %544, 1048576
  br i1 %545, label %550, label %546

546:                                              ; preds = %542
  %547 = load i32, i32* %24, align 4
  %548 = and i32 %547, 2147483647
  %549 = icmp ult i32 %548, 1048576
  br i1 %549, label %550, label %621

550:                                              ; preds = %546, %542
  %551 = load i32, i32* %23, align 4
  %552 = zext i32 %551 to i64
  %553 = shl i64 %552, 32
  %554 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %555 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %557, i32 0, i32 1
  %559 = load i32*, i32** %558, align 8
  %560 = load i32, i32* %20, align 4
  %561 = add nsw i32 %560, 1
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %559, i64 %562
  %564 = load i32, i32* %563, align 4
  %565 = zext i32 %564 to i64
  %566 = or i64 %553, %565
  store i64 %566, i64* %25, align 8
  %567 = load i32, i32* %24, align 4
  %568 = zext i32 %567 to i64
  %569 = shl i64 %568, 32
  %570 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %571 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %573, i32 0, i32 1
  %575 = load i32*, i32** %574, align 8
  %576 = load i32, i32* %21, align 4
  %577 = add nsw i32 %576, 1
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %575, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = zext i32 %580 to i64
  %582 = or i64 %569, %581
  store i64 %582, i64* %26, align 8
  %583 = load i16, i16* %5, align 2
  %584 = zext i16 %583 to i32
  %585 = and i32 %584, 61455
  %586 = icmp eq i32 %585, 61440
  br i1 %586, label %587, label %591

587:                                              ; preds = %550
  %588 = load i64, i64* %25, align 8
  %589 = load i64, i64* %26, align 8
  %590 = call i64 @float64_add(i64 %588, i64 %589)
  store i64 %590, i64* %25, align 8
  br label %595

591:                                              ; preds = %550
  %592 = load i64, i64* %25, align 8
  %593 = load i64, i64* %26, align 8
  %594 = call i64 @float64_sub(i64 %592, i64 %593)
  store i64 %594, i64* %25, align 8
  br label %595

595:                                              ; preds = %591, %587
  %596 = load i64, i64* %25, align 8
  %597 = ashr i64 %596, 32
  %598 = trunc i64 %597 to i32
  %599 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %600 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %602, i32 0, i32 1
  %604 = load i32*, i32** %603, align 8
  %605 = load i32, i32* %20, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %604, i64 %606
  store i32 %598, i32* %607, align 4
  %608 = load i64, i64* %25, align 8
  %609 = and i64 %608, 4294967295
  %610 = trunc i64 %609 to i32
  %611 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %612 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %614, i32 0, i32 1
  %616 = load i32*, i32** %615, align 8
  %617 = load i32, i32* %20, align 4
  %618 = add nsw i32 %617, 1
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %616, i64 %619
  store i32 %610, i32* %620, align 4
  br label %663

621:                                              ; preds = %546, %539, %496
  %622 = load i32, i32* %19, align 4
  %623 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %624 = and i32 %622, %623
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %661

626:                                              ; preds = %621
  %627 = load i32, i32* %22, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %661, label %629

629:                                              ; preds = %626
  %630 = load i32, i32* %23, align 4
  %631 = and i32 %630, 2147483647
  %632 = icmp ult i32 %631, 8388608
  br i1 %632, label %637, label %633

633:                                              ; preds = %629
  %634 = load i32, i32* %24, align 4
  %635 = and i32 %634, 2147483647
  %636 = icmp ult i32 %635, 8388608
  br i1 %636, label %637, label %661

637:                                              ; preds = %633, %629
  %638 = load i16, i16* %5, align 2
  %639 = zext i16 %638 to i32
  %640 = and i32 %639, 61455
  %641 = icmp eq i32 %640, 61440
  br i1 %641, label %642, label %646

642:                                              ; preds = %637
  %643 = load i32, i32* %23, align 4
  %644 = load i32, i32* %24, align 4
  %645 = call i32 @float32_add(i32 %643, i32 %644)
  store i32 %645, i32* %23, align 4
  br label %650

646:                                              ; preds = %637
  %647 = load i32, i32* %23, align 4
  %648 = load i32, i32* %24, align 4
  %649 = call i32 @float32_sub(i32 %647, i32 %648)
  store i32 %649, i32* %23, align 4
  br label %650

650:                                              ; preds = %646, %642
  %651 = load i32, i32* %23, align 4
  %652 = load %struct.task_struct*, %struct.task_struct** %18, align 8
  %653 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %653, i32 0, i32 0
  %655 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %655, i32 0, i32 1
  %657 = load i32*, i32** %656, align 8
  %658 = load i32, i32* %20, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i32, i32* %657, i64 %659
  store i32 %651, i32* %660, align 4
  br label %662

661:                                              ; preds = %633, %626, %621
  store i32 0, i32* %2, align 4
  br label %903

662:                                              ; preds = %650
  br label %663

663:                                              ; preds = %662, %595
  %664 = load i64, i64* %6, align 8
  %665 = trunc i64 %664 to i32
  %666 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %667 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %666, i32 0, i32 0
  store i32 %665, i32* %667, align 8
  store i32 1, i32* %2, align 4
  br label %903

668:                                              ; preds = %491
  %669 = load i16, i16* %5, align 2
  %670 = zext i16 %669 to i32
  %671 = and i32 %670, 61443
  %672 = icmp eq i32 %671, 61443
  br i1 %672, label %673, label %825

673:                                              ; preds = %668
  %674 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %674, %struct.task_struct** %27, align 8
  %675 = load i16, i16* %5, align 2
  %676 = zext i16 %675 to i32
  %677 = ashr i32 %676, 8
  %678 = and i32 %677, 15
  store i32 %678, i32* %29, align 4
  %679 = load i16, i16* %5, align 2
  %680 = zext i16 %679 to i32
  %681 = ashr i32 %680, 4
  %682 = and i32 %681, 15
  store i32 %682, i32* %30, align 4
  %683 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %684 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %683, i32 0, i32 0
  %685 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %684, i32 0, i32 0
  %686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %686, i32 0, i32 1
  %688 = load i32*, i32** %687, align 8
  %689 = load i32, i32* %29, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, i32* %688, i64 %690
  %692 = load i32, i32* %691, align 4
  store i32 %692, i32* %32, align 4
  %693 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %694 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %693, i32 0, i32 0
  %695 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %694, i32 0, i32 0
  %696 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %696, i32 0, i32 1
  %698 = load i32*, i32** %697, align 8
  %699 = load i32, i32* %30, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, i32* %698, i64 %700
  %702 = load i32, i32* %701, align 4
  store i32 %702, i32* %33, align 4
  %703 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %704 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %704, i32 0, i32 0
  %706 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %705, i32 0, i32 0
  %707 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 8
  store i32 %708, i32* %28, align 4
  %709 = load i32, i32* %28, align 4
  %710 = load i32, i32* @FPSCR_DBL_PRECISION, align 4
  %711 = and i32 %709, %710
  store i32 %711, i32* %31, align 4
  %712 = load i32, i32* %28, align 4
  %713 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %714 = and i32 %712, %713
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %788

716:                                              ; preds = %673
  %717 = load i32, i32* %31, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %788

719:                                              ; preds = %716
  %720 = load i32, i32* %32, align 4
  %721 = and i32 %720, 2147483647
  %722 = icmp ult i32 %721, 1048576
  br i1 %722, label %727, label %723

723:                                              ; preds = %719
  %724 = load i32, i32* %33, align 4
  %725 = and i32 %724, 2147483647
  %726 = icmp ult i32 %725, 1048576
  br i1 %726, label %727, label %788

727:                                              ; preds = %723, %719
  %728 = load i32, i32* %32, align 4
  %729 = zext i32 %728 to i64
  %730 = shl i64 %729, 32
  %731 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %732 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %731, i32 0, i32 0
  %733 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %732, i32 0, i32 0
  %734 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %733, i32 0, i32 0
  %735 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %734, i32 0, i32 1
  %736 = load i32*, i32** %735, align 8
  %737 = load i32, i32* %29, align 4
  %738 = add nsw i32 %737, 1
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i32, i32* %736, i64 %739
  %741 = load i32, i32* %740, align 4
  %742 = zext i32 %741 to i64
  %743 = or i64 %730, %742
  store i64 %743, i64* %34, align 8
  %744 = load i32, i32* %33, align 4
  %745 = zext i32 %744 to i64
  %746 = shl i64 %745, 32
  %747 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %748 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %747, i32 0, i32 0
  %749 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %748, i32 0, i32 0
  %750 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %749, i32 0, i32 0
  %751 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %750, i32 0, i32 1
  %752 = load i32*, i32** %751, align 8
  %753 = load i32, i32* %30, align 4
  %754 = add nsw i32 %753, 1
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i32, i32* %752, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = zext i32 %757 to i64
  %759 = or i64 %746, %758
  store i64 %759, i64* %35, align 8
  %760 = load i64, i64* %34, align 8
  %761 = load i64, i64* %35, align 8
  %762 = call i64 @float64_div(i64 %760, i64 %761)
  store i64 %762, i64* %34, align 8
  %763 = load i64, i64* %34, align 8
  %764 = ashr i64 %763, 32
  %765 = trunc i64 %764 to i32
  %766 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %767 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %766, i32 0, i32 0
  %768 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %767, i32 0, i32 0
  %769 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %768, i32 0, i32 0
  %770 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %769, i32 0, i32 1
  %771 = load i32*, i32** %770, align 8
  %772 = load i32, i32* %29, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i32, i32* %771, i64 %773
  store i32 %765, i32* %774, align 4
  %775 = load i64, i64* %34, align 8
  %776 = and i64 %775, 4294967295
  %777 = trunc i64 %776 to i32
  %778 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %779 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %778, i32 0, i32 0
  %780 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %779, i32 0, i32 0
  %781 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %780, i32 0, i32 0
  %782 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %781, i32 0, i32 1
  %783 = load i32*, i32** %782, align 8
  %784 = load i32, i32* %29, align 4
  %785 = add nsw i32 %784, 1
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds i32, i32* %783, i64 %786
  store i32 %777, i32* %787, align 4
  br label %820

788:                                              ; preds = %723, %716, %673
  %789 = load i32, i32* %28, align 4
  %790 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %791 = and i32 %789, %790
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %818

793:                                              ; preds = %788
  %794 = load i32, i32* %31, align 4
  %795 = icmp ne i32 %794, 0
  br i1 %795, label %818, label %796

796:                                              ; preds = %793
  %797 = load i32, i32* %32, align 4
  %798 = and i32 %797, 2147483647
  %799 = icmp ult i32 %798, 8388608
  br i1 %799, label %804, label %800

800:                                              ; preds = %796
  %801 = load i32, i32* %33, align 4
  %802 = and i32 %801, 2147483647
  %803 = icmp ult i32 %802, 8388608
  br i1 %803, label %804, label %818

804:                                              ; preds = %800, %796
  %805 = load i32, i32* %32, align 4
  %806 = load i32, i32* %33, align 4
  %807 = call i32 @float32_div(i32 %805, i32 %806)
  store i32 %807, i32* %32, align 4
  %808 = load i32, i32* %32, align 4
  %809 = load %struct.task_struct*, %struct.task_struct** %27, align 8
  %810 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %809, i32 0, i32 0
  %811 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %810, i32 0, i32 0
  %812 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %811, i32 0, i32 0
  %813 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %812, i32 0, i32 1
  %814 = load i32*, i32** %813, align 8
  %815 = load i32, i32* %29, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i32, i32* %814, i64 %816
  store i32 %808, i32* %817, align 4
  br label %819

818:                                              ; preds = %800, %793, %788
  store i32 0, i32* %2, align 4
  br label %903

819:                                              ; preds = %804
  br label %820

820:                                              ; preds = %819, %727
  %821 = load i64, i64* %6, align 8
  %822 = trunc i64 %821 to i32
  %823 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %824 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %823, i32 0, i32 0
  store i32 %822, i32* %824, align 8
  store i32 1, i32* %2, align 4
  br label %903

825:                                              ; preds = %668
  %826 = load i16, i16* %5, align 2
  %827 = zext i16 %826 to i32
  %828 = and i32 %827, 61629
  %829 = icmp eq i32 %828, 61629
  br i1 %829, label %830, label %898

830:                                              ; preds = %825
  %831 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %831, %struct.task_struct** %36, align 8
  %832 = load i16, i16* %5, align 2
  %833 = zext i16 %832 to i32
  %834 = ashr i32 %833, 8
  %835 = and i32 %834, 7
  store i32 %835, i32* %37, align 4
  %836 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %837 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %836, i32 0, i32 0
  %838 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %837, i32 0, i32 0
  %839 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %838, i32 0, i32 0
  %840 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %839, i32 0, i32 1
  %841 = load i32*, i32** %840, align 8
  %842 = load i32, i32* %37, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i32, i32* %841, i64 %843
  %845 = load i32, i32* %844, align 4
  store i32 %845, i32* %38, align 4
  %846 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %847 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %846, i32 0, i32 0
  %848 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %847, i32 0, i32 0
  %849 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %848, i32 0, i32 0
  %850 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 8
  %852 = load i32, i32* @FPSCR_CAUSE_ERROR, align 4
  %853 = and i32 %851, %852
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %855, label %892

855:                                              ; preds = %830
  %856 = load i32, i32* %38, align 4
  %857 = and i32 %856, 2147483647
  %858 = icmp ult i32 %857, 1048576
  br i1 %858, label %859, label %892

859:                                              ; preds = %855
  %860 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %861 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %860, i32 0, i32 0
  %862 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %861, i32 0, i32 0
  %863 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %862, i32 0, i32 0
  %864 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %863, i32 0, i32 1
  %865 = load i32*, i32** %864, align 8
  %866 = load i32, i32* %37, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i32, i32* %865, i64 %867
  %869 = load i32, i32* %868, align 4
  %870 = zext i32 %869 to i64
  %871 = shl i64 %870, 32
  %872 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %873 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %872, i32 0, i32 0
  %874 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %873, i32 0, i32 0
  %875 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %874, i32 0, i32 0
  %876 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %875, i32 0, i32 1
  %877 = load i32*, i32** %876, align 8
  %878 = load i32, i32* %37, align 4
  %879 = add nsw i32 %878, 1
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds i32, i32* %877, i64 %880
  %882 = load i32, i32* %881, align 4
  %883 = zext i32 %882 to i64
  %884 = or i64 %871, %883
  store i64 %884, i64* %39, align 8
  %885 = load i64, i64* %39, align 8
  %886 = call i32 @float64_to_float32(i64 %885)
  %887 = load %struct.task_struct*, %struct.task_struct** %36, align 8
  %888 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %887, i32 0, i32 0
  %889 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %888, i32 0, i32 0
  %890 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %889, i32 0, i32 0
  %891 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %890, i32 0, i32 2
  store i32 %886, i32* %891, align 8
  br label %893

892:                                              ; preds = %855, %830
  store i32 0, i32* %2, align 4
  br label %903

893:                                              ; preds = %859
  %894 = load i64, i64* %6, align 8
  %895 = trunc i64 %894 to i32
  %896 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %897 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %896, i32 0, i32 0
  store i32 %895, i32* %897, align 8
  store i32 1, i32* %2, align 4
  br label %903

898:                                              ; preds = %825
  br label %899

899:                                              ; preds = %898
  br label %900

900:                                              ; preds = %899
  br label %901

901:                                              ; preds = %900
  br label %902

902:                                              ; preds = %901
  store i32 0, i32* %2, align 4
  br label %903

903:                                              ; preds = %902, %893, %892, %820, %818, %663, %661, %486, %484, %329, %328
  %904 = load i32, i32* %2, align 4
  ret i32 %904
}

declare dso_local i64 @instruction_size(i16 zeroext) #1

declare dso_local i32 @save_fpu(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @denormal_to_double(%struct.TYPE_6__*, i16 zeroext) #1

declare dso_local i64 @float64_mul(i64, i64) #1

declare dso_local i32 @float32_mul(i32, i32) #1

declare dso_local i64 @float64_add(i64, i64) #1

declare dso_local i64 @float64_sub(i64, i64) #1

declare dso_local i32 @float32_add(i32, i32) #1

declare dso_local i32 @float32_sub(i32, i32) #1

declare dso_local i64 @float64_div(i64, i64) #1

declare dso_local i32 @float32_div(i32, i32) #1

declare dso_local i32 @float64_to_float32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
