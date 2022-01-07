; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.iforce = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i64, i64, %struct.input_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.input_dev = type { i32, i32 }

@iforce_process_packet.being_used = internal global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"re-entrant call to iforce_process %d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_RUDDER = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_GAS = common dso_local global i32 0, align 4
@ABS_BRAKE = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@iforce_hat_to_axis = common dso_local global %struct.TYPE_6__* null, align 8
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_HAT1X = common dso_local global i32 0, align 4
@ABS_HAT1Y = common dso_local global i32 0, align 4
@BTN_DEAD = common dso_local global i32 0, align 4
@FF_CORE_IS_PLAYED = common dso_local global i32 0, align 4
@FF_STATUS_PLAYING = common dso_local global i32 0, align 4
@FF_STATUS_STOPPED = common dso_local global i32 0, align 4
@IFORCE_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iforce_process_packet(%struct.iforce* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.iforce*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.iforce*, %struct.iforce** %4, align 8
  %12 = getelementptr inbounds %struct.iforce, %struct.iforce* %11, i32 0, i32 6
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %7, align 8
  %14 = load i32, i32* @iforce_process_packet.being_used, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.iforce*, %struct.iforce** %4, align 8
  %18 = getelementptr inbounds %struct.iforce, %struct.iforce* %17, i32 0, i32 6
  %19 = load %struct.input_dev*, %struct.input_dev** %18, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 1
  %21 = load i32, i32* @iforce_process_packet.being_used, align 4
  %22 = call i32 @dev_warn(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32, i32* @iforce_process_packet.being_used, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @iforce_process_packet.being_used, align 4
  %26 = load %struct.iforce*, %struct.iforce** %4, align 8
  %27 = getelementptr inbounds %struct.iforce, %struct.iforce* %26, i32 0, i32 2
  %28 = call i32 @wake_up(i32* %27)
  %29 = load %struct.iforce*, %struct.iforce** %4, align 8
  %30 = getelementptr inbounds %struct.iforce, %struct.iforce* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @iforce_process_packet.being_used, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @iforce_process_packet.being_used, align 4
  br label %358

36:                                               ; preds = %23
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @HI(i64 %37)
  switch i32 %38, label %355 [
    i32 1, label %39
    i32 3, label %39
    i32 2, label %262
  ]

39:                                               ; preds = %36, %36
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @HI(i64 %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %97

43:                                               ; preds = %39
  %44 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %45 = load i32, i32* @ABS_X, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %50, %54
  %56 = call i32 @input_report_abs(%struct.input_dev* %44, i32 %45, i32 %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %58 = load i32, i32* @ABS_Y, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %63, %67
  %69 = call i32 @input_report_abs(%struct.input_dev* %57, i32 %58, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = load i32, i32* @ABS_THROTTLE, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = sub nsw i32 255, %75
  %77 = call i32 @input_report_abs(%struct.input_dev* %70, i32 %71, i32 %76)
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @LO(i64 %78)
  %80 = icmp sge i32 %79, 8
  br i1 %80, label %81, label %96

81:                                               ; preds = %43
  %82 = load i32, i32* @ABS_RUDDER, align 4
  %83 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %84 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @test_bit(i32 %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %90 = load i32, i32* @ABS_RUDDER, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 7
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 @input_report_abs(%struct.input_dev* %89, i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %88, %81, %43
  br label %127

97:                                               ; preds = %39
  %98 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %99 = load i32, i32* @ABS_WHEEL, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %104, %108
  %110 = call i32 @input_report_abs(%struct.input_dev* %98, i32 %99, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %112 = load i32, i32* @ABS_GAS, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = sub nsw i32 255, %116
  %118 = call i32 @input_report_abs(%struct.input_dev* %111, i32 %112, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = load i32, i32* @ABS_BRAKE, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = sub nsw i32 255, %124
  %126 = call i32 @input_report_abs(%struct.input_dev* %119, i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %97, %96
  %128 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %129 = load i32, i32* @ABS_HAT0X, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iforce_hat_to_axis, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 6
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = ashr i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @input_report_abs(%struct.input_dev* %128, i32 %129, i32 %139)
  %141 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %142 = load i32, i32* @ABS_HAT0Y, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @iforce_hat_to_axis, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 6
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = ashr i32 %147, 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @input_report_abs(%struct.input_dev* %141, i32 %142, i32 %152)
  store i32 0, i32* %8, align 4
  br label %154

154:                                              ; preds = %190, %127
  %155 = load %struct.iforce*, %struct.iforce** %4, align 8
  %156 = getelementptr inbounds %struct.iforce, %struct.iforce* %155, i32 0, i32 1
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %154
  %166 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %167 = load %struct.iforce*, %struct.iforce** %4, align 8
  %168 = getelementptr inbounds %struct.iforce, %struct.iforce* %167, i32 0, i32 1
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = ashr i32 %177, 3
  %179 = add nsw i32 %178, 5
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, 7
  %186 = shl i32 1, %185
  %187 = and i32 %183, %186
  %188 = trunc i32 %187 to i8
  %189 = call i32 @input_report_key(%struct.input_dev* %166, i32 %175, i8 zeroext %188)
  br label %190

190:                                              ; preds = %165
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %154

193:                                              ; preds = %154
  %194 = load i32, i32* %8, align 4
  %195 = icmp sle i32 %194, 8
  br i1 %195, label %196, label %259

196:                                              ; preds = %193
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 6
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* @ABS_HAT1X, align 4
  %202 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %203 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @test_bit(i32 %201, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %229

207:                                              ; preds = %196
  %208 = load i32, i32* %9, align 4
  %209 = and i32 %208, 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %213 = load i32, i32* @ABS_HAT1X, align 4
  %214 = call i32 @input_report_abs(%struct.input_dev* %212, i32 %213, i32 -1)
  br label %228

215:                                              ; preds = %207
  %216 = load i32, i32* %9, align 4
  %217 = and i32 %216, 2
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %221 = load i32, i32* @ABS_HAT1X, align 4
  %222 = call i32 @input_report_abs(%struct.input_dev* %220, i32 %221, i32 1)
  br label %227

223:                                              ; preds = %215
  %224 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %225 = load i32, i32* @ABS_HAT1X, align 4
  %226 = call i32 @input_report_abs(%struct.input_dev* %224, i32 %225, i32 0)
  br label %227

227:                                              ; preds = %223, %219
  br label %228

228:                                              ; preds = %227, %211
  br label %229

229:                                              ; preds = %228, %196
  %230 = load i32, i32* @ABS_HAT1Y, align 4
  %231 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %232 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @test_bit(i32 %230, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %258

236:                                              ; preds = %229
  %237 = load i32, i32* %9, align 4
  %238 = and i32 %237, 1
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %242 = load i32, i32* @ABS_HAT1Y, align 4
  %243 = call i32 @input_report_abs(%struct.input_dev* %241, i32 %242, i32 -1)
  br label %257

244:                                              ; preds = %236
  %245 = load i32, i32* %9, align 4
  %246 = and i32 %245, 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %244
  %249 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %250 = load i32, i32* @ABS_HAT1Y, align 4
  %251 = call i32 @input_report_abs(%struct.input_dev* %249, i32 %250, i32 1)
  br label %256

252:                                              ; preds = %244
  %253 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %254 = load i32, i32* @ABS_HAT1Y, align 4
  %255 = call i32 @input_report_abs(%struct.input_dev* %253, i32 %254, i32 0)
  br label %256

256:                                              ; preds = %252, %248
  br label %257

257:                                              ; preds = %256, %240
  br label %258

258:                                              ; preds = %257, %229
  br label %259

259:                                              ; preds = %258, %193
  %260 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %261 = call i32 @input_sync(%struct.input_dev* %260)
  br label %355

262:                                              ; preds = %36
  %263 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %264 = load i32, i32* @BTN_DEAD, align 4
  %265 = load i8*, i8** %6, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = and i32 %268, 2
  %270 = trunc i32 %269 to i8
  %271 = call i32 @input_report_key(%struct.input_dev* %263, i32 %264, i8 zeroext %270)
  %272 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %273 = call i32 @input_sync(%struct.input_dev* %272)
  %274 = load i8*, i8** %6, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = and i32 %277, 127
  store i32 %278, i32* %8, align 4
  %279 = load i8*, i8** %6, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = and i32 %282, 128
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %303

285:                                              ; preds = %262
  %286 = load i32, i32* @FF_CORE_IS_PLAYED, align 4
  %287 = load %struct.iforce*, %struct.iforce** %4, align 8
  %288 = getelementptr inbounds %struct.iforce, %struct.iforce* %287, i32 0, i32 0
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @test_and_set_bit(i32 %286, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %285
  %298 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* @FF_STATUS_PLAYING, align 4
  %301 = call i32 @input_report_ff_status(%struct.input_dev* %298, i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %297, %285
  br label %321

303:                                              ; preds = %262
  %304 = load i32, i32* @FF_CORE_IS_PLAYED, align 4
  %305 = load %struct.iforce*, %struct.iforce** %4, align 8
  %306 = getelementptr inbounds %struct.iforce, %struct.iforce* %305, i32 0, i32 0
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @test_and_clear_bit(i32 %304, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %303
  %316 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* @FF_STATUS_STOPPED, align 4
  %319 = call i32 @input_report_ff_status(%struct.input_dev* %316, i32 %317, i32 %318)
  br label %320

320:                                              ; preds = %315, %303
  br label %321

321:                                              ; preds = %320, %302
  %322 = load i64, i64* %5, align 8
  %323 = call i32 @LO(i64 %322)
  %324 = icmp sgt i32 %323, 3
  br i1 %324, label %325, label %354

325:                                              ; preds = %321
  store i32 3, i32* %10, align 4
  br label %326

326:                                              ; preds = %350, %325
  %327 = load i32, i32* %10, align 4
  %328 = load i64, i64* %5, align 8
  %329 = call i32 @LO(i64 %328)
  %330 = icmp slt i32 %327, %329
  br i1 %330, label %331, label %353

331:                                              ; preds = %326
  %332 = load %struct.iforce*, %struct.iforce** %4, align 8
  %333 = load i8*, i8** %6, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = load i8*, i8** %6, align 8
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %339, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = shl i32 %345, 8
  %347 = or i32 %338, %346
  %348 = trunc i32 %347 to i8
  %349 = call i32 @mark_core_as_ready(%struct.iforce* %332, i8 zeroext %348)
  br label %350

350:                                              ; preds = %331
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, 2
  store i32 %352, i32* %10, align 4
  br label %326

353:                                              ; preds = %326
  br label %354

354:                                              ; preds = %353, %321
  br label %355

355:                                              ; preds = %36, %354, %259
  %356 = load i32, i32* @iforce_process_packet.being_used, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* @iforce_process_packet.being_used, align 4
  br label %358

358:                                              ; preds = %355, %33
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @HI(i64) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @LO(i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @input_report_ff_status(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @mark_core_as_ready(%struct.iforce*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
