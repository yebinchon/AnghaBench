; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip.c_grip_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_grip.c_grip_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.grip = type { i32*, i32, i32, i32, %struct.input_dev** }
%struct.input_dev = type { i32 }

@GRIP_LENGTH_XT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@grip_btn_gpp = common dso_local global i32* null, align 8
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@grip_btn_bd = common dso_local global i32* null, align 8
@ABS_BRAKE = common dso_local global i32 0, align 4
@ABS_GAS = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT1Y = common dso_local global i32 0, align 4
@grip_btn_xt = common dso_local global i32* null, align 8
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@grip_btn_dc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @grip_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grip_poll(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.grip*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %9 = load %struct.gameport*, %struct.gameport** %2, align 8
  %10 = call %struct.grip* @gameport_get_drvdata(%struct.gameport* %9)
  store %struct.grip* %10, %struct.grip** %3, align 8
  %11 = load i32, i32* @GRIP_LENGTH_XT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %400, %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %403

18:                                               ; preds = %15
  %19 = load %struct.grip*, %struct.grip** %3, align 8
  %20 = getelementptr inbounds %struct.grip, %struct.grip* %19, i32 0, i32 4
  %21 = load %struct.input_dev**, %struct.input_dev*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %21, i64 %23
  %25 = load %struct.input_dev*, %struct.input_dev** %24, align 8
  store %struct.input_dev* %25, %struct.input_dev** %6, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %27 = icmp ne %struct.input_dev* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %400

29:                                               ; preds = %18
  %30 = load %struct.grip*, %struct.grip** %3, align 8
  %31 = getelementptr inbounds %struct.grip, %struct.grip* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.grip*, %struct.grip** %3, align 8
  %35 = getelementptr inbounds %struct.grip, %struct.grip* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %397 [
    i32 129, label %41
    i32 131, label %103
    i32 128, label %184
    i32 130, label %303
  ]

41:                                               ; preds = %29
  %42 = load %struct.grip*, %struct.grip** %3, align 8
  %43 = getelementptr inbounds %struct.grip, %struct.grip* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 %45, 1
  %47 = add nsw i32 %46, 4
  %48 = call i32 @grip_gpp_read_packet(i32 %44, i32 %47, i32* %14)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.grip*, %struct.grip** %3, align 8
  %52 = getelementptr inbounds %struct.grip, %struct.grip* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %397

55:                                               ; preds = %41
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = load i32, i32* @ABS_X, align 4
  %58 = load i32, i32* %14, align 16
  %59 = lshr i32 %58, 15
  %60 = and i32 %59, 1
  %61 = load i32, i32* %14, align 16
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 1
  %64 = sub i32 %60, %63
  %65 = call i32 @input_report_abs(%struct.input_dev* %56, i32 %57, i32 %64)
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = load i32, i32* @ABS_Y, align 4
  %68 = load i32, i32* %14, align 16
  %69 = lshr i32 %68, 13
  %70 = and i32 %69, 1
  %71 = load i32, i32* %14, align 16
  %72 = lshr i32 %71, 12
  %73 = and i32 %72, 1
  %74 = sub i32 %70, %73
  %75 = call i32 @input_report_abs(%struct.input_dev* %66, i32 %67, i32 %74)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %99, %55
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 12
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load i32*, i32** @grip_btn_gpp, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %88 = load i32*, i32** @grip_btn_gpp, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %14, align 16
  %94 = load i32, i32* %8, align 4
  %95 = lshr i32 %93, %94
  %96 = and i32 %95, 1
  %97 = call i32 @input_report_key(%struct.input_dev* %87, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %86, %79
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %76

102:                                              ; preds = %76
  br label %397

103:                                              ; preds = %29
  %104 = load %struct.grip*, %struct.grip** %3, align 8
  %105 = getelementptr inbounds %struct.grip, %struct.grip* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = shl i32 %107, 1
  %109 = add nsw i32 %108, 4
  %110 = call i32 @grip_xt_read_packet(i32 %106, i32 %109, i32* %14)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load %struct.grip*, %struct.grip** %3, align 8
  %114 = getelementptr inbounds %struct.grip, %struct.grip* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %397

117:                                              ; preds = %103
  %118 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %119 = load i32, i32* @ABS_X, align 4
  %120 = getelementptr inbounds i32, i32* %14, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = lshr i32 %121, 2
  %123 = and i32 %122, 63
  %124 = call i32 @input_report_abs(%struct.input_dev* %118, i32 %119, i32 %123)
  %125 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %126 = load i32, i32* @ABS_Y, align 4
  %127 = getelementptr inbounds i32, i32* %14, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = lshr i32 %128, 8
  %130 = and i32 %129, 63
  %131 = sub i32 63, %130
  %132 = call i32 @input_report_abs(%struct.input_dev* %125, i32 %126, i32 %131)
  %133 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %134 = load i32, i32* @ABS_THROTTLE, align 4
  %135 = getelementptr inbounds i32, i32* %14, i64 2
  %136 = load i32, i32* %135, align 8
  %137 = lshr i32 %136, 8
  %138 = and i32 %137, 63
  %139 = call i32 @input_report_abs(%struct.input_dev* %133, i32 %134, i32 %138)
  %140 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %141 = load i32, i32* @ABS_HAT0X, align 4
  %142 = getelementptr inbounds i32, i32* %14, i64 2
  %143 = load i32, i32* %142, align 8
  %144 = lshr i32 %143, 1
  %145 = and i32 %144, 1
  %146 = getelementptr inbounds i32, i32* %14, i64 2
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, 1
  %149 = sub i32 %145, %148
  %150 = call i32 @input_report_abs(%struct.input_dev* %140, i32 %141, i32 %149)
  %151 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %152 = load i32, i32* @ABS_HAT0Y, align 4
  %153 = getelementptr inbounds i32, i32* %14, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = lshr i32 %154, 2
  %156 = and i32 %155, 1
  %157 = getelementptr inbounds i32, i32* %14, i64 2
  %158 = load i32, i32* %157, align 8
  %159 = lshr i32 %158, 3
  %160 = and i32 %159, 1
  %161 = sub i32 %156, %160
  %162 = call i32 @input_report_abs(%struct.input_dev* %151, i32 %152, i32 %161)
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %180, %117
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 5
  br i1 %165, label %166, label %183

166:                                              ; preds = %163
  %167 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %168 = load i32*, i32** @grip_btn_bd, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds i32, i32* %14, i64 3
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 4
  %177 = lshr i32 %174, %176
  %178 = and i32 %177, 1
  %179 = call i32 @input_report_key(%struct.input_dev* %167, i32 %172, i32 %178)
  br label %180

180:                                              ; preds = %166
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %163

183:                                              ; preds = %163
  br label %397

184:                                              ; preds = %29
  %185 = load %struct.grip*, %struct.grip** %3, align 8
  %186 = getelementptr inbounds %struct.grip, %struct.grip* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = shl i32 %188, 1
  %190 = add nsw i32 %189, 4
  %191 = call i32 @grip_xt_read_packet(i32 %187, i32 %190, i32* %14)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %184
  %194 = load %struct.grip*, %struct.grip** %3, align 8
  %195 = getelementptr inbounds %struct.grip, %struct.grip* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  br label %397

198:                                              ; preds = %184
  %199 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %200 = load i32, i32* @ABS_X, align 4
  %201 = getelementptr inbounds i32, i32* %14, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = lshr i32 %202, 2
  %204 = and i32 %203, 63
  %205 = call i32 @input_report_abs(%struct.input_dev* %199, i32 %200, i32 %204)
  %206 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %207 = load i32, i32* @ABS_Y, align 4
  %208 = getelementptr inbounds i32, i32* %14, i64 0
  %209 = load i32, i32* %208, align 16
  %210 = lshr i32 %209, 8
  %211 = and i32 %210, 63
  %212 = sub i32 63, %211
  %213 = call i32 @input_report_abs(%struct.input_dev* %206, i32 %207, i32 %212)
  %214 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %215 = load i32, i32* @ABS_BRAKE, align 4
  %216 = getelementptr inbounds i32, i32* %14, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = lshr i32 %217, 2
  %219 = and i32 %218, 63
  %220 = call i32 @input_report_abs(%struct.input_dev* %214, i32 %215, i32 %219)
  %221 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %222 = load i32, i32* @ABS_GAS, align 4
  %223 = getelementptr inbounds i32, i32* %14, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = lshr i32 %224, 8
  %226 = and i32 %225, 63
  %227 = call i32 @input_report_abs(%struct.input_dev* %221, i32 %222, i32 %226)
  %228 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %229 = load i32, i32* @ABS_THROTTLE, align 4
  %230 = getelementptr inbounds i32, i32* %14, i64 2
  %231 = load i32, i32* %230, align 8
  %232 = lshr i32 %231, 8
  %233 = and i32 %232, 63
  %234 = call i32 @input_report_abs(%struct.input_dev* %228, i32 %229, i32 %233)
  %235 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %236 = load i32, i32* @ABS_HAT0X, align 4
  %237 = getelementptr inbounds i32, i32* %14, i64 2
  %238 = load i32, i32* %237, align 8
  %239 = lshr i32 %238, 1
  %240 = and i32 %239, 1
  %241 = getelementptr inbounds i32, i32* %14, i64 2
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 1
  %244 = sub i32 %240, %243
  %245 = call i32 @input_report_abs(%struct.input_dev* %235, i32 %236, i32 %244)
  %246 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %247 = load i32, i32* @ABS_HAT0Y, align 4
  %248 = getelementptr inbounds i32, i32* %14, i64 2
  %249 = load i32, i32* %248, align 8
  %250 = lshr i32 %249, 2
  %251 = and i32 %250, 1
  %252 = getelementptr inbounds i32, i32* %14, i64 2
  %253 = load i32, i32* %252, align 8
  %254 = lshr i32 %253, 3
  %255 = and i32 %254, 1
  %256 = sub i32 %251, %255
  %257 = call i32 @input_report_abs(%struct.input_dev* %246, i32 %247, i32 %256)
  %258 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %259 = load i32, i32* @ABS_HAT1X, align 4
  %260 = getelementptr inbounds i32, i32* %14, i64 2
  %261 = load i32, i32* %260, align 8
  %262 = lshr i32 %261, 5
  %263 = and i32 %262, 1
  %264 = getelementptr inbounds i32, i32* %14, i64 2
  %265 = load i32, i32* %264, align 8
  %266 = lshr i32 %265, 4
  %267 = and i32 %266, 1
  %268 = sub i32 %263, %267
  %269 = call i32 @input_report_abs(%struct.input_dev* %258, i32 %259, i32 %268)
  %270 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %271 = load i32, i32* @ABS_HAT1Y, align 4
  %272 = getelementptr inbounds i32, i32* %14, i64 2
  %273 = load i32, i32* %272, align 8
  %274 = lshr i32 %273, 6
  %275 = and i32 %274, 1
  %276 = getelementptr inbounds i32, i32* %14, i64 2
  %277 = load i32, i32* %276, align 8
  %278 = lshr i32 %277, 7
  %279 = and i32 %278, 1
  %280 = sub i32 %275, %279
  %281 = call i32 @input_report_abs(%struct.input_dev* %270, i32 %271, i32 %280)
  store i32 0, i32* %8, align 4
  br label %282

282:                                              ; preds = %299, %198
  %283 = load i32, i32* %8, align 4
  %284 = icmp slt i32 %283, 11
  br i1 %284, label %285, label %302

285:                                              ; preds = %282
  %286 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %287 = load i32*, i32** @grip_btn_xt, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds i32, i32* %14, i64 3
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 3
  %296 = lshr i32 %293, %295
  %297 = and i32 %296, 1
  %298 = call i32 @input_report_key(%struct.input_dev* %286, i32 %291, i32 %297)
  br label %299

299:                                              ; preds = %285
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %282

302:                                              ; preds = %282
  br label %397

303:                                              ; preds = %29
  %304 = load %struct.grip*, %struct.grip** %3, align 8
  %305 = getelementptr inbounds %struct.grip, %struct.grip* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %7, align 4
  %308 = shl i32 %307, 1
  %309 = add nsw i32 %308, 4
  %310 = call i32 @grip_xt_read_packet(i32 %306, i32 %309, i32* %14)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %303
  %313 = load %struct.grip*, %struct.grip** %3, align 8
  %314 = getelementptr inbounds %struct.grip, %struct.grip* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  br label %397

317:                                              ; preds = %303
  %318 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %319 = load i32, i32* @ABS_X, align 4
  %320 = getelementptr inbounds i32, i32* %14, i64 0
  %321 = load i32, i32* %320, align 16
  %322 = lshr i32 %321, 2
  %323 = and i32 %322, 63
  %324 = call i32 @input_report_abs(%struct.input_dev* %318, i32 %319, i32 %323)
  %325 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %326 = load i32, i32* @ABS_Y, align 4
  %327 = getelementptr inbounds i32, i32* %14, i64 0
  %328 = load i32, i32* %327, align 16
  %329 = lshr i32 %328, 8
  %330 = and i32 %329, 63
  %331 = call i32 @input_report_abs(%struct.input_dev* %325, i32 %326, i32 %330)
  %332 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %333 = load i32, i32* @ABS_RX, align 4
  %334 = getelementptr inbounds i32, i32* %14, i64 1
  %335 = load i32, i32* %334, align 4
  %336 = lshr i32 %335, 2
  %337 = and i32 %336, 63
  %338 = call i32 @input_report_abs(%struct.input_dev* %332, i32 %333, i32 %337)
  %339 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %340 = load i32, i32* @ABS_RY, align 4
  %341 = getelementptr inbounds i32, i32* %14, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = lshr i32 %342, 8
  %344 = and i32 %343, 63
  %345 = call i32 @input_report_abs(%struct.input_dev* %339, i32 %340, i32 %344)
  %346 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %347 = load i32, i32* @ABS_THROTTLE, align 4
  %348 = getelementptr inbounds i32, i32* %14, i64 2
  %349 = load i32, i32* %348, align 8
  %350 = lshr i32 %349, 8
  %351 = and i32 %350, 63
  %352 = call i32 @input_report_abs(%struct.input_dev* %346, i32 %347, i32 %351)
  %353 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %354 = load i32, i32* @ABS_HAT0X, align 4
  %355 = getelementptr inbounds i32, i32* %14, i64 2
  %356 = load i32, i32* %355, align 8
  %357 = lshr i32 %356, 1
  %358 = and i32 %357, 1
  %359 = getelementptr inbounds i32, i32* %14, i64 2
  %360 = load i32, i32* %359, align 8
  %361 = and i32 %360, 1
  %362 = sub i32 %358, %361
  %363 = call i32 @input_report_abs(%struct.input_dev* %353, i32 %354, i32 %362)
  %364 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %365 = load i32, i32* @ABS_HAT0Y, align 4
  %366 = getelementptr inbounds i32, i32* %14, i64 2
  %367 = load i32, i32* %366, align 8
  %368 = lshr i32 %367, 2
  %369 = and i32 %368, 1
  %370 = getelementptr inbounds i32, i32* %14, i64 2
  %371 = load i32, i32* %370, align 8
  %372 = lshr i32 %371, 3
  %373 = and i32 %372, 1
  %374 = sub i32 %369, %373
  %375 = call i32 @input_report_abs(%struct.input_dev* %364, i32 %365, i32 %374)
  store i32 0, i32* %8, align 4
  br label %376

376:                                              ; preds = %393, %317
  %377 = load i32, i32* %8, align 4
  %378 = icmp slt i32 %377, 9
  br i1 %378, label %379, label %396

379:                                              ; preds = %376
  %380 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %381 = load i32*, i32** @grip_btn_dc, align 8
  %382 = load i32, i32* %8, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = getelementptr inbounds i32, i32* %14, i64 3
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, 3
  %390 = lshr i32 %387, %389
  %391 = and i32 %390, 1
  %392 = call i32 @input_report_key(%struct.input_dev* %380, i32 %385, i32 %391)
  br label %393

393:                                              ; preds = %379
  %394 = load i32, i32* %8, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %8, align 4
  br label %376

396:                                              ; preds = %376
  br label %397

397:                                              ; preds = %29, %396, %312, %302, %193, %183, %112, %102, %50
  %398 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %399 = call i32 @input_sync(%struct.input_dev* %398)
  br label %400

400:                                              ; preds = %397, %28
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  br label %15

403:                                              ; preds = %15
  %404 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %404)
  ret void
}

declare dso_local %struct.grip* @gameport_get_drvdata(%struct.gameport*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @grip_gpp_read_packet(i32, i32, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @grip_xt_read_packet(i32, i32, i32*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
