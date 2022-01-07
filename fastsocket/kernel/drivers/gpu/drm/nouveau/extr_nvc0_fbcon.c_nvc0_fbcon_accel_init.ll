; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_fbcon.c_nvc0_fbcon_accel_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nvc0_fbcon.c_nvc0_fbcon_accel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.nouveau_fbdev* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nouveau_fbdev = type { %struct.nouveau_framebuffer, %struct.drm_device* }
%struct.nouveau_framebuffer = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }
%struct.nouveau_object = type { i32 }

@NVDRM_CHAN = common dso_local global i32 0, align 4
@Nv2D = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NvSub2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvc0_fbcon_accel_init(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.nouveau_fbdev*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_framebuffer*, align 8
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
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.nouveau_fbdev*, %struct.nouveau_fbdev** %4, align 8
  %19 = getelementptr inbounds %struct.nouveau_fbdev, %struct.nouveau_fbdev* %18, i32 0, i32 0
  store %struct.nouveau_framebuffer* %19, %struct.nouveau_framebuffer** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %7, align 8
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %23 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %22, i32 0, i32 0
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %23, align 8
  store %struct.nouveau_channel* %24, %struct.nouveau_channel** %8, align 8
  %25 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nv_object(i32 %27)
  %29 = load i32, i32* @NVDRM_CHAN, align 4
  %30 = load i32, i32* @Nv2D, align 4
  %31 = call i32 @nouveau_object_new(i32 %28, i32 %29, i32 %30, i32 36909, i32* null, i32 0, %struct.nouveau_object** %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %2, align 4
  br label %251

36:                                               ; preds = %1
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %56 [
    i32 8, label %41
    i32 15, label %42
    i32 16, label %43
    i32 32, label %44
  ]

41:                                               ; preds = %36
  store i32 243, i32* %11, align 4
  br label %59

42:                                               ; preds = %36
  store i32 248, i32* %11, align 4
  br label %59

43:                                               ; preds = %36
  store i32 232, i32* %11, align 4
  br label %59

44:                                               ; preds = %36
  %45 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %52 [
    i32 0, label %50
    i32 8, label %50
    i32 2, label %51
  ]

50:                                               ; preds = %44, %44
  store i32 230, i32* %11, align 4
  br label %55

51:                                               ; preds = %44
  store i32 209, i32* %11, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %251

55:                                               ; preds = %51, %50
  br label %59

56:                                               ; preds = %36
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %251

59:                                               ; preds = %55, %43, %42, %41
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %61 = call i32 @RING_SPACE(%struct.nouveau_channel* %60, i32 60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = call i32 @WARN_ON(i32 1)
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = call i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %2, align 4
  br label %251

69:                                               ; preds = %59
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %71 = load i32, i32* @NvSub2D, align 4
  %72 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %70, i32 %71, i32 0, i32 1)
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %74 = call i32 @OUT_RING(%struct.nouveau_channel* %73, i32 36909)
  %75 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %76 = load i32, i32* @NvSub2D, align 4
  %77 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %75, i32 %76, i32 656, i32 1)
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %79 = call i32 @OUT_RING(%struct.nouveau_channel* %78, i32 0)
  %80 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %81 = load i32, i32* @NvSub2D, align 4
  %82 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %80, i32 %81, i32 2184, i32 1)
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %84 = call i32 @OUT_RING(%struct.nouveau_channel* %83, i32 1)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %86 = load i32, i32* @NvSub2D, align 4
  %87 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %85, i32 %86, i32 684, i32 1)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %89 = call i32 @OUT_RING(%struct.nouveau_channel* %88, i32 3)
  %90 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %91 = load i32, i32* @NvSub2D, align 4
  %92 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %90, i32 %91, i32 672, i32 1)
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %94 = call i32 @OUT_RING(%struct.nouveau_channel* %93, i32 85)
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %96 = load i32, i32* @NvSub2D, align 4
  %97 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %95, i32 %96, i32 2240, i32 4)
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %99 = call i32 @OUT_RING(%struct.nouveau_channel* %98, i32 0)
  %100 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %101 = call i32 @OUT_RING(%struct.nouveau_channel* %100, i32 1)
  %102 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %103 = call i32 @OUT_RING(%struct.nouveau_channel* %102, i32 0)
  %104 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %105 = call i32 @OUT_RING(%struct.nouveau_channel* %104, i32 1)
  %106 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %107 = load i32, i32* @NvSub2D, align 4
  %108 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %106, i32 %107, i32 1408, i32 2)
  %109 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %110 = call i32 @OUT_RING(%struct.nouveau_channel* %109, i32 4)
  %111 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @OUT_RING(%struct.nouveau_channel* %111, i32 %112)
  %114 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %115 = load i32, i32* @NvSub2D, align 4
  %116 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %114, i32 %115, i32 744, i32 2)
  %117 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %118 = call i32 @OUT_RING(%struct.nouveau_channel* %117, i32 2)
  %119 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %120 = call i32 @OUT_RING(%struct.nouveau_channel* %119, i32 1)
  %121 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %122 = load i32, i32* @NvSub2D, align 4
  %123 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %121, i32 %122, i32 2052, i32 1)
  %124 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @OUT_RING(%struct.nouveau_channel* %124, i32 %125)
  %127 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %128 = load i32, i32* @NvSub2D, align 4
  %129 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %127, i32 %128, i32 2048, i32 1)
  %130 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %131 = call i32 @OUT_RING(%struct.nouveau_channel* %130, i32 1)
  %132 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %133 = load i32, i32* @NvSub2D, align 4
  %134 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %132, i32 %133, i32 2056, i32 3)
  %135 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %136 = call i32 @OUT_RING(%struct.nouveau_channel* %135, i32 0)
  %137 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %138 = call i32 @OUT_RING(%struct.nouveau_channel* %137, i32 0)
  %139 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %140 = call i32 @OUT_RING(%struct.nouveau_channel* %139, i32 1)
  %141 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %142 = load i32, i32* @NvSub2D, align 4
  %143 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %141, i32 %142, i32 2076, i32 1)
  %144 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %145 = call i32 @OUT_RING(%struct.nouveau_channel* %144, i32 1)
  %146 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %147 = load i32, i32* @NvSub2D, align 4
  %148 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %146, i32 %147, i32 2112, i32 4)
  %149 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %150 = call i32 @OUT_RING(%struct.nouveau_channel* %149, i32 0)
  %151 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %152 = call i32 @OUT_RING(%struct.nouveau_channel* %151, i32 1)
  %153 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %154 = call i32 @OUT_RING(%struct.nouveau_channel* %153, i32 0)
  %155 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %156 = call i32 @OUT_RING(%struct.nouveau_channel* %155, i32 1)
  %157 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %158 = load i32, i32* @NvSub2D, align 4
  %159 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %157, i32 %158, i32 512, i32 10)
  %160 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @OUT_RING(%struct.nouveau_channel* %160, i32 %161)
  %163 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %164 = call i32 @OUT_RING(%struct.nouveau_channel* %163, i32 1)
  %165 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %166 = call i32 @OUT_RING(%struct.nouveau_channel* %165, i32 0)
  %167 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %168 = call i32 @OUT_RING(%struct.nouveau_channel* %167, i32 1)
  %169 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %170 = call i32 @OUT_RING(%struct.nouveau_channel* %169, i32 0)
  %171 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %172 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %173 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @OUT_RING(%struct.nouveau_channel* %171, i32 %175)
  %177 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %178 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %179 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @OUT_RING(%struct.nouveau_channel* %177, i32 %181)
  %183 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %184 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %185 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @OUT_RING(%struct.nouveau_channel* %183, i32 %187)
  %189 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %190 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %191 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @upper_32_bits(i32 %193)
  %195 = call i32 @OUT_RING(%struct.nouveau_channel* %189, i32 %194)
  %196 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %197 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %198 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @lower_32_bits(i32 %200)
  %202 = call i32 @OUT_RING(%struct.nouveau_channel* %196, i32 %201)
  %203 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %204 = load i32, i32* @NvSub2D, align 4
  %205 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %203, i32 %204, i32 560, i32 10)
  %206 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @OUT_RING(%struct.nouveau_channel* %206, i32 %207)
  %209 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %210 = call i32 @OUT_RING(%struct.nouveau_channel* %209, i32 1)
  %211 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %212 = call i32 @OUT_RING(%struct.nouveau_channel* %211, i32 0)
  %213 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %214 = call i32 @OUT_RING(%struct.nouveau_channel* %213, i32 1)
  %215 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %216 = call i32 @OUT_RING(%struct.nouveau_channel* %215, i32 0)
  %217 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %218 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %219 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @OUT_RING(%struct.nouveau_channel* %217, i32 %221)
  %223 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %224 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %225 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @OUT_RING(%struct.nouveau_channel* %223, i32 %227)
  %229 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %230 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %231 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @OUT_RING(%struct.nouveau_channel* %229, i32 %233)
  %235 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %236 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %237 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @upper_32_bits(i32 %239)
  %241 = call i32 @OUT_RING(%struct.nouveau_channel* %235, i32 %240)
  %242 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %243 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %244 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @lower_32_bits(i32 %246)
  %248 = call i32 @OUT_RING(%struct.nouveau_channel* %242, i32 %247)
  %249 = load %struct.nouveau_channel*, %struct.nouveau_channel** %8, align 8
  %250 = call i32 @FIRE_RING(%struct.nouveau_channel* %249)
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %69, %64, %56, %52, %34
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_object_new(i32, i32, i32, i32, i32*, i32, %struct.nouveau_object**) #1

declare dso_local i32 @nv_object(i32) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nouveau_fbcon_gpu_lockup(%struct.fb_info*) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @FIRE_RING(%struct.nouveau_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
