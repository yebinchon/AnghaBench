; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_gain_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_gain_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0090_state = type { i32*, i32, i32*, i32, i32*, i32, i32, i32* }

@WBD_ALPHA = common dso_local global i32 0, align 4
@GAIN_ALPHA = common dso_local global i32 0, align 4
@gain_reg_addr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib0090_state*, i32, i32, i64)* @dib0090_gain_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_gain_apply(%struct.dib0090_state* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.dib0090_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.dib0090_state* %0, %struct.dib0090_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %17 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, -511
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -511, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 511
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 511, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* @WBD_ALPHA, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @GAIN_ALPHA, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %40 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WBD_ALPHA, align 4
  %45 = shl i32 %43, %44
  %46 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %47 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %45, %48
  %50 = icmp sge i32 %38, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %37
  %52 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %53 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @WBD_ALPHA, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %60 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %67

61:                                               ; preds = %37
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %64 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %51
  %68 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %69 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %74 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %73, i32 0, i32 1
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %77 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @WBD_ALPHA, align 4
  %80 = ashr i32 %78, %79
  %81 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %82 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  %87 = load i32, i32* @GAIN_ALPHA, align 4
  %88 = shl i32 %86, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %92 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = icmp sge i32 %89, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %75
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %99 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  br label %106

100:                                              ; preds = %75
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %103 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %96
  %107 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %108 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %113 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %112, i32 0, i32 3
  store i32 0, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %116 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @GAIN_ALPHA, align 4
  %119 = ashr i32 %117, %118
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %122 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @WBD_ALPHA, align 4
  %125 = ashr i32 %123, %124
  %126 = icmp sgt i32 %120, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %114
  %128 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %129 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @WBD_ALPHA, align 4
  %132 = ashr i32 %130, %131
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %138 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %136, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %127
  %144 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %145 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %143, %127
  br label %152

150:                                              ; preds = %114
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %150, %149
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %155 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %160 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %158, i32* %162, align 4
  %163 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %164 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32* %166, i32** %16, align 8
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %168

168:                                              ; preds = %290, %152
  %169 = load i32, i32* %12, align 4
  %170 = icmp slt i32 %169, 7
  br i1 %170, label %171, label %293

171:                                              ; preds = %168
  %172 = load i32*, i32** %16, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %11, align 4
  %178 = load i32*, i32** %16, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %16, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %180, %183
  %185 = icmp slt i32 %177, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %176, %171
  store i32 0, i32* %13, align 4
  br label %216

187:                                              ; preds = %176
  %188 = load i32, i32* %11, align 4
  %189 = load i32*, i32** %16, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp sge i32 %188, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32*, i32** %16, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %13, align 4
  br label %215

197:                                              ; preds = %187
  %198 = load i32, i32* %11, align 4
  %199 = load i32*, i32** %16, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %16, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  %206 = sub nsw i32 %198, %205
  %207 = load i32*, i32** %16, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %206, %209
  %211 = load i32*, i32** %16, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = sdiv i32 %210, %213
  store i32 %214, i32* %13, align 4
  br label %215

215:                                              ; preds = %197, %193
  br label %216

216:                                              ; preds = %215, %186
  %217 = load i32, i32* %12, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* %13, align 4
  %221 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %220, i32* %221, align 16
  br label %278

222:                                              ; preds = %216
  %223 = load i32, i32* %12, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32, i32* %13, align 4
  %227 = shl i32 %226, 7
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %229 = load i32, i32* %228, align 16
  %230 = or i32 %229, %227
  store i32 %230, i32* %228, align 16
  br label %277

231:                                              ; preds = %222
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, 2
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* %13, align 4
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %235, i32* %236, align 4
  br label %276

237:                                              ; preds = %231
  %238 = load i32, i32* %12, align 4
  %239 = icmp eq i32 %238, 3
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i32, i32* %13, align 4
  %242 = shl i32 %241, 7
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %242
  store i32 %245, i32* %243, align 4
  br label %275

246:                                              ; preds = %237
  %247 = load i32, i32* %12, align 4
  %248 = icmp eq i32 %247, 4
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %252 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %250, %253
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %254, i32* %255, align 8
  br label %274

256:                                              ; preds = %246
  %257 = load i32, i32* %12, align 4
  %258 = icmp eq i32 %257, 5
  br i1 %258, label %259, label %263

259:                                              ; preds = %256
  %260 = load i32, i32* %13, align 4
  %261 = shl i32 %260, 3
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %261, i32* %262, align 4
  br label %273

263:                                              ; preds = %256
  %264 = load i32, i32* %12, align 4
  %265 = icmp eq i32 %264, 6
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load i32, i32* %13, align 4
  %268 = shl i32 %267, 8
  %269 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %268
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %266, %263
  br label %273

273:                                              ; preds = %272, %259
  br label %274

274:                                              ; preds = %273, %249
  br label %275

275:                                              ; preds = %274, %240
  br label %276

276:                                              ; preds = %275, %234
  br label %277

277:                                              ; preds = %276, %225
  br label %278

278:                                              ; preds = %277, %219
  %279 = load i32*, i32** %16, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 3
  store i32* %280, i32** %16, align 8
  %281 = load i32, i32* %12, align 4
  %282 = icmp eq i32 %281, 4
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %285 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  store i32* %287, i32** %16, align 8
  %288 = load i32, i32* %10, align 4
  store i32 %288, i32* %11, align 4
  br label %289

289:                                              ; preds = %283, %278
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  br label %168

293:                                              ; preds = %168
  %294 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %295 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %296
  store i32 %299, i32* %297, align 4
  %300 = load i32, i32* %10, align 4
  %301 = srem i32 %300, 10
  %302 = mul nsw i32 %301, 100
  %303 = sdiv i32 %302, 125
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %303
  store i32 %306, i32* %304, align 4
  store i32 0, i32* %12, align 4
  br label %307

307:                                              ; preds = %344, %293
  %308 = load i32, i32* %12, align 4
  %309 = icmp slt i32 %308, 4
  br i1 %309, label %310, label %347

310:                                              ; preds = %307
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %13, align 4
  %315 = load i64, i64* %8, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %327, label %317

317:                                              ; preds = %310
  %318 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %319 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %318, i32 0, i32 7
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %12, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %13, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %343

327:                                              ; preds = %317, %310
  %328 = load i32, i32* %13, align 4
  %329 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %330 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %329, i32 0, i32 7
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %12, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %328, i32* %334, align 4
  %335 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %336 = load i32*, i32** @gain_reg_addr, align 8
  %337 = load i32, i32* %12, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %13, align 4
  %342 = call i32 @dib0090_write_reg(%struct.dib0090_state* %335, i32 %340, i32 %341)
  br label %343

343:                                              ; preds = %327, %317
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %12, align 4
  br label %307

347:                                              ; preds = %307
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
