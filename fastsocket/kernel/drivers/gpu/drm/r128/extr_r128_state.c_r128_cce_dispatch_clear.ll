; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.drm_clip_rect* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R128_FRONT = common dso_local global i32 0, align 4
@R128_BACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dispatch clear %d,%d-%d,%d flags 0x%x\0A\00", align 1
@R128_DP_WRITE_MASK = common dso_local global i32 0, align 4
@R128_CNTL_PAINT_MULTI = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_P = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_AUX_CLIP_DIS = common dso_local global i32 0, align 4
@R128_DEPTH = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_7__*)* @r128_cce_dispatch_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_cce_dispatch_clear(%struct.drm_device* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_clip_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %26, align 8
  store %struct.drm_clip_rect* %27, %struct.drm_clip_rect** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @RING_LOCALS, align 4
  %32 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @R128_FRONT, align 4
  %45 = load i32, i32* @R128_BACK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @R128_FRONT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @R128_BACK, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %42
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @R128_BACK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @R128_FRONT, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %37, %2
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %285, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %288

73:                                               ; preds = %69
  %74 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %74, i64 %76
  %78 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %80, i64 %82
  %84 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  %86 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %86, i64 %88
  %90 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %14, align 4
  %94 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %94, i64 %96
  %98 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %15, align 4
  %102 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %102, i64 %104
  %106 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %108, i64 %110
  %112 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %114, i64 %116
  %118 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %120, i64 %122
  %124 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %113, i32 %119, i32 %125, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @R128_FRONT, align 4
  %130 = load i32, i32* @R128_BACK, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %73
  %135 = call i32 @BEGIN_RING(i32 2)
  %136 = load i32, i32* @R128_DP_WRITE_MASK, align 4
  %137 = call i32 @CCE_PACKET0(i32 %136, i32 0)
  %138 = call i32 @OUT_RING(i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @OUT_RING(i32 %141)
  %143 = call i32 (...) @ADVANCE_RING()
  br label %144

144:                                              ; preds = %134, %73
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @R128_FRONT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %190

149:                                              ; preds = %144
  %150 = call i32 @BEGIN_RING(i32 6)
  %151 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %152 = call i32 @CCE_PACKET3(i32 %151, i32 4)
  %153 = call i32 @OUT_RING(i32 %152)
  %154 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %155 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 8
  %161 = or i32 %156, %160
  %162 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @R128_ROP3_P, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @R128_GMC_AUX_CLIP_DIS, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @OUT_RING(i32 %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @OUT_RING(i32 %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @OUT_RING(i32 %177)
  %179 = load i32, i32* %12, align 4
  %180 = shl i32 %179, 16
  %181 = load i32, i32* %13, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @OUT_RING(i32 %182)
  %184 = load i32, i32* %14, align 4
  %185 = shl i32 %184, 16
  %186 = load i32, i32* %15, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @OUT_RING(i32 %187)
  %189 = call i32 (...) @ADVANCE_RING()
  br label %190

190:                                              ; preds = %149, %144
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @R128_BACK, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %236

195:                                              ; preds = %190
  %196 = call i32 @BEGIN_RING(i32 6)
  %197 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %198 = call i32 @CCE_PACKET3(i32 %197, i32 4)
  %199 = call i32 @OUT_RING(i32 %198)
  %200 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %201 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 8
  %207 = or i32 %202, %206
  %208 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @R128_ROP3_P, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @R128_GMC_AUX_CLIP_DIS, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @OUT_RING(i32 %215)
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @OUT_RING(i32 %219)
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @OUT_RING(i32 %223)
  %225 = load i32, i32* %12, align 4
  %226 = shl i32 %225, 16
  %227 = load i32, i32* %13, align 4
  %228 = or i32 %226, %227
  %229 = call i32 @OUT_RING(i32 %228)
  %230 = load i32, i32* %14, align 4
  %231 = shl i32 %230, 16
  %232 = load i32, i32* %15, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @OUT_RING(i32 %233)
  %235 = call i32 (...) @ADVANCE_RING()
  br label %236

236:                                              ; preds = %195, %190
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @R128_DEPTH, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %284

241:                                              ; preds = %236
  %242 = call i32 @BEGIN_RING(i32 6)
  %243 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %244 = call i32 @CCE_PACKET3(i32 %243, i32 4)
  %245 = call i32 @OUT_RING(i32 %244)
  %246 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %247 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = shl i32 %251, 8
  %253 = or i32 %248, %252
  %254 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @R128_ROP3_P, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @R128_GMC_AUX_CLIP_DIS, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @OUT_RING(i32 %263)
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @OUT_RING(i32 %267)
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @OUT_RING(i32 %271)
  %273 = load i32, i32* %12, align 4
  %274 = shl i32 %273, 16
  %275 = load i32, i32* %13, align 4
  %276 = or i32 %274, %275
  %277 = call i32 @OUT_RING(i32 %276)
  %278 = load i32, i32* %14, align 4
  %279 = shl i32 %278, 16
  %280 = load i32, i32* %15, align 4
  %281 = or i32 %279, %280
  %282 = call i32 @OUT_RING(i32 %281)
  %283 = call i32 (...) @ADVANCE_RING()
  br label %284

284:                                              ; preds = %241, %236
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %10, align 4
  br label %69

288:                                              ; preds = %69
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
