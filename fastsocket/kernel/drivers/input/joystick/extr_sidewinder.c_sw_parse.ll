; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_sidewinder.c_sw_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_sidewinder.c_sw_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sw = type { i32, i32, %struct.input_dev** }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@sw_hat_to_axis = common dso_local global %struct.TYPE_2__* null, align 8
@ABS_HAT0Y = common dso_local global i32 0, align 4
@sw_btn = common dso_local global i32** null, align 8
@BTN_BASE4 = common dso_local global i32 0, align 4
@BTN_BASE5 = common dso_local global i32 0, align 4
@BTN_TR = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_MODE = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RUDDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sw*)* @sw_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sw_parse(i8* %0, %struct.sw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sw* %1, %struct.sw** %5, align 8
  %10 = load %struct.sw*, %struct.sw** %5, align 8
  %11 = getelementptr inbounds %struct.sw, %struct.sw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %427 [
    i32 133, label %13
    i32 129, label %115
    i32 128, label %210
    i32 132, label %210
    i32 130, label %282
    i32 131, label %379
  ]

13:                                               ; preds = %2
  %14 = call i32 @GB(i32 0, i32 64)
  %15 = call i32 @sw_check(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = call i32 @GB(i32 6, i32 1)
  %19 = shl i32 %18, 3
  %20 = call i32 @GB(i32 60, i32 3)
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = icmp sgt i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %13
  store i32 -1, i32* %3, align 4
  br label %428

24:                                               ; preds = %17
  %25 = load %struct.sw*, %struct.sw** %5, align 8
  %26 = getelementptr inbounds %struct.sw, %struct.sw* %25, i32 0, i32 2
  %27 = load %struct.input_dev**, %struct.input_dev*** %26, align 8
  %28 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %27, i64 0
  %29 = load %struct.input_dev*, %struct.input_dev** %28, align 8
  store %struct.input_dev* %29, %struct.input_dev** %9, align 8
  %30 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %31 = load i32, i32* @ABS_X, align 4
  %32 = call i32 @GB(i32 3, i32 3)
  %33 = shl i32 %32, 7
  %34 = call i32 @GB(i32 16, i32 7)
  %35 = or i32 %33, %34
  %36 = call i32 @input_report_abs(%struct.input_dev* %30, i32 %31, i32 %35)
  %37 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %38 = load i32, i32* @ABS_Y, align 4
  %39 = call i32 @GB(i32 0, i32 3)
  %40 = shl i32 %39, 7
  %41 = call i32 @GB(i32 24, i32 7)
  %42 = or i32 %40, %41
  %43 = call i32 @input_report_abs(%struct.input_dev* %37, i32 %38, i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %45 = load i32, i32* @ABS_RZ, align 4
  %46 = call i32 @GB(i32 35, i32 2)
  %47 = shl i32 %46, 7
  %48 = call i32 @GB(i32 40, i32 7)
  %49 = or i32 %47, %48
  %50 = call i32 @input_report_abs(%struct.input_dev* %44, i32 %45, i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %52 = load i32, i32* @ABS_THROTTLE, align 4
  %53 = call i32 @GB(i32 32, i32 3)
  %54 = shl i32 %53, 7
  %55 = call i32 @GB(i32 48, i32 7)
  %56 = or i32 %54, %55
  %57 = call i32 @input_report_abs(%struct.input_dev* %51, i32 %52, i32 %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %59 = load i32, i32* @ABS_HAT0X, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sw_hat_to_axis, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @input_report_abs(%struct.input_dev* %58, i32 %59, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %68 = load i32, i32* @ABS_HAT0Y, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sw_hat_to_axis, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @input_report_abs(%struct.input_dev* %67, i32 %68, i32 %74)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %95, %24
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 7
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %81 = load i32**, i32*** @sw_btn, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 133
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 8
  %90 = call i32 @GB(i32 %89, i32 1)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @input_report_key(%struct.input_dev* %80, i32 %87, i32 %93)
  br label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %76

98:                                               ; preds = %76
  %99 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %100 = load i32, i32* @BTN_BASE4, align 4
  %101 = call i32 @GB(i32 38, i32 1)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @input_report_key(%struct.input_dev* %99, i32 %100, i32 %104)
  %106 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %107 = load i32, i32* @BTN_BASE5, align 4
  %108 = call i32 @GB(i32 37, i32 1)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @input_report_key(%struct.input_dev* %106, i32 %107, i32 %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %114 = call i32 @input_sync(%struct.input_dev* %113)
  store i32 0, i32* %3, align 4
  br label %428

115:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %206, %115
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.sw*, %struct.sw** %5, align 8
  %119 = getelementptr inbounds %struct.sw, %struct.sw* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %209

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %123, 15
  %125 = call i32 @GB(i32 %124, i32 15)
  %126 = call i32 @sw_parity(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %428

129:                                              ; preds = %122
  %130 = load %struct.sw*, %struct.sw** %5, align 8
  %131 = getelementptr inbounds %struct.sw, %struct.sw* %130, i32 0, i32 2
  %132 = load %struct.input_dev**, %struct.input_dev*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %132, i64 %134
  %136 = load %struct.input_dev*, %struct.input_dev** %135, align 8
  %137 = load i32, i32* @ABS_X, align 4
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 %138, 15
  %140 = add nsw i32 %139, 3
  %141 = call i32 @GB(i32 %140, i32 1)
  %142 = load i32, i32* %7, align 4
  %143 = mul nsw i32 %142, 15
  %144 = add nsw i32 %143, 2
  %145 = call i32 @GB(i32 %144, i32 1)
  %146 = sub nsw i32 %141, %145
  %147 = call i32 @input_report_abs(%struct.input_dev* %136, i32 %137, i32 %146)
  %148 = load %struct.sw*, %struct.sw** %5, align 8
  %149 = getelementptr inbounds %struct.sw, %struct.sw* %148, i32 0, i32 2
  %150 = load %struct.input_dev**, %struct.input_dev*** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %150, i64 %152
  %154 = load %struct.input_dev*, %struct.input_dev** %153, align 8
  %155 = load i32, i32* @ABS_Y, align 4
  %156 = load i32, i32* %7, align 4
  %157 = mul nsw i32 %156, 15
  %158 = add nsw i32 %157, 0
  %159 = call i32 @GB(i32 %158, i32 1)
  %160 = load i32, i32* %7, align 4
  %161 = mul nsw i32 %160, 15
  %162 = add nsw i32 %161, 1
  %163 = call i32 @GB(i32 %162, i32 1)
  %164 = sub nsw i32 %159, %163
  %165 = call i32 @input_report_abs(%struct.input_dev* %154, i32 %155, i32 %164)
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %194, %129
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %167, 10
  br i1 %168, label %169, label %197

169:                                              ; preds = %166
  %170 = load %struct.sw*, %struct.sw** %5, align 8
  %171 = getelementptr inbounds %struct.sw, %struct.sw* %170, i32 0, i32 2
  %172 = load %struct.input_dev**, %struct.input_dev*** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %172, i64 %174
  %176 = load %struct.input_dev*, %struct.input_dev** %175, align 8
  %177 = load i32**, i32*** @sw_btn, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 129
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = mul nsw i32 %184, 15
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %185, %186
  %188 = add nsw i32 %187, 4
  %189 = call i32 @GB(i32 %188, i32 1)
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @input_report_key(%struct.input_dev* %176, i32 %183, i32 %192)
  br label %194

194:                                              ; preds = %169
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %166

197:                                              ; preds = %166
  %198 = load %struct.sw*, %struct.sw** %5, align 8
  %199 = getelementptr inbounds %struct.sw, %struct.sw* %198, i32 0, i32 2
  %200 = load %struct.input_dev**, %struct.input_dev*** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %200, i64 %202
  %204 = load %struct.input_dev*, %struct.input_dev** %203, align 8
  %205 = call i32 @input_sync(%struct.input_dev* %204)
  br label %206

206:                                              ; preds = %197
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %116

209:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %428

210:                                              ; preds = %2, %2
  %211 = call i32 @GB(i32 0, i32 48)
  %212 = call i32 @sw_parity(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = call i32 @GB(i32 42, i32 4)
  store i32 %215, i32* %6, align 4
  %216 = icmp sgt i32 %215, 8
  br i1 %216, label %217, label %218

217:                                              ; preds = %214, %210
  store i32 -1, i32* %3, align 4
  br label %428

218:                                              ; preds = %214
  %219 = load %struct.sw*, %struct.sw** %5, align 8
  %220 = getelementptr inbounds %struct.sw, %struct.sw* %219, i32 0, i32 2
  %221 = load %struct.input_dev**, %struct.input_dev*** %220, align 8
  %222 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %221, i64 0
  %223 = load %struct.input_dev*, %struct.input_dev** %222, align 8
  store %struct.input_dev* %223, %struct.input_dev** %9, align 8
  %224 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %225 = load i32, i32* @ABS_X, align 4
  %226 = call i32 @GB(i32 9, i32 10)
  %227 = call i32 @input_report_abs(%struct.input_dev* %224, i32 %225, i32 %226)
  %228 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %229 = load i32, i32* @ABS_Y, align 4
  %230 = call i32 @GB(i32 19, i32 10)
  %231 = call i32 @input_report_abs(%struct.input_dev* %228, i32 %229, i32 %230)
  %232 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %233 = load i32, i32* @ABS_RZ, align 4
  %234 = call i32 @GB(i32 36, i32 6)
  %235 = call i32 @input_report_abs(%struct.input_dev* %232, i32 %233, i32 %234)
  %236 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %237 = load i32, i32* @ABS_THROTTLE, align 4
  %238 = call i32 @GB(i32 29, i32 7)
  %239 = call i32 @input_report_abs(%struct.input_dev* %236, i32 %237, i32 %238)
  %240 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %241 = load i32, i32* @ABS_HAT0X, align 4
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sw_hat_to_axis, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @input_report_abs(%struct.input_dev* %240, i32 %241, i32 %247)
  %249 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %250 = load i32, i32* @ABS_HAT0Y, align 4
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sw_hat_to_axis, align 8
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @input_report_abs(%struct.input_dev* %249, i32 %250, i32 %256)
  store i32 0, i32* %8, align 4
  br label %258

258:                                              ; preds = %276, %218
  %259 = load i32, i32* %8, align 4
  %260 = icmp slt i32 %259, 9
  br i1 %260, label %261, label %279

261:                                              ; preds = %258
  %262 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %263 = load i32**, i32*** @sw_btn, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 128
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @GB(i32 %270, i32 1)
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  %274 = zext i1 %273 to i32
  %275 = call i32 @input_report_key(%struct.input_dev* %262, i32 %269, i32 %274)
  br label %276

276:                                              ; preds = %261
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %258

279:                                              ; preds = %258
  %280 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %281 = call i32 @input_sync(%struct.input_dev* %280)
  store i32 0, i32* %3, align 4
  br label %428

282:                                              ; preds = %2
  %283 = call i32 @GB(i32 0, i32 43)
  %284 = call i32 @sw_parity(i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = call i32 @GB(i32 28, i32 4)
  store i32 %287, i32* %6, align 4
  %288 = icmp sgt i32 %287, 8
  br i1 %288, label %289, label %290

289:                                              ; preds = %286, %282
  store i32 -1, i32* %3, align 4
  br label %428

290:                                              ; preds = %286
  %291 = load %struct.sw*, %struct.sw** %5, align 8
  %292 = getelementptr inbounds %struct.sw, %struct.sw* %291, i32 0, i32 2
  %293 = load %struct.input_dev**, %struct.input_dev*** %292, align 8
  %294 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %293, i64 0
  %295 = load %struct.input_dev*, %struct.input_dev** %294, align 8
  store %struct.input_dev* %295, %struct.input_dev** %9, align 8
  %296 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %297 = load i32, i32* @ABS_X, align 4
  %298 = call i32 @GB(i32 0, i32 10)
  %299 = call i32 @input_report_abs(%struct.input_dev* %296, i32 %297, i32 %298)
  %300 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %301 = load i32, i32* @ABS_Y, align 4
  %302 = call i32 @GB(i32 16, i32 10)
  %303 = call i32 @input_report_abs(%struct.input_dev* %300, i32 %301, i32 %302)
  %304 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %305 = load i32, i32* @ABS_THROTTLE, align 4
  %306 = call i32 @GB(i32 32, i32 6)
  %307 = call i32 @input_report_abs(%struct.input_dev* %304, i32 %305, i32 %306)
  %308 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %309 = load i32, i32* @ABS_HAT0X, align 4
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sw_hat_to_axis, align 8
  %311 = load i32, i32* %6, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @input_report_abs(%struct.input_dev* %308, i32 %309, i32 %315)
  %317 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %318 = load i32, i32* @ABS_HAT0Y, align 4
  %319 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sw_hat_to_axis, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @input_report_abs(%struct.input_dev* %317, i32 %318, i32 %324)
  store i32 0, i32* %8, align 4
  br label %326

326:                                              ; preds = %345, %290
  %327 = load i32, i32* %8, align 4
  %328 = icmp slt i32 %327, 6
  br i1 %328, label %329, label %348

329:                                              ; preds = %326
  %330 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %331 = load i32**, i32*** @sw_btn, align 8
  %332 = getelementptr inbounds i32*, i32** %331, i64 130
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %8, align 4
  %339 = add nsw i32 %338, 10
  %340 = call i32 @GB(i32 %339, i32 1)
  %341 = icmp ne i32 %340, 0
  %342 = xor i1 %341, true
  %343 = zext i1 %342 to i32
  %344 = call i32 @input_report_key(%struct.input_dev* %330, i32 %337, i32 %343)
  br label %345

345:                                              ; preds = %329
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %326

348:                                              ; preds = %326
  %349 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %350 = load i32, i32* @BTN_TR, align 4
  %351 = call i32 @GB(i32 26, i32 1)
  %352 = icmp ne i32 %351, 0
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = call i32 @input_report_key(%struct.input_dev* %349, i32 %350, i32 %354)
  %356 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %357 = load i32, i32* @BTN_START, align 4
  %358 = call i32 @GB(i32 27, i32 1)
  %359 = icmp ne i32 %358, 0
  %360 = xor i1 %359, true
  %361 = zext i1 %360 to i32
  %362 = call i32 @input_report_key(%struct.input_dev* %356, i32 %357, i32 %361)
  %363 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %364 = load i32, i32* @BTN_MODE, align 4
  %365 = call i32 @GB(i32 38, i32 1)
  %366 = icmp ne i32 %365, 0
  %367 = xor i1 %366, true
  %368 = zext i1 %367 to i32
  %369 = call i32 @input_report_key(%struct.input_dev* %363, i32 %364, i32 %368)
  %370 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %371 = load i32, i32* @BTN_SELECT, align 4
  %372 = call i32 @GB(i32 39, i32 1)
  %373 = icmp ne i32 %372, 0
  %374 = xor i1 %373, true
  %375 = zext i1 %374 to i32
  %376 = call i32 @input_report_key(%struct.input_dev* %370, i32 %371, i32 %375)
  %377 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %378 = call i32 @input_sync(%struct.input_dev* %377)
  store i32 0, i32* %3, align 4
  br label %428

379:                                              ; preds = %2
  %380 = call i32 @GB(i32 0, i32 33)
  %381 = call i32 @sw_parity(i32 %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %379
  store i32 -1, i32* %3, align 4
  br label %428

384:                                              ; preds = %379
  %385 = load %struct.sw*, %struct.sw** %5, align 8
  %386 = getelementptr inbounds %struct.sw, %struct.sw* %385, i32 0, i32 2
  %387 = load %struct.input_dev**, %struct.input_dev*** %386, align 8
  %388 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %387, i64 0
  %389 = load %struct.input_dev*, %struct.input_dev** %388, align 8
  store %struct.input_dev* %389, %struct.input_dev** %9, align 8
  %390 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %391 = load i32, i32* @ABS_RX, align 4
  %392 = call i32 @GB(i32 0, i32 10)
  %393 = call i32 @input_report_abs(%struct.input_dev* %390, i32 %391, i32 %392)
  %394 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %395 = load i32, i32* @ABS_RUDDER, align 4
  %396 = call i32 @GB(i32 10, i32 6)
  %397 = call i32 @input_report_abs(%struct.input_dev* %394, i32 %395, i32 %396)
  %398 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %399 = load i32, i32* @ABS_THROTTLE, align 4
  %400 = call i32 @GB(i32 16, i32 6)
  %401 = call i32 @input_report_abs(%struct.input_dev* %398, i32 %399, i32 %400)
  store i32 0, i32* %8, align 4
  br label %402

402:                                              ; preds = %421, %384
  %403 = load i32, i32* %8, align 4
  %404 = icmp slt i32 %403, 8
  br i1 %404, label %405, label %424

405:                                              ; preds = %402
  %406 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %407 = load i32**, i32*** @sw_btn, align 8
  %408 = getelementptr inbounds i32*, i32** %407, i64 131
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %8, align 4
  %415 = add nsw i32 %414, 22
  %416 = call i32 @GB(i32 %415, i32 1)
  %417 = icmp ne i32 %416, 0
  %418 = xor i1 %417, true
  %419 = zext i1 %418 to i32
  %420 = call i32 @input_report_key(%struct.input_dev* %406, i32 %413, i32 %419)
  br label %421

421:                                              ; preds = %405
  %422 = load i32, i32* %8, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %8, align 4
  br label %402

424:                                              ; preds = %402
  %425 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %426 = call i32 @input_sync(%struct.input_dev* %425)
  store i32 0, i32* %3, align 4
  br label %428

427:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %428

428:                                              ; preds = %427, %424, %383, %348, %289, %279, %217, %209, %128, %98, %23
  %429 = load i32, i32* %3, align 4
  ret i32 %429
}

declare dso_local i32 @sw_check(i32) #1

declare dso_local i32 @GB(i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @sw_parity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
