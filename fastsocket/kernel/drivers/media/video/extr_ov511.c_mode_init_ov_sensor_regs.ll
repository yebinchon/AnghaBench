; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_mode_init_ov_sensor_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_mode_init_ov_sensor_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"Invalid sensor\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIDEO_PALETTE_GREY = common dso_local global i32 0, align 4
@BRG_OV518 = common dso_local global i64 0, align 8
@ov518_color = common dso_local global i64 0, align 8
@clockdiv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Setting clock divisor to %d\00", align 1
@framedrop = common dso_local global i32 0, align 4
@testpat = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32, i32, i32, i32, i32)* @mode_init_ov_sensor_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_init_ov_sensor_regs(%struct.usb_ov511* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_ov511*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %16 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %89 [
    i32 130, label %18
    i32 129, label %25
    i32 128, label %68
    i32 132, label %75
    i32 131, label %82
  ]

18:                                               ; preds = %6
  %19 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 36, i32 4
  %24 = call i32 @i2c_w(%struct.usb_ov511* %19, i32 20, i32 %23)
  br label %93

25:                                               ; preds = %6
  %26 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 164, i32 132
  %31 = call i32 @i2c_w(%struct.usb_ov511* %26, i32 20, i32 %30)
  %32 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 32
  %37 = call i32 @i2c_w_mask(%struct.usb_ov511* %32, i32 40, i32 %36, i32 32)
  %38 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 32, i32 58
  %43 = call i32 @i2c_w(%struct.usb_ov511* %38, i32 36, i32 %42)
  %44 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 48, i32 96
  %49 = call i32 @i2c_w(%struct.usb_ov511* %44, i32 37, i32 %48)
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 64, i32 0
  %55 = call i32 @i2c_w_mask(%struct.usb_ov511* %50, i32 45, i32 %54, i32 64)
  %56 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 240, i32 144
  %61 = call i32 @i2c_w_mask(%struct.usb_ov511* %56, i32 103, i32 %60, i32 240)
  %62 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 32, i32 0
  %67 = call i32 @i2c_w_mask(%struct.usb_ov511* %62, i32 116, i32 %66, i32 32)
  br label %93

68:                                               ; preds = %6
  %69 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 164, i32 132
  %74 = call i32 @i2c_w(%struct.usb_ov511* %69, i32 20, i32 %73)
  br label %93

75:                                               ; preds = %6
  %76 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 36, i32 4
  %81 = call i32 @i2c_w(%struct.usb_ov511* %76, i32 20, i32 %80)
  br label %93

82:                                               ; preds = %6
  %83 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 160, i32 128
  %88 = call i32 @i2c_w(%struct.usb_ov511* %83, i32 20, i32 %87)
  br label %93

89:                                               ; preds = %6
  %90 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %286

93:                                               ; preds = %82, %75, %68, %25, %18
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %93
  %98 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %99 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 130
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %104 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 128
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %97
  %108 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %109 = call i32 @i2c_w_mask(%struct.usb_ov511* %108, i32 14, i32 64, i32 64)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %112 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 131
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %117 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BRG_OV518, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load i64, i64* @ov518_color, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %126 = call i32 @i2c_w_mask(%struct.usb_ov511* %125, i32 18, i32 0, i32 16)
  %127 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %128 = call i32 @i2c_w_mask(%struct.usb_ov511* %127, i32 19, i32 0, i32 32)
  br label %132

129:                                              ; preds = %121, %115, %110
  %130 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %131 = call i32 @i2c_w_mask(%struct.usb_ov511* %130, i32 19, i32 32, i32 32)
  br label %132

132:                                              ; preds = %129, %124
  br label %169

133:                                              ; preds = %93
  %134 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %135 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 130
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %140 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 128
  br i1 %142, label %143, label %146

143:                                              ; preds = %138, %133
  %144 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %145 = call i32 @i2c_w_mask(%struct.usb_ov511* %144, i32 14, i32 0, i32 64)
  br label %146

146:                                              ; preds = %143, %138
  %147 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %148 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 131
  br i1 %150, label %151, label %165

151:                                              ; preds = %146
  %152 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %153 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BRG_OV518, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load i64, i64* @ov518_color, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %162 = call i32 @i2c_w_mask(%struct.usb_ov511* %161, i32 18, i32 16, i32 16)
  %163 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %164 = call i32 @i2c_w_mask(%struct.usb_ov511* %163, i32 19, i32 32, i32 32)
  br label %168

165:                                              ; preds = %157, %151, %146
  %166 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %167 = call i32 @i2c_w_mask(%struct.usb_ov511* %166, i32 19, i32 0, i32 32)
  br label %168

168:                                              ; preds = %165, %160
  br label %169

169:                                              ; preds = %168, %132
  %170 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %171 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 132
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %176 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 131
  br i1 %178, label %179, label %204

179:                                              ; preds = %174, %169
  %180 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %181 = call i32 @i2c_w(%struct.usb_ov511* %180, i32 42, i32 4)
  %182 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %183 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  store i32 3, i32* %14, align 4
  br label %194

187:                                              ; preds = %179
  %188 = load i32, i32* @clockdiv, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 3, i32* %14, align 4
  br label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @clockdiv, align 4
  store i32 %192, i32* %14, align 4
  br label %193

193:                                              ; preds = %191, %190
  br label %194

194:                                              ; preds = %193, %186
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  %197 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @i2c_w(%struct.usb_ov511* %197, i32 17, i32 %198)
  %200 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %201 = call i32 @i2c_w(%struct.usb_ov511* %200, i32 42, i32 132)
  %202 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %203 = call i32 @i2c_w(%struct.usb_ov511* %202, i32 45, i32 133)
  br label %247

204:                                              ; preds = %174
  %205 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %206 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i32 1, i32* %14, align 4
  br label %241

210:                                              ; preds = %204
  %211 = load i32, i32* @clockdiv, align 4
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %238

213:                                              ; preds = %210
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %213
  %217 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %218 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %221 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = mul nsw i32 %219, %222
  br label %228

224:                                              ; preds = %213
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = mul nsw i32 %225, %226
  br label %228

228:                                              ; preds = %224, %216
  %229 = phi i32 [ %223, %216 ], [ %227, %224 ]
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* @VIDEO_PALETTE_GREY, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 2, i32 3
  %235 = mul nsw i32 %229, %234
  %236 = sdiv i32 %235, 2
  %237 = sdiv i32 %236, 66000
  store i32 %237, i32* %14, align 4
  br label %240

238:                                              ; preds = %210
  %239 = load i32, i32* @clockdiv, align 4
  store i32 %239, i32* %14, align 4
  br label %240

240:                                              ; preds = %238, %228
  br label %241

241:                                              ; preds = %240, %209
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %242)
  %244 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %245 = load i32, i32* %14, align 4
  %246 = call i32 @i2c_w(%struct.usb_ov511* %244, i32 17, i32 %245)
  br label %247

247:                                              ; preds = %241, %194
  %248 = load i32, i32* @framedrop, align 4
  %249 = icmp sge i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %252 = load i32, i32* @framedrop, align 4
  %253 = call i32 @i2c_w(%struct.usb_ov511* %251, i32 22, i32 %252)
  br label %254

254:                                              ; preds = %250, %247
  %255 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %256 = load i64, i64* @testpat, align 8
  %257 = icmp ne i64 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 2, i32 0
  %260 = call i32 @i2c_w_mask(%struct.usb_ov511* %255, i32 18, i32 %259, i32 2)
  %261 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %262 = call i32 @i2c_w_mask(%struct.usb_ov511* %261, i32 18, i32 4, i32 4)
  %263 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %264 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 130
  br i1 %266, label %272, label %267

267:                                              ; preds = %254
  %268 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %269 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 128
  br i1 %271, label %272, label %285

272:                                              ; preds = %267, %254
  %273 = load i32, i32* %9, align 4
  %274 = icmp eq i32 %273, 640
  br i1 %274, label %275, label %281

275:                                              ; preds = %272
  %276 = load i32, i32* %10, align 4
  %277 = icmp eq i32 %276, 480
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %280 = call i32 @i2c_w(%struct.usb_ov511* %279, i32 53, i32 158)
  br label %284

281:                                              ; preds = %275, %272
  %282 = load %struct.usb_ov511*, %struct.usb_ov511** %8, align 8
  %283 = call i32 @i2c_w(%struct.usb_ov511* %282, i32 53, i32 30)
  br label %284

284:                                              ; preds = %281, %278
  br label %285

285:                                              ; preds = %284, %267
  store i32 0, i32* %7, align 4
  br label %286

286:                                              ; preds = %285, %89
  %287 = load i32, i32* %7, align 4
  ret i32 %287
}

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @i2c_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
