; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_accel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_fbcon.c_nv04_fbcon_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.nouveau_fbdev* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nouveau_fbdev = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nouveau_drm = type { i32, %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }
%struct.nouveau_device = type { i64, i32 }
%struct.nouveau_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVDRM_CHAN = common dso_local global i32 0, align 4
@NvCtxSurf2D = common dso_local global i32 0, align 4
@NV_10 = common dso_local global i64 0, align 8
@NvClipRect = common dso_local global i32 0, align 4
@NvRop = common dso_local global i32 0, align 4
@NvImagePatt = common dso_local global i32 0, align 4
@NvGdiRect = common dso_local global i32 0, align 4
@NvImageBlit = common dso_local global i32 0, align 4
@NvSubCtxSurf2D = common dso_local global i32 0, align 4
@NvDmaFB = common dso_local global i32 0, align 4
@NvSubImageBlit = common dso_local global i32 0, align 4
@NvSubGdiRect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_fbcon_accel_init(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nouveau_channel*, align 8
  %8 = alloca %struct.nouveau_device*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 2
  %16 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %15, align 8
  store %struct.nouveau_fbdev* %16, %struct.nouveau_fbdev** %4, align 8
  %17 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %6, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 1
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %23, align 8
  store %struct.nouveau_channel* %24, %struct.nouveau_channel** %7, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.nouveau_device* @nv_device(i32 %27)
  store %struct.nouveau_device* %28, %struct.nouveau_device** %8, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %46 [
    i32 8, label %33
    i32 16, label %34
    i32 32, label %35
  ]

33:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %49

34:                                               ; preds = %1
  store i32 4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %42 [
    i32 0, label %41
    i32 8, label %41
  ]

41:                                               ; preds = %35, %35
  br label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %313

45:                                               ; preds = %41
  store i32 6, i32* %10, align 4
  store i32 3, i32* %11, align 4
  store i32 3, i32* %12, align 4
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %313

49:                                               ; preds = %45, %34, %33
  %50 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %51 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nv_object(i32 %52)
  %54 = load i32, i32* @NVDRM_CHAN, align 4
  %55 = load i32, i32* @NvCtxSurf2D, align 4
  %56 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %57 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NV_10, align 8
  %60 = icmp sge i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 98, i32 66
  %63 = call i32 @nouveau_object_new(i32 %53, i32 %54, i32 %55, i32 %62, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %49
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %2, align 4
  br label %313

68:                                               ; preds = %49
  %69 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %70 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nv_object(i32 %71)
  %73 = load i32, i32* @NVDRM_CHAN, align 4
  %74 = load i32, i32* @NvClipRect, align 4
  %75 = call i32 @nouveau_object_new(i32 %72, i32 %73, i32 %74, i32 25, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %2, align 4
  br label %313

80:                                               ; preds = %68
  %81 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %82 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @nv_object(i32 %83)
  %85 = load i32, i32* @NVDRM_CHAN, align 4
  %86 = load i32, i32* @NvRop, align 4
  %87 = call i32 @nouveau_object_new(i32 %84, i32 %85, i32 %86, i32 67, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %2, align 4
  br label %313

92:                                               ; preds = %80
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %94 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nv_object(i32 %95)
  %97 = load i32, i32* @NVDRM_CHAN, align 4
  %98 = load i32, i32* @NvImagePatt, align 4
  %99 = call i32 @nouveau_object_new(i32 %96, i32 %97, i32 %98, i32 68, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %2, align 4
  br label %313

104:                                              ; preds = %92
  %105 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %106 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @nv_object(i32 %107)
  %109 = load i32, i32* @NVDRM_CHAN, align 4
  %110 = load i32, i32* @NvGdiRect, align 4
  %111 = call i32 @nouveau_object_new(i32 %108, i32 %109, i32 %110, i32 74, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %2, align 4
  br label %313

116:                                              ; preds = %104
  %117 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %118 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @nv_object(i32 %119)
  %121 = load i32, i32* @NVDRM_CHAN, align 4
  %122 = load i32, i32* @NvImageBlit, align 4
  %123 = load %struct.nouveau_device*, %struct.nouveau_device** %8, align 8
  %124 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp sge i32 %125, 17
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 159, i32 95
  %129 = call i32 @nouveau_object_new(i32 %120, i32 %121, i32 %122, i32 %128, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %2, align 4
  br label %313

134:                                              ; preds = %116
  %135 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %136 = call i64 @RING_SPACE(%struct.nouveau_channel* %135, i32 49)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %140 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %139)
  store i32 0, i32* %2, align 4
  br label %313

141:                                              ; preds = %134
  %142 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %143 = load i32, i32* @NvSubCtxSurf2D, align 4
  %144 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %142, i32 %143, i32 0, i32 1)
  %145 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %146 = load i32, i32* @NvCtxSurf2D, align 4
  %147 = call i32 @OUT_RING(%struct.nouveau_channel* %145, i32 %146)
  %148 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %149 = load i32, i32* @NvSubCtxSurf2D, align 4
  %150 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %148, i32 %149, i32 388, i32 2)
  %151 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %152 = load i32, i32* @NvDmaFB, align 4
  %153 = call i32 @OUT_RING(%struct.nouveau_channel* %151, i32 %152)
  %154 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %155 = load i32, i32* @NvDmaFB, align 4
  %156 = call i32 @OUT_RING(%struct.nouveau_channel* %154, i32 %155)
  %157 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %158 = load i32, i32* @NvSubCtxSurf2D, align 4
  %159 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %157, i32 %158, i32 768, i32 4)
  %160 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @OUT_RING(%struct.nouveau_channel* %160, i32 %161)
  %163 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %164 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %165 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %169 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = shl i32 %171, 16
  %173 = or i32 %167, %172
  %174 = call i32 @OUT_RING(%struct.nouveau_channel* %163, i32 %173)
  %175 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %176 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %177 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %181 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %179, %183
  %185 = call i32 @OUT_RING(%struct.nouveau_channel* %175, i32 %184)
  %186 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %187 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %188 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %192 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %190, %194
  %196 = call i32 @OUT_RING(%struct.nouveau_channel* %186, i32 %195)
  %197 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %198 = load i32, i32* @NvSubCtxSurf2D, align 4
  %199 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %197, i32 %198, i32 0, i32 1)
  %200 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %201 = load i32, i32* @NvRop, align 4
  %202 = call i32 @OUT_RING(%struct.nouveau_channel* %200, i32 %201)
  %203 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %204 = load i32, i32* @NvSubCtxSurf2D, align 4
  %205 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %203, i32 %204, i32 768, i32 1)
  %206 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %207 = call i32 @OUT_RING(%struct.nouveau_channel* %206, i32 85)
  %208 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %209 = load i32, i32* @NvSubCtxSurf2D, align 4
  %210 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %208, i32 %209, i32 0, i32 1)
  %211 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %212 = load i32, i32* @NvImagePatt, align 4
  %213 = call i32 @OUT_RING(%struct.nouveau_channel* %211, i32 %212)
  %214 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %215 = load i32, i32* @NvSubCtxSurf2D, align 4
  %216 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %214, i32 %215, i32 768, i32 8)
  %217 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @OUT_RING(%struct.nouveau_channel* %217, i32 %218)
  %220 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %221 = call i32 @OUT_RING(%struct.nouveau_channel* %220, i32 1)
  %222 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %223 = call i32 @OUT_RING(%struct.nouveau_channel* %222, i32 0)
  %224 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %225 = call i32 @OUT_RING(%struct.nouveau_channel* %224, i32 1)
  %226 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %227 = call i32 @OUT_RING(%struct.nouveau_channel* %226, i32 -1)
  %228 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %229 = call i32 @OUT_RING(%struct.nouveau_channel* %228, i32 -1)
  %230 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %231 = call i32 @OUT_RING(%struct.nouveau_channel* %230, i32 -1)
  %232 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %233 = call i32 @OUT_RING(%struct.nouveau_channel* %232, i32 -1)
  %234 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %235 = load i32, i32* @NvSubCtxSurf2D, align 4
  %236 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %234, i32 %235, i32 0, i32 1)
  %237 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %238 = load i32, i32* @NvClipRect, align 4
  %239 = call i32 @OUT_RING(%struct.nouveau_channel* %237, i32 %238)
  %240 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %241 = load i32, i32* @NvSubCtxSurf2D, align 4
  %242 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %240, i32 %241, i32 768, i32 2)
  %243 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %244 = call i32 @OUT_RING(%struct.nouveau_channel* %243, i32 0)
  %245 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %246 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %247 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = shl i32 %249, 16
  %251 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %252 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %250, %254
  %256 = call i32 @OUT_RING(%struct.nouveau_channel* %245, i32 %255)
  %257 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %258 = load i32, i32* @NvSubImageBlit, align 4
  %259 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %257, i32 %258, i32 0, i32 1)
  %260 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %261 = load i32, i32* @NvImageBlit, align 4
  %262 = call i32 @OUT_RING(%struct.nouveau_channel* %260, i32 %261)
  %263 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %264 = load i32, i32* @NvSubImageBlit, align 4
  %265 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %263, i32 %264, i32 412, i32 1)
  %266 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %267 = load i32, i32* @NvCtxSurf2D, align 4
  %268 = call i32 @OUT_RING(%struct.nouveau_channel* %266, i32 %267)
  %269 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %270 = load i32, i32* @NvSubImageBlit, align 4
  %271 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %269, i32 %270, i32 764, i32 1)
  %272 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %273 = call i32 @OUT_RING(%struct.nouveau_channel* %272, i32 3)
  %274 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %275 = load i32, i32* @NvSubGdiRect, align 4
  %276 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %274, i32 %275, i32 0, i32 1)
  %277 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %278 = load i32, i32* @NvGdiRect, align 4
  %279 = call i32 @OUT_RING(%struct.nouveau_channel* %277, i32 %278)
  %280 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %281 = load i32, i32* @NvSubGdiRect, align 4
  %282 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %280, i32 %281, i32 408, i32 1)
  %283 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %284 = load i32, i32* @NvCtxSurf2D, align 4
  %285 = call i32 @OUT_RING(%struct.nouveau_channel* %283, i32 %284)
  %286 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %287 = load i32, i32* @NvSubGdiRect, align 4
  %288 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %286, i32 %287, i32 392, i32 2)
  %289 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %290 = load i32, i32* @NvImagePatt, align 4
  %291 = call i32 @OUT_RING(%struct.nouveau_channel* %289, i32 %290)
  %292 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %293 = load i32, i32* @NvRop, align 4
  %294 = call i32 @OUT_RING(%struct.nouveau_channel* %292, i32 %293)
  %295 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %296 = load i32, i32* @NvSubGdiRect, align 4
  %297 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %295, i32 %296, i32 772, i32 1)
  %298 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %299 = call i32 @OUT_RING(%struct.nouveau_channel* %298, i32 1)
  %300 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %301 = load i32, i32* @NvSubGdiRect, align 4
  %302 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %300, i32 %301, i32 768, i32 1)
  %303 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @OUT_RING(%struct.nouveau_channel* %303, i32 %304)
  %306 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %307 = load i32, i32* @NvSubGdiRect, align 4
  %308 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %306, i32 %307, i32 764, i32 1)
  %309 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %310 = call i32 @OUT_RING(%struct.nouveau_channel* %309, i32 3)
  %311 = load %struct.nouveau_channel*, %struct.nouveau_channel** %7, align 8
  %312 = call i32 @FIRE_RING(%struct.nouveau_channel* %311)
  store i32 0, i32* %2, align 4
  br label %313

313:                                              ; preds = %141, %138, %132, %114, %102, %90, %78, %66, %46, %42
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local i32 @nouveau_object_new(i32, i32, i32, i32, i32*, i32, %struct.nouveau_object**) #1

declare dso_local i32 @nv_object(i32) #1

declare dso_local i64 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
