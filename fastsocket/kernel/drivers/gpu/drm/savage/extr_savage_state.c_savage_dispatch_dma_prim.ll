; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_dma_prim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_dma_prim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.drm_buf = type { i32, i32 }

@BCI_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"called without dma buffers!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"wrong number of vertices %u in TRILIST\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"wrong number of vertices %u in TRIFAN/STRIP\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid primitive type %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"invalid skip flags 0x%04x for DMA\0A\00", align 1
@SAVAGE_SKIP_ALL_S4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"TRILIST_201 used on Savage4 hardware\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"vertex indices (%u-%u) out of range (0-%u)\0A\00", align 1
@SAVAGE_VERTBUFADDR = common dso_local global i32 0, align 4
@BCI_CMD_WAIT = common dso_local global i32 0, align 4
@__const.savage_dispatch_dma_prim.reorder = private unnamed_addr constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@BCI_CMD_DRAW_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.drm_buf*)* @savage_dispatch_dma_prim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_dispatch_dma_prim(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, %struct.drm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.drm_buf* %2, %struct.drm_buf** %7, align 8
  store i8 0, i8* %8, align 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* @BCI_LOCALS, align 4
  %34 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %35 = icmp ne %struct.drm_buf* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %389

40:                                               ; preds = %3
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %389

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %66 [
    i32 129, label %46
    i32 130, label %47
    i32 128, label %57
    i32 131, label %57
  ]

46:                                               ; preds = %44
  store i8 1, i8* %8, align 1
  store i32 130, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %46
  %48 = load i32, i32* %11, align 4
  %49 = urem i32 %48, 3
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %389

56:                                               ; preds = %47
  br label %71

57:                                               ; preds = %44, %44
  %58 = load i32, i32* %11, align 4
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %389

65:                                               ; preds = %57
  br label %71

66:                                               ; preds = %44
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %389

71:                                               ; preds = %65, %56
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S3_SAVAGE3D_SERIES(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %389

85:                                               ; preds = %77
  br label %137

86:                                               ; preds = %71
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, 1
  %89 = sub i32 10, %88
  %90 = load i32, i32* %10, align 4
  %91 = lshr i32 %90, 1
  %92 = and i32 %91, 1
  %93 = sub i32 %89, %92
  %94 = load i32, i32* %10, align 4
  %95 = lshr i32 %94, 2
  %96 = and i32 %95, 1
  %97 = sub i32 %93, %96
  %98 = load i32, i32* %10, align 4
  %99 = lshr i32 %98, 3
  %100 = and i32 %99, 1
  %101 = sub i32 %97, %100
  %102 = load i32, i32* %10, align 4
  %103 = lshr i32 %102, 4
  %104 = and i32 %103, 1
  %105 = sub i32 %101, %104
  %106 = load i32, i32* %10, align 4
  %107 = lshr i32 %106, 5
  %108 = and i32 %107, 1
  %109 = sub i32 %105, %108
  %110 = load i32, i32* %10, align 4
  %111 = lshr i32 %110, 6
  %112 = and i32 %111, 1
  %113 = sub i32 %109, %112
  %114 = load i32, i32* %10, align 4
  %115 = lshr i32 %114, 7
  %116 = and i32 %115, 1
  %117 = sub i32 %113, %116
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @SAVAGE_SKIP_ALL_S4, align 4
  %120 = icmp ugt i32 %118, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %86
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 8
  br i1 %123, label %124, label %129

124:                                              ; preds = %121, %86
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %389

129:                                              ; preds = %121
  %130 = load i8, i8* %8, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %389

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %85
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add i32 %138, %139
  %141 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %142 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, 32
  %145 = icmp ugt i32 %140, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %137
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %11, align 4
  %150 = add i32 %148, %149
  %151 = sub i32 %150, 1
  %152 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %153 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sdiv i32 %154, 32
  %156 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %147, i32 %151, i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %389

159:                                              ; preds = %137
  %160 = call i32 (...) @DMA_FLUSH()
  %161 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %162 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %163, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %159
  %171 = call i32 @BEGIN_BCI(i32 2)
  %172 = load i32, i32* @SAVAGE_VERTBUFADDR, align 4
  %173 = call i32 @BCI_SET_REGISTERS(i32 %172, i32 1)
  %174 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %175 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %176, %179
  %181 = call i32 @BCI_WRITE(i32 %180)
  %182 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %183 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  store i32 %184, i32* %188, align 8
  br label %189

189:                                              ; preds = %170, %159
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @S3_SAVAGE3D_SERIES(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %189
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %195
  %201 = call i32 @BEGIN_BCI(i32 63)
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %208, %200
  %203 = load i32, i32* %13, align 4
  %204 = icmp ult i32 %203, 63
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i32, i32* @BCI_CMD_WAIT, align 4
  %207 = call i32 @BCI_WRITE(i32 %206)
  br label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %13, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %202

211:                                              ; preds = %202
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %211, %195, %189
  %215 = load i32, i32* %9, align 4
  %216 = shl i32 %215, 25
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %378, %214
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %388

220:                                              ; preds = %217
  %221 = load i32, i32* %11, align 4
  %222 = icmp ugt i32 %221, 255
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  br label %226

224:                                              ; preds = %220
  %225 = load i32, i32* %11, align 4
  br label %226

226:                                              ; preds = %224, %223
  %227 = phi i32 [ 255, %223 ], [ %225, %224 ]
  store i32 %227, i32* %15, align 4
  %228 = load i8, i8* %8, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %294

230:                                              ; preds = %226
  %231 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %231, i8* align 4 bitcast ([3 x i32]* @__const.savage_dispatch_dma_prim.reorder to i8*), i64 12, i1 false)
  %232 = load i32, i32* %12, align 4
  %233 = urem i32 %232, 3
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %234
  store i32 2, i32* %235, align 4
  %236 = load i32, i32* %15, align 4
  %237 = add i32 %236, 1
  %238 = add i32 %237, 1
  %239 = udiv i32 %238, 2
  %240 = call i32 @BEGIN_BCI(i32 %239)
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %12, align 4
  %244 = add i32 %243, 2
  %245 = call i32 @BCI_DRAW_INDICES_S3D(i32 %241, i32 %242, i32 %244)
  %246 = load i32, i32* %12, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %13, align 4
  br label %248

248:                                              ; preds = %275, %230
  %249 = load i32, i32* %13, align 4
  %250 = add i32 %249, 1
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* %15, align 4
  %253 = add i32 %251, %252
  %254 = icmp ult i32 %250, %253
  br i1 %254, label %255, label %278

255:                                              ; preds = %248
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %13, align 4
  %258 = urem i32 %257, 3
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add i32 %256, %261
  %263 = load i32, i32* %13, align 4
  %264 = add i32 %263, 1
  %265 = load i32, i32* %13, align 4
  %266 = add i32 %265, 1
  %267 = urem i32 %266, 3
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %264, %270
  %272 = shl i32 %271, 16
  %273 = or i32 %262, %272
  %274 = call i32 @BCI_WRITE(i32 %273)
  br label %275

275:                                              ; preds = %255
  %276 = load i32, i32* %13, align 4
  %277 = add i32 %276, 2
  store i32 %277, i32* %13, align 4
  br label %248

278:                                              ; preds = %248
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load i32, i32* %15, align 4
  %282 = add i32 %280, %281
  %283 = icmp ult i32 %279, %282
  br i1 %283, label %284, label %293

284:                                              ; preds = %278
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = urem i32 %286, 3
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = add i32 %285, %290
  %292 = call i32 @BCI_WRITE(i32 %291)
  br label %293

293:                                              ; preds = %284, %278
  br label %378

294:                                              ; preds = %226
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @S3_SAVAGE3D_SERIES(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %339

300:                                              ; preds = %294
  %301 = load i32, i32* %15, align 4
  %302 = add i32 %301, 1
  %303 = add i32 %302, 1
  %304 = udiv i32 %303, 2
  %305 = call i32 @BEGIN_BCI(i32 %304)
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @BCI_DRAW_INDICES_S3D(i32 %306, i32 %307, i32 %308)
  %310 = load i32, i32* %12, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %13, align 4
  br label %312

312:                                              ; preds = %326, %300
  %313 = load i32, i32* %13, align 4
  %314 = add i32 %313, 1
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* %15, align 4
  %317 = add i32 %315, %316
  %318 = icmp ult i32 %314, %317
  br i1 %318, label %319, label %329

319:                                              ; preds = %312
  %320 = load i32, i32* %13, align 4
  %321 = load i32, i32* %13, align 4
  %322 = add i32 %321, 1
  %323 = shl i32 %322, 16
  %324 = or i32 %320, %323
  %325 = call i32 @BCI_WRITE(i32 %324)
  br label %326

326:                                              ; preds = %319
  %327 = load i32, i32* %13, align 4
  %328 = add i32 %327, 2
  store i32 %328, i32* %13, align 4
  br label %312

329:                                              ; preds = %312
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* %15, align 4
  %333 = add i32 %331, %332
  %334 = icmp ult i32 %330, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load i32, i32* %13, align 4
  %337 = call i32 @BCI_WRITE(i32 %336)
  br label %338

338:                                              ; preds = %335, %329
  br label %377

339:                                              ; preds = %294
  %340 = load i32, i32* %15, align 4
  %341 = add i32 %340, 2
  %342 = add i32 %341, 1
  %343 = udiv i32 %342, 2
  %344 = call i32 @BEGIN_BCI(i32 %343)
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %10, align 4
  %348 = call i32 @BCI_DRAW_INDICES_S4(i32 %345, i32 %346, i32 %347)
  %349 = load i32, i32* %12, align 4
  store i32 %349, i32* %13, align 4
  br label %350

350:                                              ; preds = %364, %339
  %351 = load i32, i32* %13, align 4
  %352 = add i32 %351, 1
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* %15, align 4
  %355 = add i32 %353, %354
  %356 = icmp ult i32 %352, %355
  br i1 %356, label %357, label %367

357:                                              ; preds = %350
  %358 = load i32, i32* %13, align 4
  %359 = load i32, i32* %13, align 4
  %360 = add i32 %359, 1
  %361 = shl i32 %360, 16
  %362 = or i32 %358, %361
  %363 = call i32 @BCI_WRITE(i32 %362)
  br label %364

364:                                              ; preds = %357
  %365 = load i32, i32* %13, align 4
  %366 = add i32 %365, 2
  store i32 %366, i32* %13, align 4
  br label %350

367:                                              ; preds = %350
  %368 = load i32, i32* %13, align 4
  %369 = load i32, i32* %12, align 4
  %370 = load i32, i32* %15, align 4
  %371 = add i32 %369, %370
  %372 = icmp ult i32 %368, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %367
  %374 = load i32, i32* %13, align 4
  %375 = call i32 @BCI_WRITE(i32 %374)
  br label %376

376:                                              ; preds = %373, %367
  br label %377

377:                                              ; preds = %376, %338
  br label %378

378:                                              ; preds = %377, %293
  %379 = load i32, i32* %15, align 4
  %380 = load i32, i32* %12, align 4
  %381 = add i32 %380, %379
  store i32 %381, i32* %12, align 4
  %382 = load i32, i32* %15, align 4
  %383 = load i32, i32* %11, align 4
  %384 = sub i32 %383, %382
  store i32 %384, i32* %11, align 4
  %385 = load i32, i32* @BCI_CMD_DRAW_CONT, align 4
  %386 = load i32, i32* %9, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %9, align 4
  br label %217

388:                                              ; preds = %217
  store i32 0, i32* %4, align 4
  br label %389

389:                                              ; preds = %388, %146, %132, %124, %80, %66, %60, %51, %43, %36
  %390 = load i32, i32* %4, align 4
  ret i32 %390
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @S3_SAVAGE3D_SERIES(i32) #1

declare dso_local i32 @DMA_FLUSH(...) #1

declare dso_local i32 @BEGIN_BCI(i32) #1

declare dso_local i32 @BCI_SET_REGISTERS(i32, i32) #1

declare dso_local i32 @BCI_WRITE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BCI_DRAW_INDICES_S3D(i32, i32, i32) #1

declare dso_local i32 @BCI_DRAW_INDICES_S4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
