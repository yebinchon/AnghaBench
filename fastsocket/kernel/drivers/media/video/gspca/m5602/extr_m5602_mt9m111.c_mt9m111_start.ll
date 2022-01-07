; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@start_mt9m111 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@M5602_XB_VSYNC_PARA = common dso_local global i64 0, align 8
@M5602_XB_SIG_INI = common dso_local global i64 0, align 8
@M5602_XB_HSYNC_PARA = common dso_local global i64 0, align 8
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Configuring camera for VGA mode\00", align 1
@MT9M111_RMB_OVER_SIZED = common dso_local global i32 0, align 4
@MT9M111_RMB_ROW_SKIP_2X = common dso_local global i32 0, align 4
@MT9M111_RMB_COLUMN_SKIP_2X = common dso_local global i32 0, align 4
@VFLIP_IDX = common dso_local global i64 0, align 8
@HFLIP_IDX = common dso_local global i64 0, align 8
@MT9M111_SC_R_MODE_CONTEXT_B = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Configuring camera for QVGA mode\00", align 1
@MT9M111_RMB_ROW_SKIP_4X = common dso_local global i32 0, align 4
@MT9M111_RMB_COLUMN_SKIP_4X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9m111_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.cam* %13, %struct.cam** %7, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.cam*, %struct.cam** %7, align 8
  %18 = getelementptr inbounds %struct.cam, %struct.cam* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cam*, %struct.cam** %7, align 8
  %29 = getelementptr inbounds %struct.cam, %struct.cam* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %107, %1
  %39 = load i32, i32* %4, align 4
  %40 = load i64**, i64*** @start_mt9m111, align 8
  %41 = call i32 @ARRAY_SIZE(i64** %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %110

49:                                               ; preds = %47
  %50 = load i64**, i64*** @start_mt9m111, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64*, i64** %50, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BRIDGE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %49
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = load i64**, i64*** @start_mt9m111, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64*, i64** %61, i64 %63
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64**, i64*** @start_mt9m111, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %68, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @m5602_write_bridge(%struct.sd* %60, i64 %67, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %106

77:                                               ; preds = %49
  %78 = load i64**, i64*** @start_mt9m111, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64*, i64** %78, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %85, i32* %86, align 4
  %87 = load i64**, i64*** @start_mt9m111, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64*, i64** %87, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %94, i32* %95, align 4
  %96 = load %struct.sd*, %struct.sd** %3, align 8
  %97 = load i64**, i64*** @start_mt9m111, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64*, i64** %97, i64 %99
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %105 = call i32 @m5602_write_sensor(%struct.sd* %96, i64 %103, i32* %104, i32 2)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %77, %59
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %38

110:                                              ; preds = %47
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %279

115:                                              ; preds = %110
  %116 = load %struct.sd*, %struct.sd** %3, align 8
  %117 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  %121 = call i32 @m5602_write_bridge(%struct.sd* %116, i64 %117, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %279

126:                                              ; preds = %115
  %127 = load %struct.sd*, %struct.sd** %3, align 8
  %128 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %129 = load i32, i32* %10, align 4
  %130 = and i32 %129, 255
  %131 = call i32 @m5602_write_bridge(%struct.sd* %127, i64 %128, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %279

136:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %150, %136
  %138 = load i32, i32* %4, align 4
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i1 [ false, %137 ], [ %143, %140 ]
  br i1 %145, label %146, label %153

146:                                              ; preds = %144
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = load i64, i64* @M5602_XB_VSYNC_PARA, align 8
  %149 = call i32 @m5602_write_bridge(%struct.sd* %147, i64 %148, i32 0)
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  br label %137

153:                                              ; preds = %144
  %154 = load i32, i32* %5, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %279

158:                                              ; preds = %153
  %159 = load %struct.sd*, %struct.sd** %3, align 8
  %160 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %161 = call i32 @m5602_write_bridge(%struct.sd* %159, i64 %160, i32 0)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %279

166:                                              ; preds = %158
  %167 = load %struct.sd*, %struct.sd** %3, align 8
  %168 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %169 = call i32 @m5602_write_bridge(%struct.sd* %167, i64 %168, i32 2)
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %279

174:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %188, %174
  %176 = load i32, i32* %4, align 4
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  br label %182

182:                                              ; preds = %178, %175
  %183 = phi i1 [ false, %175 ], [ %181, %178 ]
  br i1 %183, label %184, label %191

184:                                              ; preds = %182
  %185 = load %struct.sd*, %struct.sd** %3, align 8
  %186 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %187 = call i32 @m5602_write_bridge(%struct.sd* %185, i64 %186, i32 0)
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %175

191:                                              ; preds = %182
  %192 = load i32, i32* %5, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i32, i32* %5, align 4
  store i32 %195, i32* %2, align 4
  br label %279

196:                                              ; preds = %191
  %197 = load %struct.sd*, %struct.sd** %3, align 8
  %198 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %199 = load i32, i32* %9, align 4
  %200 = ashr i32 %199, 8
  %201 = and i32 %200, 255
  %202 = call i32 @m5602_write_bridge(%struct.sd* %197, i64 %198, i32 %201)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %196
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %2, align 4
  br label %279

207:                                              ; preds = %196
  %208 = load %struct.sd*, %struct.sd** %3, align 8
  %209 = load i64, i64* @M5602_XB_HSYNC_PARA, align 8
  %210 = load i32, i32* %9, align 4
  %211 = and i32 %210, 255
  %212 = call i32 @m5602_write_bridge(%struct.sd* %208, i64 %209, i32 %211)
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %5, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %207
  %216 = load i32, i32* %5, align 4
  store i32 %216, i32* %2, align 4
  br label %279

217:                                              ; preds = %207
  %218 = load %struct.sd*, %struct.sd** %3, align 8
  %219 = load i64, i64* @M5602_XB_SIG_INI, align 8
  %220 = call i32 @m5602_write_bridge(%struct.sd* %218, i64 %219, i32 0)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i32, i32* %5, align 4
  store i32 %224, i32* %2, align 4
  br label %279

225:                                              ; preds = %217
  %226 = load i32, i32* %9, align 4
  switch i32 %226, label %277 [
    i32 640, label %227
    i32 320, label %252
  ]

227:                                              ; preds = %225
  %228 = load i32, i32* @D_V4L2, align 4
  %229 = call i32 @PDEBUG(i32 %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %230 = load i32, i32* @MT9M111_RMB_OVER_SIZED, align 4
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %230, i32* %231, align 4
  %232 = load i32, i32* @MT9M111_RMB_ROW_SKIP_2X, align 4
  %233 = load i32, i32* @MT9M111_RMB_COLUMN_SKIP_2X, align 4
  %234 = or i32 %232, %233
  %235 = load i32*, i32** %8, align 8
  %236 = load i64, i64* @VFLIP_IDX, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 0
  %240 = or i32 %234, %239
  %241 = load i32*, i32** %8, align 8
  %242 = load i64, i64* @HFLIP_IDX, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 1
  %246 = or i32 %240, %245
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %246, i32* %247, align 4
  %248 = load %struct.sd*, %struct.sd** %3, align 8
  %249 = load i64, i64* @MT9M111_SC_R_MODE_CONTEXT_B, align 8
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %251 = call i32 @m5602_write_sensor(%struct.sd* %248, i64 %249, i32* %250, i32 2)
  store i32 %251, i32* %5, align 4
  br label %277

252:                                              ; preds = %225
  %253 = load i32, i32* @D_V4L2, align 4
  %254 = call i32 @PDEBUG(i32 %253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %255 = load i32, i32* @MT9M111_RMB_OVER_SIZED, align 4
  %256 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %255, i32* %256, align 4
  %257 = load i32, i32* @MT9M111_RMB_ROW_SKIP_4X, align 4
  %258 = load i32, i32* @MT9M111_RMB_COLUMN_SKIP_4X, align 4
  %259 = or i32 %257, %258
  %260 = load i32*, i32** %8, align 8
  %261 = load i64, i64* @VFLIP_IDX, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = shl i32 %263, 0
  %265 = or i32 %259, %264
  %266 = load i32*, i32** %8, align 8
  %267 = load i64, i64* @HFLIP_IDX, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 %269, 1
  %271 = or i32 %265, %270
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %271, i32* %272, align 4
  %273 = load %struct.sd*, %struct.sd** %3, align 8
  %274 = load i64, i64* @MT9M111_SC_R_MODE_CONTEXT_B, align 8
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %276 = call i32 @m5602_write_sensor(%struct.sd* %273, i64 %274, i32* %275, i32 2)
  store i32 %276, i32* %5, align 4
  br label %277

277:                                              ; preds = %225, %252, %227
  %278 = load i32, i32* %5, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %277, %223, %215, %205, %194, %172, %164, %156, %134, %124, %113
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

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
