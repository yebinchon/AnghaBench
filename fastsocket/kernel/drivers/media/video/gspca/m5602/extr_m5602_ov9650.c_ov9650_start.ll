; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov9650.c_ov9650_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov9650.c_ov9650_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@OV9650_LEFT_OFFSET = common dso_local global i32 0, align 4
@ov9650_flip_dmi_table = common dso_local global i32 0, align 4
@VFLIP_IDX = common dso_local global i64 0, align 8
@res_init_ov9650 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@SENSOR = common dso_local global i64 0, align 8
@M5602_XB_VSYNC_PARA = common dso_local global i64 0, align 8
@M5602_XB_SIG_INI = common dso_local global i64 0, align 8
@M5602_XB_HSYNC_PARA = common dso_local global i64 0, align 8
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Configuring camera for VGA mode\00", align 1
@OV9650_VGA_SELECT = common dso_local global i32 0, align 4
@OV9650_RGB_SELECT = common dso_local global i32 0, align 4
@OV9650_RAW_RGB_SELECT = common dso_local global i32 0, align 4
@OV9650_COM7 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Configuring camera for CIF mode\00", align 1
@OV9650_CIF_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Configuring camera for QVGA mode\00", align 1
@OV9650_QVGA_SELECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Configuring camera for QCIF mode\00", align 1
@OV9650_QCIF_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov9650_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.sd*, %struct.sd** %3, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.cam* %15, %struct.cam** %7, align 8
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %8, align 8
  %19 = load %struct.cam*, %struct.cam** %7, align 8
  %20 = getelementptr inbounds %struct.cam, %struct.cam* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.cam*, %struct.cam** %7, align 8
  %30 = getelementptr inbounds %struct.cam, %struct.cam* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load %struct.cam*, %struct.cam** %7, align 8
  %40 = getelementptr inbounds %struct.cam, %struct.cam* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @OV9650_LEFT_OFFSET, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @ov9650_flip_dmi_table, align 4
  %51 = call i64 @dmi_check_system(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %1
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* @VFLIP_IDX, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %53, %1
  %60 = load i32, i32* @ov9650_flip_dmi_table, align 4
  %61 = call i64 @dmi_check_system(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* @VFLIP_IDX, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63, %53
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %63, %59
  %73 = load i32, i32* %9, align 4
  %74 = icmp sle i32 %73, 320
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %72
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %148, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i64**, i64*** @res_init_ov9650, align 8
  %82 = call i32 @ARRAY_SIZE(i64** %81)
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i1 [ false, %79 ], [ %87, %84 ]
  br i1 %89, label %90, label %151

90:                                               ; preds = %88
  %91 = load i64**, i64*** @res_init_ov9650, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64*, i64** %91, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BRIDGE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %90
  %101 = load %struct.sd*, %struct.sd** %3, align 8
  %102 = load i64**, i64*** @res_init_ov9650, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64*, i64** %102, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64**, i64*** @res_init_ov9650, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64*, i64** %109, i64 %111
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @m5602_write_bridge(%struct.sd* %101, i64 %108, i32 %116)
  store i32 %117, i32* %6, align 4
  br label %147

118:                                              ; preds = %90
  %119 = load i64**, i64*** @res_init_ov9650, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64*, i64** %119, i64 %121
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SENSOR, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %118
  %129 = load i64**, i64*** @res_init_ov9650, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64*, i64** %129, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %4, align 4
  %137 = load %struct.sd*, %struct.sd** %3, align 8
  %138 = load i64**, i64*** @res_init_ov9650, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64*, i64** %138, i64 %140
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @m5602_write_sensor(%struct.sd* %137, i64 %144, i32* %4, i32 1)
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %128, %118
  br label %147

147:                                              ; preds = %146, %100
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %79

151:                                              ; preds = %88
  %152 = load i32, i32* %6, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %2, align 4
  br label %346

156:                                              ; preds = %151
  %157 = load %struct.sd*, %struct.sd** %3, align 8
  %158 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %159 = load i32, i32* %11, align 4
  %160 = ashr i32 %159, 8
  %161 = and i32 %160, 255
  %162 = call i32 @m5602_write_bridge(%struct.sd* %157, i64 %158, i32 %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %346

167:                                              ; preds = %156
  %168 = load %struct.sd*, %struct.sd** %3, align 8
  %169 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %170, 255
  %172 = call i32 @m5602_write_bridge(%struct.sd* %168, i64 %169, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %2, align 4
  br label %346

177:                                              ; preds = %167
  %178 = load %struct.sd*, %struct.sd** %3, align 8
  %179 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %180 = call i32 @m5602_write_bridge(%struct.sd* %178, i64 %179, i32 0)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %2, align 4
  br label %346

185:                                              ; preds = %177
  %186 = load %struct.sd*, %struct.sd** %3, align 8
  %187 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %188 = load i32, i32* %10, align 4
  %189 = ashr i32 %188, 8
  %190 = and i32 %189, 255
  %191 = call i32 @m5602_write_bridge(%struct.sd* %186, i64 %187, i32 %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %185
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %2, align 4
  br label %346

196:                                              ; preds = %185
  %197 = load %struct.sd*, %struct.sd** %3, align 8
  %198 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %199 = load i32, i32* %10, align 4
  %200 = and i32 %199, 255
  %201 = call i32 @m5602_write_bridge(%struct.sd* %197, i64 %198, i32 %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %196
  %205 = load i32, i32* %6, align 4
  store i32 %205, i32* %2, align 4
  br label %346

206:                                              ; preds = %196
  store i32 0, i32* %5, align 4
  br label %207

207:                                              ; preds = %220, %206
  %208 = load i32, i32* %5, align 4
  %209 = icmp slt i32 %208, 2
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  br label %214

214:                                              ; preds = %210, %207
  %215 = phi i1 [ false, %207 ], [ %213, %210 ]
  br i1 %215, label %216, label %223

216:                                              ; preds = %214
  %217 = load %struct.sd*, %struct.sd** %3, align 8
  %218 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %219 = call i32 @m5602_write_bridge(%struct.sd* %217, i64 %218, i32 0)
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %207

223:                                              ; preds = %214
  %224 = load i32, i32* %6, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, i32* %6, align 4
  store i32 %227, i32* %2, align 4
  br label %346

228:                                              ; preds = %223
  %229 = load %struct.sd*, %struct.sd** %3, align 8
  %230 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %231 = call i32 @m5602_write_bridge(%struct.sd* %229, i64 %230, i32 0)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %2, align 4
  br label %346

236:                                              ; preds = %228
  %237 = load %struct.sd*, %struct.sd** %3, align 8
  %238 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %239 = call i32 @m5602_write_bridge(%struct.sd* %237, i64 %238, i32 2)
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load i32, i32* %6, align 4
  store i32 %243, i32* %2, align 4
  br label %346

244:                                              ; preds = %236
  %245 = load %struct.sd*, %struct.sd** %3, align 8
  %246 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %247 = load i32, i32* %12, align 4
  %248 = ashr i32 %247, 8
  %249 = and i32 %248, 255
  %250 = call i32 @m5602_write_bridge(%struct.sd* %245, i64 %246, i32 %249)
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %244
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %2, align 4
  br label %346

255:                                              ; preds = %244
  %256 = load %struct.sd*, %struct.sd** %3, align 8
  %257 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %258 = load i32, i32* %12, align 4
  %259 = and i32 %258, 255
  %260 = call i32 @m5602_write_bridge(%struct.sd* %256, i64 %257, i32 %259)
  store i32 %260, i32* %6, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = load i32, i32* %6, align 4
  store i32 %264, i32* %2, align 4
  br label %346

265:                                              ; preds = %255
  %266 = load %struct.sd*, %struct.sd** %3, align 8
  %267 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %12, align 4
  %270 = add nsw i32 %268, %269
  %271 = ashr i32 %270, 8
  %272 = and i32 %271, 255
  %273 = call i32 @m5602_write_bridge(%struct.sd* %266, i64 %267, i32 %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %265
  %277 = load i32, i32* %6, align 4
  store i32 %277, i32* %2, align 4
  br label %346

278:                                              ; preds = %265
  %279 = load %struct.sd*, %struct.sd** %3, align 8
  %280 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %281, %282
  %284 = and i32 %283, 255
  %285 = call i32 @m5602_write_bridge(%struct.sd* %279, i64 %280, i32 %284)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %278
  %289 = load i32, i32* %6, align 4
  store i32 %289, i32* %2, align 4
  br label %346

290:                                              ; preds = %278
  %291 = load %struct.sd*, %struct.sd** %3, align 8
  %292 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %293 = call i32 @m5602_write_bridge(%struct.sd* %291, i64 %292, i32 0)
  store i32 %293, i32* %6, align 4
  %294 = load i32, i32* %6, align 4
  %295 = icmp slt i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %290
  %297 = load i32, i32* %6, align 4
  store i32 %297, i32* %2, align 4
  br label %346

298:                                              ; preds = %290
  %299 = load i32, i32* %9, align 4
  switch i32 %299, label %344 [
    i32 640, label %300
    i32 352, label %311
    i32 320, label %322
    i32 176, label %333
  ]

300:                                              ; preds = %298
  %301 = load i32, i32* @D_V4L2, align 4
  %302 = call i32 @PDEBUG(i32 %301, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %303 = load i32, i32* @OV9650_VGA_SELECT, align 4
  %304 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %307 = or i32 %305, %306
  store i32 %307, i32* %4, align 4
  %308 = load %struct.sd*, %struct.sd** %3, align 8
  %309 = load i64, i64* @OV9650_COM7, align 8
  %310 = call i32 @m5602_write_sensor(%struct.sd* %308, i64 %309, i32* %4, i32 1)
  store i32 %310, i32* %6, align 4
  br label %344

311:                                              ; preds = %298
  %312 = load i32, i32* @D_V4L2, align 4
  %313 = call i32 @PDEBUG(i32 %312, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %314 = load i32, i32* @OV9650_CIF_SELECT, align 4
  %315 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %318 = or i32 %316, %317
  store i32 %318, i32* %4, align 4
  %319 = load %struct.sd*, %struct.sd** %3, align 8
  %320 = load i64, i64* @OV9650_COM7, align 8
  %321 = call i32 @m5602_write_sensor(%struct.sd* %319, i64 %320, i32* %4, i32 1)
  store i32 %321, i32* %6, align 4
  br label %344

322:                                              ; preds = %298
  %323 = load i32, i32* @D_V4L2, align 4
  %324 = call i32 @PDEBUG(i32 %323, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %325 = load i32, i32* @OV9650_QVGA_SELECT, align 4
  %326 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %329 = or i32 %327, %328
  store i32 %329, i32* %4, align 4
  %330 = load %struct.sd*, %struct.sd** %3, align 8
  %331 = load i64, i64* @OV9650_COM7, align 8
  %332 = call i32 @m5602_write_sensor(%struct.sd* %330, i64 %331, i32* %4, i32 1)
  store i32 %332, i32* %6, align 4
  br label %344

333:                                              ; preds = %298
  %334 = load i32, i32* @D_V4L2, align 4
  %335 = call i32 @PDEBUG(i32 %334, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %336 = load i32, i32* @OV9650_QCIF_SELECT, align 4
  %337 = load i32, i32* @OV9650_RGB_SELECT, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @OV9650_RAW_RGB_SELECT, align 4
  %340 = or i32 %338, %339
  store i32 %340, i32* %4, align 4
  %341 = load %struct.sd*, %struct.sd** %3, align 8
  %342 = load i64, i64* @OV9650_COM7, align 8
  %343 = call i32 @m5602_write_sensor(%struct.sd* %341, i64 %342, i32* %4, i32 1)
  store i32 %343, i32* %6, align 4
  br label %344

344:                                              ; preds = %298, %333, %322, %311, %300
  %345 = load i32, i32* %6, align 4
  store i32 %345, i32* %2, align 4
  br label %346

346:                                              ; preds = %344, %296, %288, %276, %263, %253, %242, %234, %226, %204, %194, %183, %175, %165, %154
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i32*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
