; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_accel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_fbcon.c_nv50_fbcon_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.nouveau_fbdev* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_fbdev = type { %struct.drm_device*, %struct.nouveau_framebuffer }
%struct.drm_device = type { i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }
%struct.nouveau_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVDRM_CHAN = common dso_local global i32 0, align 4
@Nv2D = common dso_local global i32 0, align 4
@NvSub2D = common dso_local global i32 0, align 4
@NvDmaFB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fbcon_accel_init(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.nouveau_framebuffer*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nouveau_channel*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 2
  %14 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %13, align 8
  store %struct.nouveau_fbdev* %14, %struct.nouveau_fbdev** %4, align 8
  %15 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %15, i32 0, i32 1
  store %struct.nouveau_framebuffer* %16, %struct.nouveau_framebuffer** %5, align 8
  %17 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %18 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %7, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 0
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %23, align 8
  store %struct.nouveau_channel* %24, %struct.nouveau_channel** %8, align 8
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %44 [
    i32 8, label %29
    i32 15, label %30
    i32 16, label %31
    i32 32, label %32
  ]

29:                                               ; preds = %1
  store i32 243, i32* %11, align 4
  br label %47

30:                                               ; preds = %1
  store i32 248, i32* %11, align 4
  br label %47

31:                                               ; preds = %1
  store i32 232, i32* %11, align 4
  br label %47

32:                                               ; preds = %1
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %40 [
    i32 0, label %38
    i32 8, label %38
    i32 2, label %39
  ]

38:                                               ; preds = %32, %32
  store i32 230, i32* %11, align 4
  br label %43

39:                                               ; preds = %32
  store i32 209, i32* %11, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %255

43:                                               ; preds = %39, %38
  br label %47

44:                                               ; preds = %1
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %255

47:                                               ; preds = %43, %31, %30, %29
  %48 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %49 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nv_object(i32 %50)
  %52 = load i32, i32* @NVDRM_CHAN, align 4
  %53 = load i32, i32* @Nv2D, align 4
  %54 = call i32 @nouveau_object_new(i32 %51, i32 %52, i32 %53, i32 20525, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %2, align 4
  br label %255

59:                                               ; preds = %47
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %61 = call i32 @RING_SPACE(%struct.nouveau_channel* %60, i32 59)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %2, align 4
  br label %255

68:                                               ; preds = %59
  %69 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %70 = load i32, i32* @NvSub2D, align 4
  %71 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %69, i32 %70, i32 0, i32 1)
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %73 = load i32, i32* @Nv2D, align 4
  %74 = call i32 @OUT_RING(%struct.nouveau_channel* %72, i32 %73)
  %75 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %76 = load i32, i32* @NvSub2D, align 4
  %77 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %75, i32 %76, i32 388, i32 3)
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %79 = load i32, i32* @NvDmaFB, align 4
  %80 = call i32 @OUT_RING(%struct.nouveau_channel* %78, i32 %79)
  %81 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %82 = load i32, i32* @NvDmaFB, align 4
  %83 = call i32 @OUT_RING(%struct.nouveau_channel* %81, i32 %82)
  %84 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %85 = load i32, i32* @NvDmaFB, align 4
  %86 = call i32 @OUT_RING(%struct.nouveau_channel* %84, i32 %85)
  %87 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %88 = load i32, i32* @NvSub2D, align 4
  %89 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %87, i32 %88, i32 656, i32 1)
  %90 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %91 = call i32 @OUT_RING(%struct.nouveau_channel* %90, i32 0)
  %92 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %93 = load i32, i32* @NvSub2D, align 4
  %94 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %92, i32 %93, i32 2184, i32 1)
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %96 = call i32 @OUT_RING(%struct.nouveau_channel* %95, i32 1)
  %97 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %98 = load i32, i32* @NvSub2D, align 4
  %99 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %97, i32 %98, i32 684, i32 1)
  %100 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %101 = call i32 @OUT_RING(%struct.nouveau_channel* %100, i32 3)
  %102 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %103 = load i32, i32* @NvSub2D, align 4
  %104 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %102, i32 %103, i32 672, i32 1)
  %105 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %106 = call i32 @OUT_RING(%struct.nouveau_channel* %105, i32 85)
  %107 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %108 = load i32, i32* @NvSub2D, align 4
  %109 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %107, i32 %108, i32 2240, i32 4)
  %110 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %111 = call i32 @OUT_RING(%struct.nouveau_channel* %110, i32 0)
  %112 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %113 = call i32 @OUT_RING(%struct.nouveau_channel* %112, i32 1)
  %114 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %115 = call i32 @OUT_RING(%struct.nouveau_channel* %114, i32 0)
  %116 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %117 = call i32 @OUT_RING(%struct.nouveau_channel* %116, i32 1)
  %118 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %119 = load i32, i32* @NvSub2D, align 4
  %120 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %118, i32 %119, i32 1408, i32 2)
  %121 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %122 = call i32 @OUT_RING(%struct.nouveau_channel* %121, i32 4)
  %123 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @OUT_RING(%struct.nouveau_channel* %123, i32 %124)
  %126 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %127 = load i32, i32* @NvSub2D, align 4
  %128 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %126, i32 %127, i32 744, i32 2)
  %129 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %130 = call i32 @OUT_RING(%struct.nouveau_channel* %129, i32 2)
  %131 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %132 = call i32 @OUT_RING(%struct.nouveau_channel* %131, i32 1)
  %133 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %134 = load i32, i32* @NvSub2D, align 4
  %135 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %133, i32 %134, i32 2052, i32 1)
  %136 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @OUT_RING(%struct.nouveau_channel* %136, i32 %137)
  %139 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %140 = load i32, i32* @NvSub2D, align 4
  %141 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %139, i32 %140, i32 2048, i32 1)
  %142 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %143 = call i32 @OUT_RING(%struct.nouveau_channel* %142, i32 1)
  %144 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %145 = load i32, i32* @NvSub2D, align 4
  %146 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %144, i32 %145, i32 2056, i32 3)
  %147 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %148 = call i32 @OUT_RING(%struct.nouveau_channel* %147, i32 0)
  %149 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %150 = call i32 @OUT_RING(%struct.nouveau_channel* %149, i32 0)
  %151 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %152 = call i32 @OUT_RING(%struct.nouveau_channel* %151, i32 1)
  %153 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %154 = load i32, i32* @NvSub2D, align 4
  %155 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %153, i32 %154, i32 2076, i32 1)
  %156 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %157 = call i32 @OUT_RING(%struct.nouveau_channel* %156, i32 1)
  %158 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %159 = load i32, i32* @NvSub2D, align 4
  %160 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %158, i32 %159, i32 2112, i32 4)
  %161 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %162 = call i32 @OUT_RING(%struct.nouveau_channel* %161, i32 0)
  %163 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %164 = call i32 @OUT_RING(%struct.nouveau_channel* %163, i32 1)
  %165 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %166 = call i32 @OUT_RING(%struct.nouveau_channel* %165, i32 0)
  %167 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %168 = call i32 @OUT_RING(%struct.nouveau_channel* %167, i32 1)
  %169 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %170 = load i32, i32* @NvSub2D, align 4
  %171 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %169, i32 %170, i32 512, i32 2)
  %172 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @OUT_RING(%struct.nouveau_channel* %172, i32 %173)
  %175 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %176 = call i32 @OUT_RING(%struct.nouveau_channel* %175, i32 1)
  %177 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %178 = load i32, i32* @NvSub2D, align 4
  %179 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %177, i32 %178, i32 532, i32 5)
  %180 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %181 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %182 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @OUT_RING(%struct.nouveau_channel* %180, i32 %184)
  %186 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %187 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %188 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @OUT_RING(%struct.nouveau_channel* %186, i32 %190)
  %192 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %193 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %194 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @OUT_RING(%struct.nouveau_channel* %192, i32 %196)
  %198 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %199 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %200 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @upper_32_bits(i32 %202)
  %204 = call i32 @OUT_RING(%struct.nouveau_channel* %198, i32 %203)
  %205 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %206 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %207 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @lower_32_bits(i32 %209)
  %211 = call i32 @OUT_RING(%struct.nouveau_channel* %205, i32 %210)
  %212 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %213 = load i32, i32* @NvSub2D, align 4
  %214 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %212, i32 %213, i32 560, i32 2)
  %215 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %216 = load i32, i32* %11, align 4
  %217 = call i32 @OUT_RING(%struct.nouveau_channel* %215, i32 %216)
  %218 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %219 = call i32 @OUT_RING(%struct.nouveau_channel* %218, i32 1)
  %220 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %221 = load i32, i32* @NvSub2D, align 4
  %222 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %220, i32 %221, i32 580, i32 5)
  %223 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %224 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %225 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @OUT_RING(%struct.nouveau_channel* %223, i32 %227)
  %229 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %230 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %231 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @OUT_RING(%struct.nouveau_channel* %229, i32 %233)
  %235 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %236 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %237 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @OUT_RING(%struct.nouveau_channel* %235, i32 %239)
  %241 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %242 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %243 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @upper_32_bits(i32 %245)
  %247 = call i32 @OUT_RING(%struct.nouveau_channel* %241, i32 %246)
  %248 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %249 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %5, align 8
  %250 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @lower_32_bits(i32 %252)
  %254 = call i32 @OUT_RING(%struct.nouveau_channel* %248, i32 %253)
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %68, %64, %57, %44, %40
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_object_new(i32, i32, i32, i32, i32*, i32, %struct.nouveau_object**) #1

declare dso_local i32 @nv_object(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
