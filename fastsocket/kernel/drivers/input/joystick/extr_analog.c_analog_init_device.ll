; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_init_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_analog.c_analog_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analog_port = type { i32*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.analog = type { i32, %struct.input_dev*, i32*, i32, i32 }
%struct.input_dev = type { i32*, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s/input%d\00", align 1
@ANALOG_GAMEPAD = common dso_local global i32 0, align 4
@analog_pad_btn = common dso_local global i32* null, align 8
@analog_joy_btn = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@BUS_GAMEPORT = common dso_local global i32 0, align 4
@GAMEPORT_ID_VENDOR_ANALOG = common dso_local global i32 0, align 4
@analog_open = common dso_local global i32 0, align 4
@analog_close = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@analog_axes = common dso_local global i32* null, align 8
@ANALOG_SAITEK = common dso_local global i32 0, align 4
@analog_exts = common dso_local global i32* null, align 8
@analog_hats = common dso_local global i32* null, align 8
@ANALOG_BTNS_CHF = common dso_local global i32 0, align 4
@ANALOG_HBTN_CHF = common dso_local global i32 0, align 4
@ANALOG_BTN_TL = common dso_local global i32 0, align 4
@analog_pads = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analog_port*, %struct.analog*, i32)* @analog_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analog_init_device(%struct.analog_port* %0, %struct.analog* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.analog_port*, align 8
  %6 = alloca %struct.analog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.analog_port* %0, %struct.analog_port** %5, align 8
  store %struct.analog* %1, %struct.analog** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.analog*, %struct.analog** %6, align 8
  %19 = call i32 @analog_name(%struct.analog* %18)
  %20 = load %struct.analog*, %struct.analog** %6, align 8
  %21 = getelementptr inbounds %struct.analog, %struct.analog* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %24 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load %struct.analog*, %struct.analog** %6, align 8
  %31 = getelementptr inbounds %struct.analog, %struct.analog* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ANALOG_GAMEPAD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32*, i32** @analog_pad_btn, align 8
  br label %40

38:                                               ; preds = %3
  %39 = load i32*, i32** @analog_joy_btn, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32* [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.analog*, %struct.analog** %6, align 8
  %43 = getelementptr inbounds %struct.analog, %struct.analog* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %44, %struct.input_dev** %8, align 8
  %45 = load %struct.analog*, %struct.analog** %6, align 8
  %46 = getelementptr inbounds %struct.analog, %struct.analog* %45, i32 0, i32 1
  store %struct.input_dev* %44, %struct.input_dev** %46, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %48 = icmp ne %struct.input_dev* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %400

52:                                               ; preds = %40
  %53 = load %struct.analog*, %struct.analog** %6, align 8
  %54 = getelementptr inbounds %struct.analog, %struct.analog* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.analog*, %struct.analog** %6, align 8
  %59 = getelementptr inbounds %struct.analog, %struct.analog* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @BUS_GAMEPORT, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @GAMEPORT_ID_VENDOR_ANALOG, align 4
  %68 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.analog*, %struct.analog** %6, align 8
  %72 = getelementptr inbounds %struct.analog, %struct.analog* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %73, 4
  %75 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 256, i32* %80, align 4
  %81 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %82 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32* %84, i32** %87, align 8
  %88 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %89 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %90 = call i32 @input_set_drvdata(%struct.input_dev* %88, %struct.analog_port* %89)
  %91 = load i32, i32* @analog_open, align 4
  %92 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @analog_close, align 4
  %95 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @EV_KEY, align 4
  %98 = call i32 @BIT_MASK(i32 %97)
  %99 = load i32, i32* @EV_ABS, align 4
  %100 = call i32 @BIT_MASK(i32 %99)
  %101 = or i32 %98, %100
  %102 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %103 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %101, i32* %105, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %223, %52
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %226

109:                                              ; preds = %106
  %110 = load %struct.analog*, %struct.analog** %6, align 8
  %111 = getelementptr inbounds %struct.analog, %struct.analog* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = shl i32 1, %113
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %222

117:                                              ; preds = %109
  %118 = load i32*, i32** @analog_axes, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  %123 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %124 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %14, align 4
  %130 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %131 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %136 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %134, %139
  %141 = ashr i32 %140, 1
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %144 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %142, %149
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %117
  %154 = load i32, i32* %16, align 4
  br label %158

155:                                              ; preds = %117
  %156 = load i32, i32* %16, align 4
  %157 = sub nsw i32 0, %156
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %157, %155 ]
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %14, align 4
  %161 = ashr i32 %160, 3
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %14, align 4
  %163 = ashr i32 %162, 3
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp eq i32 %164, 2
  br i1 %165, label %169, label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %9, align 4
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %182

169:                                              ; preds = %166, %158
  %170 = load i32, i32* %10, align 4
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %182

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %15, align 4
  %178 = ashr i32 %177, 3
  %179 = icmp sgt i32 %176, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %180, %175, %172, %166
  %183 = load %struct.analog*, %struct.analog** %6, align 8
  %184 = getelementptr inbounds %struct.analog, %struct.analog* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ANALOG_SAITEK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %182
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %194 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %14, align 4
  br label %200

200:                                              ; preds = %192, %189
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = ashr i32 %202, 2
  %204 = sub nsw i32 %201, %203
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %14, align 4
  %206 = ashr i32 %205, 4
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %200, %182
  %208 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %14, align 4
  %212 = shl i32 %211, 1
  %213 = load i32, i32* %12, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %216 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @input_set_abs_params(%struct.input_dev* %208, i32 %209, i32 %210, i32 %214, i32 %217, i32 %218)
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %207, %109
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %9, align 4
  br label %106

226:                                              ; preds = %106
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %260, %226
  %228 = load i32, i32* %9, align 4
  %229 = icmp slt i32 %228, 3
  br i1 %229, label %230, label %263

230:                                              ; preds = %227
  %231 = load %struct.analog*, %struct.analog** %6, align 8
  %232 = getelementptr inbounds %struct.analog, %struct.analog* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** @analog_exts, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %233, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %230
  store i32 0, i32* %14, align 4
  br label %242

242:                                              ; preds = %255, %241
  %243 = load i32, i32* %14, align 4
  %244 = icmp slt i32 %243, 2
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load i32*, i32** @analog_hats, align 8
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %10, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %11, align 4
  %252 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @input_set_abs_params(%struct.input_dev* %252, i32 %253, i32 -1, i32 1, i32 0, i32 0)
  br label %255

255:                                              ; preds = %245
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %14, align 4
  br label %242

258:                                              ; preds = %242
  br label %259

259:                                              ; preds = %258, %230
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %227

263:                                              ; preds = %227
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %264

264:                                              ; preds = %289, %263
  %265 = load i32, i32* %9, align 4
  %266 = icmp slt i32 %265, 4
  br i1 %266, label %267, label %292

267:                                              ; preds = %264
  %268 = load %struct.analog*, %struct.analog** %6, align 8
  %269 = getelementptr inbounds %struct.analog, %struct.analog* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %9, align 4
  %272 = shl i32 16, %271
  %273 = and i32 %270, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %267
  %276 = load %struct.analog*, %struct.analog** %6, align 8
  %277 = getelementptr inbounds %struct.analog, %struct.analog* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %10, align 4
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %285 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @set_bit(i32 %283, i32 %286)
  br label %288

288:                                              ; preds = %275, %267
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %9, align 4
  br label %264

292:                                              ; preds = %264
  %293 = load %struct.analog*, %struct.analog** %6, align 8
  %294 = getelementptr inbounds %struct.analog, %struct.analog* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @ANALOG_BTNS_CHF, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %320

299:                                              ; preds = %292
  store i32 0, i32* %9, align 4
  br label %300

300:                                              ; preds = %316, %299
  %301 = load i32, i32* %9, align 4
  %302 = icmp slt i32 %301, 2
  br i1 %302, label %303, label %319

303:                                              ; preds = %300
  %304 = load %struct.analog*, %struct.analog** %6, align 8
  %305 = getelementptr inbounds %struct.analog, %struct.analog* %304, i32 0, i32 2
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %10, align 4
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %313 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @set_bit(i32 %311, i32 %314)
  br label %316

316:                                              ; preds = %303
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %9, align 4
  br label %300

319:                                              ; preds = %300
  br label %320

320:                                              ; preds = %319, %292
  %321 = load %struct.analog*, %struct.analog** %6, align 8
  %322 = getelementptr inbounds %struct.analog, %struct.analog* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @ANALOG_HBTN_CHF, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %348

327:                                              ; preds = %320
  store i32 0, i32* %9, align 4
  br label %328

328:                                              ; preds = %344, %327
  %329 = load i32, i32* %9, align 4
  %330 = icmp slt i32 %329, 4
  br i1 %330, label %331, label %347

331:                                              ; preds = %328
  %332 = load %struct.analog*, %struct.analog** %6, align 8
  %333 = getelementptr inbounds %struct.analog, %struct.analog* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %10, align 4
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %334, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %341 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @set_bit(i32 %339, i32 %342)
  br label %344

344:                                              ; preds = %331
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %9, align 4
  br label %328

347:                                              ; preds = %328
  br label %348

348:                                              ; preds = %347, %320
  store i32 0, i32* %9, align 4
  br label %349

349:                                              ; preds = %372, %348
  %350 = load i32, i32* %9, align 4
  %351 = icmp slt i32 %350, 4
  br i1 %351, label %352, label %375

352:                                              ; preds = %349
  %353 = load %struct.analog*, %struct.analog** %6, align 8
  %354 = getelementptr inbounds %struct.analog, %struct.analog* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @ANALOG_BTN_TL, align 4
  %357 = load i32, i32* %9, align 4
  %358 = shl i32 %356, %357
  %359 = and i32 %355, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %352
  %362 = load i32*, i32** @analog_pads, align 8
  %363 = load i32, i32* %9, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %368 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @set_bit(i32 %366, i32 %369)
  br label %371

371:                                              ; preds = %361, %352
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %9, align 4
  br label %349

375:                                              ; preds = %349
  %376 = load %struct.analog*, %struct.analog** %6, align 8
  %377 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %378 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %381 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.analog_port*, %struct.analog_port** %5, align 8
  %384 = getelementptr inbounds %struct.analog_port, %struct.analog_port* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @analog_decode(%struct.analog* %376, i32* %379, i32 %382, i32 %385)
  %387 = load %struct.analog*, %struct.analog** %6, align 8
  %388 = getelementptr inbounds %struct.analog, %struct.analog* %387, i32 0, i32 1
  %389 = load %struct.input_dev*, %struct.input_dev** %388, align 8
  %390 = call i32 @input_register_device(%struct.input_dev* %389)
  store i32 %390, i32* %17, align 4
  %391 = load i32, i32* %17, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %375
  %394 = load %struct.analog*, %struct.analog** %6, align 8
  %395 = getelementptr inbounds %struct.analog, %struct.analog* %394, i32 0, i32 1
  %396 = load %struct.input_dev*, %struct.input_dev** %395, align 8
  %397 = call i32 @input_free_device(%struct.input_dev* %396)
  %398 = load i32, i32* %17, align 4
  store i32 %398, i32* %4, align 4
  br label %400

399:                                              ; preds = %375
  store i32 0, i32* %4, align 4
  br label %400

400:                                              ; preds = %399, %393, %49
  %401 = load i32, i32* %4, align 4
  ret i32 %401
}

declare dso_local i32 @analog_name(%struct.analog*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.analog_port*) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @analog_decode(%struct.analog*, i32*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
