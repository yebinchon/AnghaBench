; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-input.c_hidinput_hid_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-input.c_hidinput_hid_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i64, i64, i64, i32, i32, i32 }

@hid_hat_to_axis = common dso_local global %struct.TYPE_4__* null, align 8
@HID_UP_DIGITIZER = common dso_local global i32 0, align 4
@HID_QUIRK_INVERT = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@HID_QUIRK_NOTOUCH = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i32 0, align 4
@HID_UP_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Maximum Effects - %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PID Pool Report\0A\00", align 1
@EV_ABS = common dso_local global i64 0, align 8
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@ABS_VOLUME = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i64 0, align 8
@MSC_SCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hidinput_hid_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  store i32* %18, i32** %10, align 8
  %19 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %20 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %356

24:                                               ; preds = %4
  %25 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %26 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.input_dev*, %struct.input_dev** %28, align 8
  store %struct.input_dev* %29, %struct.input_dev** %9, align 8
  %30 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %31 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %356

35:                                               ; preds = %24
  %36 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %37 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %40 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %45 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %43, %35
  %49 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %50 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %58 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = mul nsw i64 %60, 8
  %62 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %63 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %66 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = add nsw i64 %68, 1
  %70 = sdiv i64 %61, %69
  %71 = add nsw i64 %70, 1
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %54, %48
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 8
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %73
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %82 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %83 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %86 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hid_hat_to_axis, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @input_event(%struct.input_dev* %81, i64 %84, i32 %87, i32 %93)
  %95 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %96 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %97 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %100 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hid_hat_to_axis, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @input_event(%struct.input_dev* %95, i64 %98, i32 %102, i32 %108)
  br label %356

110:                                              ; preds = %43
  %111 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %112 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @HID_UP_DIGITIZER, align 4
  %115 = or i32 %114, 60
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HID_QUIRK_INVERT, align 4
  %124 = or i32 %122, %123
  br label %131

125:                                              ; preds = %117
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HID_QUIRK_INVERT, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  br label %131

131:                                              ; preds = %125, %120
  %132 = phi i32 [ %124, %120 ], [ %130, %125 ]
  %133 = load i32*, i32** %10, align 8
  store i32 %132, i32* %133, align 4
  br label %356

134:                                              ; preds = %110
  %135 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %136 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @HID_UP_DIGITIZER, align 4
  %139 = or i32 %138, 50
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %178

141:                                              ; preds = %134
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %141
  %145 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %146 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %147 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @HID_QUIRK_INVERT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %160

156:                                              ; preds = %144
  %157 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %158 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  br label %160

160:                                              ; preds = %156, %154
  %161 = phi i32 [ %155, %154 ], [ %159, %156 ]
  %162 = call i32 @input_event(%struct.input_dev* %145, i64 %148, i32 %161, i32 1)
  br label %356

163:                                              ; preds = %141
  %164 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %165 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %166 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %169 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @input_event(%struct.input_dev* %164, i64 %167, i32 %170, i32 0)
  %172 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %173 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %174 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %177 = call i32 @input_event(%struct.input_dev* %172, i64 %175, i32 %176, i32 0)
  br label %356

178:                                              ; preds = %134
  %179 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %180 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @HID_UP_DIGITIZER, align 4
  %183 = or i32 %182, 48
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %178
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @HID_QUIRK_NOTOUCH, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %185
  %192 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %193 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %12, align 4
  %195 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %196 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %13, align 4
  %198 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %199 = load i64, i64* @EV_KEY, align 8
  %200 = load i32, i32* @BTN_TOUCH, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %12, align 4
  %205 = sub nsw i32 %203, %204
  %206 = ashr i32 %205, 3
  %207 = add nsw i32 %202, %206
  %208 = icmp sgt i32 %201, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @input_event(%struct.input_dev* %198, i64 %199, i32 %200, i32 %209)
  br label %211

211:                                              ; preds = %191, %185, %178
  %212 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %213 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = load i32, i32* @HID_UP_PID, align 4
  %217 = sext i32 %216 to i64
  %218 = or i64 %217, 131
  %219 = icmp eq i64 %215, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %221)
  br label %356

223:                                              ; preds = %211
  %224 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %225 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = load i32, i32* @HID_UP_PID, align 4
  %229 = sext i32 %228 to i64
  %230 = or i64 %229, 127
  %231 = icmp eq i64 %227, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %223
  %233 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %356

234:                                              ; preds = %223
  %235 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %236 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @EV_KEY, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %234
  %241 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %242 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %356

246:                                              ; preds = %240, %234
  %247 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %248 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @EV_ABS, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %297

252:                                              ; preds = %246
  %253 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %254 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %297

259:                                              ; preds = %252
  %260 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %261 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @ABS_VOLUME, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %297

265:                                              ; preds = %259
  %266 = load i32, i32* %8, align 4
  %267 = call i32 @abs(i32 %266) #3
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* @KEY_VOLUMEUP, align 4
  br label %274

272:                                              ; preds = %265
  %273 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi i32 [ %271, %270 ], [ %273, %272 ]
  store i32 %275, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %276

276:                                              ; preds = %293, %274
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %14, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %296

280:                                              ; preds = %276
  %281 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %282 = load i64, i64* @EV_KEY, align 8
  %283 = load i32, i32* %15, align 4
  %284 = call i32 @input_event(%struct.input_dev* %281, i64 %282, i32 %283, i32 1)
  %285 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %286 = call i32 @input_sync(%struct.input_dev* %285)
  %287 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %288 = load i64, i64* @EV_KEY, align 8
  %289 = load i32, i32* %15, align 4
  %290 = call i32 @input_event(%struct.input_dev* %287, i64 %288, i32 %289, i32 0)
  %291 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %292 = call i32 @input_sync(%struct.input_dev* %291)
  br label %293

293:                                              ; preds = %280
  %294 = load i32, i32* %16, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %16, align 4
  br label %276

296:                                              ; preds = %276
  br label %356

297:                                              ; preds = %259, %252, %246
  %298 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %299 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @EV_KEY, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %325

303:                                              ; preds = %297
  %304 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %305 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %308 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @test_bit(i32 %306, i32 %309)
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i32
  %315 = load i32, i32* %8, align 4
  %316 = icmp ne i32 %314, %315
  br i1 %316, label %317, label %325

317:                                              ; preds = %303
  %318 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %319 = load i64, i64* @EV_MSC, align 8
  %320 = load i32, i32* @MSC_SCAN, align 4
  %321 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %322 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @input_event(%struct.input_dev* %318, i64 %319, i32 %320, i32 %323)
  br label %325

325:                                              ; preds = %317, %303, %297
  %326 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %327 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %328 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %331 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @input_event(%struct.input_dev* %326, i64 %329, i32 %332, i32 %333)
  %335 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %336 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %356

341:                                              ; preds = %325
  %342 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %343 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @EV_KEY, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %356

347:                                              ; preds = %341
  %348 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %349 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %350 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %353 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @input_event(%struct.input_dev* %348, i64 %351, i32 %354, i32 0)
  br label %356

356:                                              ; preds = %23, %34, %80, %131, %160, %163, %220, %232, %245, %296, %347, %341, %325
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i64, i32, i32) #1

declare dso_local i32 @dbg_hid(i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
