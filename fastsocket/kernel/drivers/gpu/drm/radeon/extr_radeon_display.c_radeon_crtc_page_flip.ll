; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_page_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32, %struct.drm_framebuffer*, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_framebuffer = type { i32*, i32 }
%struct.drm_pending_vblank_event = type { i32 }
%struct.radeon_crtc = type { %struct.radeon_unpin_work*, i32, i64, i64 }
%struct.radeon_unpin_work = type { i32, i32, %struct.radeon_bo*, i32, i32, %struct.radeon_device*, %struct.drm_pending_vblank_event* }
%struct.radeon_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.radeon_framebuffer = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@radeon_unpin_work_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"flip queue: crtc already busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"flip-ioctl() cur_fbo = %p, cur_bbo = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to reserve new rbo buffer before flip\0A\00", align 1
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to pin new rbo buffer before flip\0A\00", align 1
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to get vblank before flip\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"failed to reserve new rbo in error path\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to unpin new rbo in error path\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)* @radeon_crtc_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_crtc_page_flip(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.radeon_device*, align 8
  %10 = alloca %struct.radeon_crtc*, align 8
  %11 = alloca %struct.radeon_framebuffer*, align 8
  %12 = alloca %struct.radeon_framebuffer*, align 8
  %13 = alloca %struct.drm_gem_object*, align 8
  %14 = alloca %struct.radeon_bo*, align 8
  %15 = alloca %struct.radeon_unpin_work*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %7, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 3
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %8, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 1
  %29 = load %struct.radeon_device*, %struct.radeon_device** %28, align 8
  store %struct.radeon_device* %29, %struct.radeon_device** %9, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %31 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %30)
  store %struct.radeon_crtc* %31, %struct.radeon_crtc** %10, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.radeon_unpin_work* @kzalloc(i32 40, i32 %32)
  store %struct.radeon_unpin_work* %33, %struct.radeon_unpin_work** %15, align 8
  %34 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %35 = icmp eq %struct.radeon_unpin_work* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %337

39:                                               ; preds = %3
  %40 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %41 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %42 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %41, i32 0, i32 6
  store %struct.drm_pending_vblank_event* %40, %struct.drm_pending_vblank_event** %42, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %44 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %45 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %44, i32 0, i32 5
  store %struct.radeon_device* %43, %struct.radeon_device** %45, align 8
  %46 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %47 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %50 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 2
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %52, align 8
  %54 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %53)
  store %struct.radeon_framebuffer* %54, %struct.radeon_framebuffer** %11, align 8
  %55 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %56 = call %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer* %55)
  store %struct.radeon_framebuffer* %56, %struct.radeon_framebuffer** %12, align 8
  %57 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %11, align 8
  %58 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %57, i32 0, i32 0
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %58, align 8
  store %struct.drm_gem_object* %59, %struct.drm_gem_object** %13, align 8
  %60 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %61 = call i32 @drm_gem_object_reference(%struct.drm_gem_object* %60)
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %63 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %62)
  store %struct.radeon_bo* %63, %struct.radeon_bo** %14, align 8
  %64 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %65 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %66 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %65, i32 0, i32 2
  store %struct.radeon_bo* %64, %struct.radeon_bo** %66, align 8
  %67 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %12, align 8
  %68 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %67, i32 0, i32 0
  %69 = load %struct.drm_gem_object*, %struct.drm_gem_object** %68, align 8
  store %struct.drm_gem_object* %69, %struct.drm_gem_object** %13, align 8
  %70 = load %struct.drm_gem_object*, %struct.drm_gem_object** %13, align 8
  %71 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %70)
  store %struct.radeon_bo* %71, %struct.radeon_bo** %14, align 8
  %72 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %73 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %79 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %39
  %84 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %85 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @radeon_fence_ref(i64 %87)
  %89 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %90 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %39
  %92 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %93 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %99 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %98, i32 0, i32 3
  %100 = load i32, i32* @radeon_unpin_work_func, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %103 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %102, i32 0, i32 0
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %107 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %106, i32 0, i32 0
  %108 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %107, align 8
  %109 = icmp ne %struct.radeon_unpin_work* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %91
  %111 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* @EBUSY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %20, align 4
  br label %322

114:                                              ; preds = %91
  %115 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %116 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %117 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %116, i32 0, i32 0
  store %struct.radeon_unpin_work* %115, %struct.radeon_unpin_work** %117, align 8
  %118 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %119 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %121 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %120, i32 0, i32 0
  %122 = load i64, i64* %16, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %125 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %124, i32 0, i32 2
  %126 = load %struct.radeon_bo*, %struct.radeon_bo** %125, align 8
  %127 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %128 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.radeon_bo* %126, %struct.radeon_bo* %127)
  %129 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %130 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %129, i32 0)
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %114
  %137 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %315

138:                                              ; preds = %114
  %139 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %140 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %141 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %142 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %141)
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 0, i32 134217728
  %146 = call i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %139, i32 %140, i32 %145, i32* %19)
  store i32 %146, i32* %20, align 4
  %147 = load i32, i32* %20, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %138
  %153 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %154 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %153)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %20, align 4
  %157 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %315

158:                                              ; preds = %138
  %159 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %160 = call i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo* %159, i32* %17, i32* null)
  %161 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %162 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %161)
  %163 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %164 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %264, label %166

166:                                              ; preds = %158
  %167 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %168 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %19, align 4
  %174 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %175 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %180 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = sdiv i32 %181, 8
  %183 = sdiv i32 %178, %182
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %231

188:                                              ; preds = %166
  %189 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %190 = call i64 @ASIC_IS_R300(%struct.radeon_device* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* %19, align 4
  %194 = and i32 %193, -2048
  store i32 %194, i32* %19, align 4
  br label %230

195:                                              ; preds = %188
  %196 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %197 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = ashr i32 %198, 4
  store i32 %199, i32* %21, align 4
  %200 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %201 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = ashr i32 %202, 3
  %204 = load i32, i32* %18, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %207 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %205, %208
  %210 = load i32, i32* %21, align 4
  %211 = sub nsw i32 8, %210
  %212 = ashr i32 %209, %211
  %213 = shl i32 %212, 11
  store i32 %213, i32* %22, align 4
  %214 = load i32, i32* %22, align 4
  %215 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %216 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %21, align 4
  %219 = shl i32 %217, %218
  %220 = srem i32 %219, 256
  %221 = add nsw i32 %214, %220
  %222 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %223 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = srem i32 %224, 8
  %226 = shl i32 %225, 8
  %227 = add nsw i32 %221, %226
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %195, %192
  br label %261

231:                                              ; preds = %166
  %232 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %233 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %18, align 4
  %236 = mul nsw i32 %234, %235
  %237 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %238 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  store i32 %240, i32* %23, align 4
  %241 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %242 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  switch i32 %243, label %245 [
    i32 8, label %244
    i32 15, label %248
    i32 16, label %248
    i32 24, label %251
    i32 32, label %254
  ]

244:                                              ; preds = %231
  br label %245

245:                                              ; preds = %231, %244
  %246 = load i32, i32* %23, align 4
  %247 = mul nsw i32 %246, 1
  store i32 %247, i32* %23, align 4
  br label %257

248:                                              ; preds = %231, %231
  %249 = load i32, i32* %23, align 4
  %250 = mul nsw i32 %249, 2
  store i32 %250, i32* %23, align 4
  br label %257

251:                                              ; preds = %231
  %252 = load i32, i32* %23, align 4
  %253 = mul nsw i32 %252, 3
  store i32 %253, i32* %23, align 4
  br label %257

254:                                              ; preds = %231
  %255 = load i32, i32* %23, align 4
  %256 = mul nsw i32 %255, 4
  store i32 %256, i32* %23, align 4
  br label %257

257:                                              ; preds = %254, %251, %248, %245
  %258 = load i32, i32* %23, align 4
  %259 = load i32, i32* %19, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %19, align 4
  br label %261

261:                                              ; preds = %257, %230
  %262 = load i32, i32* %19, align 4
  %263 = and i32 %262, -8
  store i32 %263, i32* %19, align 4
  br label %264

264:                                              ; preds = %261, %158
  %265 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %266 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %265, i32 0, i32 0
  %267 = load i64, i64* %16, align 8
  %268 = call i32 @spin_lock_irqsave(i32* %266, i64 %267)
  %269 = load i32, i32* %19, align 4
  %270 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %271 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %273 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %272, i32 0, i32 0
  %274 = load i64, i64* %16, align 8
  %275 = call i32 @spin_unlock_irqrestore(i32* %273, i64 %274)
  %276 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %277 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %278 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %277, i32 0, i32 2
  store %struct.drm_framebuffer* %276, %struct.drm_framebuffer** %278, align 8
  %279 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %280 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %281 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @drm_vblank_get(%struct.drm_device* %279, i32 %282)
  store i32 %283, i32* %20, align 4
  %284 = load i32, i32* %20, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %264
  %287 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %294

288:                                              ; preds = %264
  %289 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  %290 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %291 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @radeon_pre_page_flip(%struct.radeon_device* %289, i32 %292)
  store i32 0, i32* %4, align 4
  br label %337

294:                                              ; preds = %286
  %295 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %296 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %295, i32 0)
  %297 = icmp ne i32 %296, 0
  %298 = zext i1 %297 to i32
  %299 = call i64 @unlikely(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %315

303:                                              ; preds = %294
  %304 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %305 = call i64 @radeon_bo_unpin(%struct.radeon_bo* %304)
  %306 = icmp ne i64 %305, 0
  %307 = zext i1 %306 to i32
  %308 = call i64 @unlikely(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %312

312:                                              ; preds = %310, %303
  %313 = load %struct.radeon_bo*, %struct.radeon_bo** %14, align 8
  %314 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %313)
  br label %315

315:                                              ; preds = %312, %301, %152, %136
  %316 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %317 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %316, i32 0, i32 0
  %318 = load i64, i64* %16, align 8
  %319 = call i32 @spin_lock_irqsave(i32* %317, i64 %318)
  %320 = load %struct.radeon_crtc*, %struct.radeon_crtc** %10, align 8
  %321 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %320, i32 0, i32 0
  store %struct.radeon_unpin_work* null, %struct.radeon_unpin_work** %321, align 8
  br label %322

322:                                              ; preds = %315, %110
  %323 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %324 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %323, i32 0, i32 0
  %325 = load i64, i64* %16, align 8
  %326 = call i32 @spin_unlock_irqrestore(i32* %324, i64 %325)
  %327 = load %struct.radeon_framebuffer*, %struct.radeon_framebuffer** %11, align 8
  %328 = getelementptr inbounds %struct.radeon_framebuffer, %struct.radeon_framebuffer* %327, i32 0, i32 0
  %329 = load %struct.drm_gem_object*, %struct.drm_gem_object** %328, align 8
  %330 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %329)
  %331 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %332 = getelementptr inbounds %struct.radeon_unpin_work, %struct.radeon_unpin_work* %331, i32 0, i32 1
  %333 = call i32 @radeon_fence_unref(i32* %332)
  %334 = load %struct.radeon_unpin_work*, %struct.radeon_unpin_work** %15, align 8
  %335 = call i32 @kfree(%struct.radeon_unpin_work* %334)
  %336 = load i32, i32* %20, align 4
  store i32 %336, i32* %4, align 4
  br label %337

337:                                              ; preds = %322, %288, %36
  %338 = load i32, i32* %4, align 4
  ret i32 %338
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_unpin_work* @kzalloc(i32, i32) #1

declare dso_local %struct.radeon_framebuffer* @to_radeon_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_gem_object_reference(%struct.drm_gem_object*) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @radeon_fence_ref(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo*, i32, i32, i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_tiling_flags(%struct.radeon_bo*, i32*, i32*) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @drm_vblank_get(%struct.drm_device*, i32) #1

declare dso_local i32 @radeon_pre_page_flip(%struct.radeon_device*, i32) #1

declare dso_local i64 @radeon_bo_unpin(%struct.radeon_bo*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_fence_unref(i32*) #1

declare dso_local i32 @kfree(%struct.radeon_unpin_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
