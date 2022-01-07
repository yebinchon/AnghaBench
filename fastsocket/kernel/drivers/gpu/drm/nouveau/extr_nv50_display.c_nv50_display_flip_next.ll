; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_display_flip_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_display_flip_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32, i32 }
%struct.nouveau_channel = type { i32, i32 }
%struct.nouveau_framebuffer = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_crtc = type { i32 }
%struct.nv50_sync = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@NV84_CHANNEL_IND_CLASS = common dso_local global i64 0, align 8
@NV11_SUBCHAN_DMA_SEMAPHORE = common dso_local global i32 0, align 4
@NvEvoSema0 = common dso_local global i32 0, align 4
@NV11_SUBCHAN_SEMAPHORE_RELEASE = common dso_local global i32 0, align 4
@NV11_SUBCHAN_SEMAPHORE_OFFSET = common dso_local global i32 0, align 4
@NVC0_CHANNEL_IND_CLASS = common dso_local global i64 0, align 8
@NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG = common dso_local global i32 0, align 4
@NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_EQUAL = common dso_local global i32 0, align 4
@NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD = common dso_local global i32 0, align 4
@NvEvoSync = common dso_local global i32 0, align 4
@NVD0_DISP_SYNC_CLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_display_flip_next(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.nouveau_channel* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nouveau_framebuffer*, align 8
  %11 = alloca %struct.nouveau_crtc*, align 8
  %12 = alloca %struct.nv50_sync*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %7, align 8
  store %struct.nouveau_channel* %2, %struct.nouveau_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %19 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer* %18)
  store %struct.nouveau_framebuffer* %19, %struct.nouveau_framebuffer** %10, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %20)
  store %struct.nouveau_crtc* %21, %struct.nouveau_crtc** %11, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %23 = call %struct.nv50_sync* @nv50_sync(%struct.drm_crtc* %22)
  store %struct.nv50_sync* %23, %struct.nv50_sync** %12, align 8
  %24 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %25 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = shl i32 %27, 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 256
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %4
  %35 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %36 = icmp eq %struct.nouveau_channel* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %39 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @evo_sync(i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %44 = call i32* @evo_wait(%struct.nv50_sync* %43, i32 128)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %399

53:                                               ; preds = %42
  %54 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %55 = icmp ne %struct.nouveau_channel* %54, null
  br i1 %55, label %56, label %107

56:                                               ; preds = %53
  %57 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %58 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nv_mclass(i32 %59)
  %61 = load i64, i64* @NV84_CHANNEL_IND_CLASS, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %107

63:                                               ; preds = %56
  %64 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %65 = call i32 @RING_SPACE(%struct.nouveau_channel* %64, i32 8)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %399

70:                                               ; preds = %63
  %71 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %72 = load i32, i32* @NV11_SUBCHAN_DMA_SEMAPHORE, align 4
  %73 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %71, i32 0, i32 %72, i32 2)
  %74 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %75 = load i32, i32* @NvEvoSema0, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @OUT_RING(%struct.nouveau_channel* %74, i32 %77)
  %79 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %80 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %81 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %82, 16
  %84 = call i32 @OUT_RING(%struct.nouveau_channel* %79, i32 %83)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %86 = load i32, i32* @NV11_SUBCHAN_SEMAPHORE_RELEASE, align 4
  %87 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %85, i32 0, i32 %86, i32 1)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %89 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %90 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @OUT_RING(%struct.nouveau_channel* %88, i32 %92)
  %94 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %95 = load i32, i32* @NV11_SUBCHAN_SEMAPHORE_OFFSET, align 4
  %96 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %94, i32 0, i32 %95, i32 2)
  %97 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %98 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %99 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @OUT_RING(%struct.nouveau_channel* %97, i32 %100)
  %102 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %103 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %104 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @OUT_RING(%struct.nouveau_channel* %102, i32 %105)
  br label %246

107:                                              ; preds = %56, %53
  %108 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %109 = icmp ne %struct.nouveau_channel* %108, null
  br i1 %109, label %110, label %181

110:                                              ; preds = %107
  %111 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %112 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @nv_mclass(i32 %113)
  %115 = load i64, i64* @NVC0_CHANNEL_IND_CLASS, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %181

117:                                              ; preds = %110
  %118 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @nv84_fence_crtc(%struct.nouveau_channel* %118, i32 %119)
  %121 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %122 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %16, align 4
  %125 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %126 = call i32 @RING_SPACE(%struct.nouveau_channel* %125, i32 12)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %5, align 4
  br label %399

131:                                              ; preds = %117
  %132 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %133 = load i32, i32* @NV11_SUBCHAN_DMA_SEMAPHORE, align 4
  %134 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %132, i32 0, i32 %133, i32 1)
  %135 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %136 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %137 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @OUT_RING(%struct.nouveau_channel* %135, i32 %138)
  %140 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %141 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, align 4
  %142 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %140, i32 0, i32 %141, i32 4)
  %143 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %144 = load i32, i32* %16, align 4
  %145 = xor i32 %144, 16
  %146 = call i32 @upper_32_bits(i32 %145)
  %147 = call i32 @OUT_RING(%struct.nouveau_channel* %143, i32 %146)
  %148 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %149 = load i32, i32* %16, align 4
  %150 = xor i32 %149, 16
  %151 = call i32 @lower_32_bits(i32 %150)
  %152 = call i32 @OUT_RING(%struct.nouveau_channel* %148, i32 %151)
  %153 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %154 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %155 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  %158 = call i32 @OUT_RING(%struct.nouveau_channel* %153, i32 %157)
  %159 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %160 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG, align 4
  %161 = call i32 @OUT_RING(%struct.nouveau_channel* %159, i32 %160)
  %162 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %163 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, align 4
  %164 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %162, i32 0, i32 %163, i32 4)
  %165 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @upper_32_bits(i32 %166)
  %168 = call i32 @OUT_RING(%struct.nouveau_channel* %165, i32 %167)
  %169 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @lower_32_bits(i32 %170)
  %172 = call i32 @OUT_RING(%struct.nouveau_channel* %169, i32 %171)
  %173 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %174 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %175 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @OUT_RING(%struct.nouveau_channel* %173, i32 %176)
  %178 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %179 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_EQUAL, align 4
  %180 = call i32 @OUT_RING(%struct.nouveau_channel* %178, i32 %179)
  br label %245

181:                                              ; preds = %110, %107
  %182 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %183 = icmp ne %struct.nouveau_channel* %182, null
  br i1 %183, label %184, label %244

184:                                              ; preds = %181
  %185 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @nv84_fence_crtc(%struct.nouveau_channel* %185, i32 %186)
  %188 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %189 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %187, %190
  store i32 %191, i32* %17, align 4
  %192 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %193 = call i32 @RING_SPACE(%struct.nouveau_channel* %192, i32 10)
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %184
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %5, align 4
  br label %399

198:                                              ; preds = %184
  %199 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %200 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, align 4
  %201 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %199, i32 0, i32 %200, i32 4)
  %202 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %203 = load i32, i32* %17, align 4
  %204 = xor i32 %203, 16
  %205 = call i32 @upper_32_bits(i32 %204)
  %206 = call i32 @OUT_RING(%struct.nouveau_channel* %202, i32 %205)
  %207 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %208 = load i32, i32* %17, align 4
  %209 = xor i32 %208, 16
  %210 = call i32 @lower_32_bits(i32 %209)
  %211 = call i32 @OUT_RING(%struct.nouveau_channel* %207, i32 %210)
  %212 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %213 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %214 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  %217 = call i32 @OUT_RING(%struct.nouveau_channel* %212, i32 %216)
  %218 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %219 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG, align 4
  %220 = load i32, i32* @NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD, align 4
  %221 = or i32 %219, %220
  %222 = call i32 @OUT_RING(%struct.nouveau_channel* %218, i32 %221)
  %223 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %224 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, align 4
  %225 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %223, i32 0, i32 %224, i32 4)
  %226 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @upper_32_bits(i32 %227)
  %229 = call i32 @OUT_RING(%struct.nouveau_channel* %226, i32 %228)
  %230 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %231 = load i32, i32* %17, align 4
  %232 = call i32 @lower_32_bits(i32 %231)
  %233 = call i32 @OUT_RING(%struct.nouveau_channel* %230, i32 %232)
  %234 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %235 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %236 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @OUT_RING(%struct.nouveau_channel* %234, i32 %237)
  %239 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %240 = load i32, i32* @NV84_SUBCHAN_SEMAPHORE_TRIGGER_ACQUIRE_EQUAL, align 4
  %241 = load i32, i32* @NVC0_SUBCHAN_SEMAPHORE_TRIGGER_YIELD, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @OUT_RING(%struct.nouveau_channel* %239, i32 %242)
  br label %244

244:                                              ; preds = %198, %181
  br label %245

245:                                              ; preds = %244, %131
  br label %246

246:                                              ; preds = %245, %70
  %247 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %248 = icmp ne %struct.nouveau_channel* %247, null
  br i1 %248, label %249, label %260

249:                                              ; preds = %246
  %250 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %251 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = xor i32 %252, 16
  store i32 %253, i32* %251, align 4
  %254 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %255 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  %258 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %259 = call i32 @FIRE_RING(%struct.nouveau_channel* %258)
  br label %260

260:                                              ; preds = %249, %246
  %261 = load i32*, i32** %15, align 8
  %262 = call i32 @evo_mthd(i32* %261, i32 256, i32 1)
  %263 = load i32*, i32** %15, align 8
  %264 = call i32 @evo_data(i32* %263, i32 -131072)
  %265 = load i32*, i32** %15, align 8
  %266 = call i32 @evo_mthd(i32* %265, i32 132, i32 1)
  %267 = load i32*, i32** %15, align 8
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @evo_data(i32* %267, i32 %268)
  %270 = load i32, i32* %9, align 4
  %271 = and i32 %270, 256
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %278, label %273

273:                                              ; preds = %260
  %274 = load i32*, i32** %15, align 8
  %275 = call i32 @evo_mthd(i32* %274, i32 224, i32 1)
  %276 = load i32*, i32** %15, align 8
  %277 = call i32 @evo_data(i32* %276, i32 1073741824)
  br label %278

278:                                              ; preds = %273, %260
  %279 = load i32*, i32** %15, align 8
  %280 = call i32 @evo_mthd(i32* %279, i32 136, i32 4)
  %281 = load i32*, i32** %15, align 8
  %282 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %283 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @evo_data(i32* %281, i32 %284)
  %286 = load i32*, i32** %15, align 8
  %287 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %288 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  %291 = call i32 @evo_data(i32* %286, i32 %289)
  %292 = load i32*, i32** %15, align 8
  %293 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %294 = getelementptr inbounds %struct.nv50_sync, %struct.nv50_sync* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @evo_data(i32* %292, i32 %295)
  %297 = load i32*, i32** %15, align 8
  %298 = load i32, i32* @NvEvoSync, align 4
  %299 = call i32 @evo_data(i32* %297, i32 %298)
  %300 = load i32*, i32** %15, align 8
  %301 = call i32 @evo_mthd(i32* %300, i32 160, i32 2)
  %302 = load i32*, i32** %15, align 8
  %303 = call i32 @evo_data(i32* %302, i32 0)
  %304 = load i32*, i32** %15, align 8
  %305 = call i32 @evo_data(i32* %304, i32 0)
  %306 = load i32*, i32** %15, align 8
  %307 = call i32 @evo_mthd(i32* %306, i32 192, i32 1)
  %308 = load i32*, i32** %15, align 8
  %309 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %10, align 8
  %310 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @evo_data(i32* %308, i32 %311)
  %313 = load i32*, i32** %15, align 8
  %314 = call i32 @evo_mthd(i32* %313, i32 272, i32 2)
  %315 = load i32*, i32** %15, align 8
  %316 = call i32 @evo_data(i32* %315, i32 0)
  %317 = load i32*, i32** %15, align 8
  %318 = call i32 @evo_data(i32* %317, i32 0)
  %319 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %320 = call i64 @nv50_vers(%struct.nv50_sync* %319)
  %321 = load i64, i64* @NVD0_DISP_SYNC_CLASS, align 8
  %322 = icmp slt i64 %320, %321
  br i1 %322, label %323, label %357

323:                                              ; preds = %278
  %324 = load i32*, i32** %15, align 8
  %325 = call i32 @evo_mthd(i32* %324, i32 2048, i32 5)
  %326 = load i32*, i32** %15, align 8
  %327 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %10, align 8
  %328 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %327, i32 0, i32 3
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = ashr i32 %332, 8
  %334 = call i32 @evo_data(i32* %326, i32 %333)
  %335 = load i32*, i32** %15, align 8
  %336 = call i32 @evo_data(i32* %335, i32 0)
  %337 = load i32*, i32** %15, align 8
  %338 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %339 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = shl i32 %340, 16
  %342 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %343 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %341, %344
  %346 = call i32 @evo_data(i32* %337, i32 %345)
  %347 = load i32*, i32** %15, align 8
  %348 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %10, align 8
  %349 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @evo_data(i32* %347, i32 %350)
  %352 = load i32*, i32** %15, align 8
  %353 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %10, align 8
  %354 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @evo_data(i32* %352, i32 %355)
  br label %391

357:                                              ; preds = %278
  %358 = load i32*, i32** %15, align 8
  %359 = call i32 @evo_mthd(i32* %358, i32 1024, i32 5)
  %360 = load i32*, i32** %15, align 8
  %361 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %10, align 8
  %362 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %361, i32 0, i32 3
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = ashr i32 %366, 8
  %368 = call i32 @evo_data(i32* %360, i32 %367)
  %369 = load i32*, i32** %15, align 8
  %370 = call i32 @evo_data(i32* %369, i32 0)
  %371 = load i32*, i32** %15, align 8
  %372 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %373 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = shl i32 %374, 16
  %376 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %377 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %375, %378
  %380 = call i32 @evo_data(i32* %371, i32 %379)
  %381 = load i32*, i32** %15, align 8
  %382 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %10, align 8
  %383 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @evo_data(i32* %381, i32 %384)
  %386 = load i32*, i32** %15, align 8
  %387 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %10, align 8
  %388 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @evo_data(i32* %386, i32 %389)
  br label %391

391:                                              ; preds = %357, %323
  %392 = load i32*, i32** %15, align 8
  %393 = call i32 @evo_mthd(i32* %392, i32 128, i32 1)
  %394 = load i32*, i32** %15, align 8
  %395 = call i32 @evo_data(i32* %394, i32 0)
  %396 = load i32*, i32** %15, align 8
  %397 = load %struct.nv50_sync*, %struct.nv50_sync** %12, align 8
  %398 = call i32 @evo_kick(i32* %396, %struct.nv50_sync* %397)
  store i32 0, i32* %5, align 4
  br label %399

399:                                              ; preds = %391, %196, %129, %68, %50
  %400 = load i32, i32* %5, align 4
  ret i32 %400
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.nv50_sync* @nv50_sync(%struct.drm_crtc*) #1

declare dso_local i32 @evo_sync(i32) #1

declare dso_local i32* @evo_wait(%struct.nv50_sync*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nv_mclass(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @nv84_fence_crtc(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i64 @nv50_vers(%struct.nv50_sync*) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_sync*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
