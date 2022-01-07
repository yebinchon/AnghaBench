; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_po1030.c_po1030_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_po1030.c_po1030_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PO1030_SUBSAMPLING = common dso_local global i32 0, align 4
@PO1030_CONTROL3 = common dso_local global i32 0, align 4
@PO1030_WINDOWWIDTH_H = common dso_local global i32 0, align 4
@PO1030_WINDOWWIDTH_L = common dso_local global i32 0, align 4
@PO1030_WINDOWHEIGHT_H = common dso_local global i32 0, align 4
@PO1030_WINDOWHEIGHT_L = common dso_local global i32 0, align 4
@M5602_XB_SENSOR_TYPE = common dso_local global i32 0, align 4
@M5602_XB_LINE_OF_FRAME_H = common dso_local global i32 0, align 4
@M5602_XB_PIX_OF_LINE_H = common dso_local global i32 0, align 4
@M5602_XB_SIG_INI = common dso_local global i32 0, align 4
@M5602_XB_VSYNC_PARA = common dso_local global i32 0, align 4
@M5602_XB_HSYNC_PARA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @po1030_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.cam*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.cam* %13, %struct.cam** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.cam*, %struct.cam** %4, align 8
  %15 = getelementptr inbounds %struct.cam, %struct.cam* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.cam*, %struct.cam** %4, align 8
  %25 = getelementptr inbounds %struct.cam, %struct.cam* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.cam*, %struct.cam** %4, align 8
  %35 = getelementptr inbounds %struct.cam, %struct.cam* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %154 [
    i32 320, label %45
    i32 640, label %100
  ]

45:                                               ; preds = %1
  %46 = load i32, i32* @PO1030_SUBSAMPLING, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = load i32, i32* @PO1030_CONTROL3, align 4
  %49 = call i32 @m5602_write_sensor(%struct.sd* %47, i32 %48, i32* %10, i32 1)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %332

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 3
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  store i32 %58, i32* %10, align 4
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = load i32, i32* @PO1030_WINDOWWIDTH_H, align 4
  %61 = call i32 @m5602_write_sensor(%struct.sd* %59, i32 %60, i32* %10, i32 1)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %332

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 3
  %69 = and i32 %68, 255
  store i32 %69, i32* %10, align 4
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = load i32, i32* @PO1030_WINDOWWIDTH_L, align 4
  %72 = call i32 @m5602_write_sensor(%struct.sd* %70, i32 %71, i32* %10, i32 1)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %332

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 255
  store i32 %81, i32* %10, align 4
  %82 = load %struct.sd*, %struct.sd** %3, align 8
  %83 = load i32, i32* @PO1030_WINDOWHEIGHT_H, align 4
  %84 = call i32 @m5602_write_sensor(%struct.sd* %82, i32 %83, i32* %10, i32 1)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %332

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  %92 = and i32 %91, 255
  store i32 %92, i32* %10, align 4
  %93 = load %struct.sd*, %struct.sd** %3, align 8
  %94 = load i32, i32* @PO1030_WINDOWHEIGHT_L, align 4
  %95 = call i32 @m5602_write_sensor(%struct.sd* %93, i32 %94, i32* %10, i32 1)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 6
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %154

100:                                              ; preds = %1
  store i32 0, i32* %10, align 4
  %101 = load %struct.sd*, %struct.sd** %3, align 8
  %102 = load i32, i32* @PO1030_CONTROL3, align 4
  %103 = call i32 @m5602_write_sensor(%struct.sd* %101, i32 %102, i32* %10, i32 1)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %332

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 7
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  store i32 %112, i32* %10, align 4
  %113 = load %struct.sd*, %struct.sd** %3, align 8
  %114 = load i32, i32* @PO1030_WINDOWWIDTH_H, align 4
  %115 = call i32 @m5602_write_sensor(%struct.sd* %113, i32 %114, i32* %10, i32 1)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %332

120:                                              ; preds = %108
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 7
  %123 = and i32 %122, 255
  store i32 %123, i32* %10, align 4
  %124 = load %struct.sd*, %struct.sd** %3, align 8
  %125 = load i32, i32* @PO1030_WINDOWWIDTH_L, align 4
  %126 = call i32 @m5602_write_sensor(%struct.sd* %124, i32 %125, i32* %10, i32 1)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %332

131:                                              ; preds = %120
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 3
  %134 = ashr i32 %133, 8
  %135 = and i32 %134, 255
  store i32 %135, i32* %10, align 4
  %136 = load %struct.sd*, %struct.sd** %3, align 8
  %137 = load i32, i32* @PO1030_WINDOWHEIGHT_H, align 4
  %138 = call i32 @m5602_write_sensor(%struct.sd* %136, i32 %137, i32* %10, i32 1)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %2, align 4
  br label %332

143:                                              ; preds = %131
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 3
  %146 = and i32 %145, 255
  store i32 %146, i32* %10, align 4
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = load i32, i32* @PO1030_WINDOWHEIGHT_L, align 4
  %149 = call i32 @m5602_write_sensor(%struct.sd* %147, i32 %148, i32* %10, i32 1)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 12
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sub nsw i32 %152, 2
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %1, %143, %89
  %155 = load %struct.sd*, %struct.sd** %3, align 8
  %156 = load i32, i32* @M5602_XB_SENSOR_TYPE, align 4
  %157 = call i32 @m5602_write_bridge(%struct.sd* %155, i32 %156, i32 12)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %332

162:                                              ; preds = %154
  %163 = load %struct.sd*, %struct.sd** %3, align 8
  %164 = load i32, i32* @M5602_XB_LINE_OF_FRAME_H, align 4
  %165 = call i32 @m5602_write_bridge(%struct.sd* %163, i32 %164, i32 129)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %2, align 4
  br label %332

170:                                              ; preds = %162
  %171 = load %struct.sd*, %struct.sd** %3, align 8
  %172 = load i32, i32* @M5602_XB_PIX_OF_LINE_H, align 4
  %173 = call i32 @m5602_write_bridge(%struct.sd* %171, i32 %172, i32 130)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %332

178:                                              ; preds = %170
  %179 = load %struct.sd*, %struct.sd** %3, align 8
  %180 = load i32, i32* @M5602_XB_SIG_INI, align 4
  %181 = call i32 @m5602_write_bridge(%struct.sd* %179, i32 %180, i32 1)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %2, align 4
  br label %332

186:                                              ; preds = %178
  %187 = load %struct.sd*, %struct.sd** %3, align 8
  %188 = load i32, i32* @M5602_XB_VSYNC_PARA, align 4
  %189 = load i32, i32* %9, align 4
  %190 = ashr i32 %189, 8
  %191 = and i32 %190, 255
  %192 = call i32 @m5602_write_bridge(%struct.sd* %187, i32 %188, i32 %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %2, align 4
  br label %332

197:                                              ; preds = %186
  %198 = load %struct.sd*, %struct.sd** %3, align 8
  %199 = load i32, i32* @M5602_XB_VSYNC_PARA, align 4
  %200 = load i32, i32* %9, align 4
  %201 = and i32 %200, 255
  %202 = call i32 @m5602_write_bridge(%struct.sd* %198, i32 %199, i32 %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %332

207:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %221, %207
  %209 = load i32, i32* %5, align 4
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  br label %215

215:                                              ; preds = %211, %208
  %216 = phi i1 [ false, %208 ], [ %214, %211 ]
  br i1 %216, label %217, label %224

217:                                              ; preds = %215
  %218 = load %struct.sd*, %struct.sd** %3, align 8
  %219 = load i32, i32* @M5602_XB_VSYNC_PARA, align 4
  %220 = call i32 @m5602_write_bridge(%struct.sd* %218, i32 %219, i32 0)
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %5, align 4
  br label %208

224:                                              ; preds = %215
  %225 = load i32, i32* %6, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = load i32, i32* %6, align 4
  store i32 %228, i32* %2, align 4
  br label %332

229:                                              ; preds = %224
  %230 = load %struct.sd*, %struct.sd** %3, align 8
  %231 = load i32, i32* @M5602_XB_VSYNC_PARA, align 4
  %232 = load i32, i32* %8, align 4
  %233 = ashr i32 %232, 8
  %234 = and i32 %233, 255
  %235 = call i32 @m5602_write_bridge(%struct.sd* %230, i32 %231, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %229
  %239 = load i32, i32* %6, align 4
  store i32 %239, i32* %2, align 4
  br label %332

240:                                              ; preds = %229
  %241 = load %struct.sd*, %struct.sd** %3, align 8
  %242 = load i32, i32* @M5602_XB_VSYNC_PARA, align 4
  %243 = load i32, i32* %8, align 4
  %244 = and i32 %243, 255
  %245 = call i32 @m5602_write_bridge(%struct.sd* %241, i32 %242, i32 %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %240
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %2, align 4
  br label %332

250:                                              ; preds = %240
  store i32 0, i32* %5, align 4
  br label %251

251:                                              ; preds = %264, %250
  %252 = load i32, i32* %5, align 4
  %253 = icmp slt i32 %252, 2
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  br label %258

258:                                              ; preds = %254, %251
  %259 = phi i1 [ false, %251 ], [ %257, %254 ]
  br i1 %259, label %260, label %267

260:                                              ; preds = %258
  %261 = load %struct.sd*, %struct.sd** %3, align 8
  %262 = load i32, i32* @M5602_XB_VSYNC_PARA, align 4
  %263 = call i32 @m5602_write_bridge(%struct.sd* %261, i32 %262, i32 0)
  store i32 %263, i32* %6, align 4
  br label %264

264:                                              ; preds = %260
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %5, align 4
  br label %251

267:                                              ; preds = %258
  store i32 0, i32* %5, align 4
  br label %268

268:                                              ; preds = %281, %267
  %269 = load i32, i32* %5, align 4
  %270 = icmp slt i32 %269, 2
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  br label %275

275:                                              ; preds = %271, %268
  %276 = phi i1 [ false, %268 ], [ %274, %271 ]
  br i1 %276, label %277, label %284

277:                                              ; preds = %275
  %278 = load %struct.sd*, %struct.sd** %3, align 8
  %279 = load i32, i32* @M5602_XB_SIG_INI, align 4
  %280 = call i32 @m5602_write_bridge(%struct.sd* %278, i32 %279, i32 0)
  store i32 %280, i32* %6, align 4
  br label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %5, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %5, align 4
  br label %268

284:                                              ; preds = %275
  store i32 0, i32* %5, align 4
  br label %285

285:                                              ; preds = %298, %284
  %286 = load i32, i32* %5, align 4
  %287 = icmp slt i32 %286, 2
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i32, i32* %6, align 4
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  br label %292

292:                                              ; preds = %288, %285
  %293 = phi i1 [ false, %285 ], [ %291, %288 ]
  br i1 %293, label %294, label %301

294:                                              ; preds = %292
  %295 = load %struct.sd*, %struct.sd** %3, align 8
  %296 = load i32, i32* @M5602_XB_HSYNC_PARA, align 4
  %297 = call i32 @m5602_write_bridge(%struct.sd* %295, i32 %296, i32 0)
  store i32 %297, i32* %6, align 4
  br label %298

298:                                              ; preds = %294
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %5, align 4
  br label %285

301:                                              ; preds = %292
  %302 = load i32, i32* %6, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  %305 = load i32, i32* %6, align 4
  store i32 %305, i32* %2, align 4
  br label %332

306:                                              ; preds = %301
  %307 = load %struct.sd*, %struct.sd** %3, align 8
  %308 = load i32, i32* @M5602_XB_HSYNC_PARA, align 4
  %309 = load i32, i32* %7, align 4
  %310 = ashr i32 %309, 8
  %311 = and i32 %310, 255
  %312 = call i32 @m5602_write_bridge(%struct.sd* %307, i32 %308, i32 %311)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %306
  %316 = load i32, i32* %6, align 4
  store i32 %316, i32* %2, align 4
  br label %332

317:                                              ; preds = %306
  %318 = load %struct.sd*, %struct.sd** %3, align 8
  %319 = load i32, i32* @M5602_XB_HSYNC_PARA, align 4
  %320 = load i32, i32* %7, align 4
  %321 = and i32 %320, 255
  %322 = call i32 @m5602_write_bridge(%struct.sd* %318, i32 %319, i32 %321)
  store i32 %322, i32* %6, align 4
  %323 = load i32, i32* %6, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %317
  %326 = load i32, i32* %6, align 4
  store i32 %326, i32* %2, align 4
  br label %332

327:                                              ; preds = %317
  %328 = load %struct.sd*, %struct.sd** %3, align 8
  %329 = load i32, i32* @M5602_XB_SIG_INI, align 4
  %330 = call i32 @m5602_write_bridge(%struct.sd* %328, i32 %329, i32 0)
  store i32 %330, i32* %6, align 4
  %331 = load i32, i32* %6, align 4
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %327, %325, %315, %304, %248, %238, %227, %205, %195, %184, %176, %168, %160, %141, %129, %118, %106, %87, %75, %64, %52
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
