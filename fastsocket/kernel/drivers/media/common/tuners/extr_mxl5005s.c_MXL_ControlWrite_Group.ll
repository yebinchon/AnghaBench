; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_ControlWrite_Group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_ControlWrite_Group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl5005s_state* }
%struct.mxl5005s_state = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32*, i64*, i64* }
%struct.TYPE_5__ = type { i32, i32, i32*, i64*, i64* }
%struct.TYPE_4__ = type { i32, i32, i32*, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32)* @MXL_ControlWrite_Group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MXL_ControlWrite_Group(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mxl5005s_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %17, align 8
  store %struct.mxl5005s_state* %18, %struct.mxl5005s_state** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %161

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %157, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %25 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %160

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %31 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %29, %37
  br i1 %38, label %39, label %156

39:                                               ; preds = %28
  %40 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %41 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %154

52:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %117, %52
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %56 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %55, i32 0, i32 5
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %54, %62
  br i1 %63, label %64, label %120

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = ashr i32 %65, %66
  %68 = and i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %73 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %71, i32* %82, align 4
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %84 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %85 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %98 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %12, align 4
  %112 = ashr i32 %110, %111
  %113 = and i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 @MXL_RegWriteBit(%struct.dvb_frontend* %83, i8* %96, i8* %109, i8* %115)
  br label %117

117:                                              ; preds = %64
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %53

120:                                              ; preds = %53
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %150, %120
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %124 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %123, i32 0, i32 5
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %122, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %121
  %133 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %134 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %133, i32 0, i32 5
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = shl i32 1, %145
  %147 = mul nsw i32 %144, %146
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %132
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %121

153:                                              ; preds = %121
  br label %155

154:                                              ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %305

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %28
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %22

160:                                              ; preds = %22
  br label %161

161:                                              ; preds = %160, %4
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %304

164:                                              ; preds = %161
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %300, %164
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %168 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %303

171:                                              ; preds = %165
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %174 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %173, i32 0, i32 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %172, %180
  br i1 %181, label %182, label %299

182:                                              ; preds = %171
  %183 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %184 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %183, i32 0, i32 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 1, %190
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %297

195:                                              ; preds = %182
  store i32 0, i32* %12, align 4
  br label %196

196:                                              ; preds = %260, %195
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %199 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %198, i32 0, i32 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %197, %205
  br i1 %206, label %207, label %263

207:                                              ; preds = %196
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %12, align 4
  %210 = ashr i32 %208, %209
  %211 = and i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %216 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %215, i32 0, i32 4
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %214, i32* %225, align 4
  %226 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %227 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %228 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %227, i32 0, i32 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 4
  %234 = load i64*, i64** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i8*
  %240 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %241 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %240, i32 0, i32 4
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %12, align 4
  %255 = ashr i32 %253, %254
  %256 = and i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = call i32 @MXL_RegWriteBit(%struct.dvb_frontend* %226, i8* %239, i8* %252, i8* %258)
  br label %260

260:                                              ; preds = %207
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %196

263:                                              ; preds = %196
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %264

264:                                              ; preds = %293, %263
  %265 = load i32, i32* %13, align 4
  %266 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %267 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %266, i32 0, i32 4
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %265, %273
  br i1 %274, label %275, label %296

275:                                              ; preds = %264
  %276 = load %struct.mxl5005s_state*, %struct.mxl5005s_state** %10, align 8
  %277 = getelementptr inbounds %struct.mxl5005s_state, %struct.mxl5005s_state* %276, i32 0, i32 4
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %277, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %13, align 4
  %289 = shl i32 1, %288
  %290 = mul nsw i32 %287, %289
  %291 = load i32, i32* %15, align 4
  %292 = add nsw i32 %291, %290
  store i32 %292, i32* %15, align 4
  br label %293

293:                                              ; preds = %275
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %13, align 4
  br label %264

296:                                              ; preds = %264
  br label %298

297:                                              ; preds = %182
  store i32 -1, i32* %5, align 4
  br label %305

298:                                              ; preds = %296
  br label %299

299:                                              ; preds = %298, %171
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %11, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %11, align 4
  br label %165

303:                                              ; preds = %165
  br label %304

304:                                              ; preds = %303, %161
  store i32 0, i32* %5, align 4
  br label %305

305:                                              ; preds = %304, %297, %154
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local i32 @MXL_RegWriteBit(%struct.dvb_frontend*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
