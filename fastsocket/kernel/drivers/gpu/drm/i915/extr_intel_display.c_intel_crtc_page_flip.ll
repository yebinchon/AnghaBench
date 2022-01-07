; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_page_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_framebuffer*, %struct.drm_device* }
%struct.drm_device = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 (%struct.drm_device.0*, %struct.drm_crtc*, %struct.drm_framebuffer.1*, %struct.drm_i915_gem_object*)* }
%struct.drm_device.0 = type opaque
%struct.drm_framebuffer.1 = type opaque
%struct.drm_i915_gem_object = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_framebuffer = type { i64, i64*, i64* }
%struct.drm_pending_vblank_event = type { i32 }
%struct.intel_crtc = type { i32, i32, %struct.intel_unpin_work*, i32, i32 }
%struct.intel_unpin_work = type { i32, %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object*, i32, %struct.drm_crtc*, %struct.drm_pending_vblank_event* }
%struct.TYPE_7__ = type { %struct.drm_i915_gem_object* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_unpin_work_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"flip queue: crtc already busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)* @intel_crtc_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crtc_page_flip(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, %struct.drm_pending_vblank_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_pending_vblank_event*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca %struct.intel_unpin_work*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.drm_pending_vblank_event* %2, %struct.drm_pending_vblank_event** %7, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 1
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %8, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 2
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %20, align 8
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %9, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %10, align 8
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %26 = call %struct.TYPE_7__* @to_intel_framebuffer(%struct.drm_framebuffer* %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %27, align 8
  store %struct.drm_i915_gem_object* %28, %struct.drm_i915_gem_object** %11, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %30 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %29)
  store %struct.intel_crtc* %30, %struct.intel_crtc** %12, align 8
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %35, align 8
  %37 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %251

43:                                               ; preds = %3
  %44 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %45 = call %struct.TYPE_8__* @INTEL_INFO(%struct.drm_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 3
  br i1 %48, label %49, label %80

49:                                               ; preds = %43
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %51 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 0
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %56, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %54, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %49
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %70 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %69, i32 0, i32 0
  %71 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %70, align 8
  %72 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %68, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %63, %49
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %251

80:                                               ; preds = %63, %43
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.intel_unpin_work* @kzalloc(i32 48, i32 %81)
  store %struct.intel_unpin_work* %82, %struct.intel_unpin_work** %13, align 8
  %83 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %84 = icmp eq %struct.intel_unpin_work* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %251

88:                                               ; preds = %80
  %89 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %7, align 8
  %90 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %91 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %90, i32 0, i32 5
  store %struct.drm_pending_vblank_event* %89, %struct.drm_pending_vblank_event** %91, align 8
  %92 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %93 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %94 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %93, i32 0, i32 4
  store %struct.drm_crtc* %92, %struct.drm_crtc** %94, align 8
  %95 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %96 = call %struct.TYPE_7__* @to_intel_framebuffer(%struct.drm_framebuffer* %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %97, align 8
  %99 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %100 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %99, i32 0, i32 1
  store %struct.drm_i915_gem_object* %98, %struct.drm_i915_gem_object** %100, align 8
  %101 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %102 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %101, i32 0, i32 3
  %103 = load i32, i32* @intel_unpin_work_fn, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  %105 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %106 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %107 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @drm_vblank_get(%struct.drm_device* %105, i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %88
  br label %247

113:                                              ; preds = %88
  %114 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %115 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %114, i32 0, i32 0
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @spin_lock_irqsave(i32* %115, i64 %116)
  %118 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %119 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %118, i32 0, i32 2
  %120 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %119, align 8
  %121 = icmp ne %struct.intel_unpin_work* %120, null
  br i1 %121, label %122, label %137

122:                                              ; preds = %113
  %123 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %128 = call i32 @kfree(%struct.intel_unpin_work* %127)
  %129 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %130 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %131 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @drm_vblank_put(%struct.drm_device* %129, i32 %132)
  %134 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %135 = load i32, i32* @EBUSY, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %251

137:                                              ; preds = %113
  %138 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %139 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %140 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %139, i32 0, i32 2
  store %struct.intel_unpin_work* %138, %struct.intel_unpin_work** %140, align 8
  %141 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %142 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %141, i32 0, i32 0
  %143 = load i64, i64* %14, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  %145 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %146 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %145, i32 0, i32 3
  %147 = call i32 @atomic_read(i32* %146)
  %148 = icmp sge i32 %147, 2
  br i1 %148, label %149, label %154

149:                                              ; preds = %137
  %150 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %151 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @flush_workqueue(i32 %152)
  br label %154

154:                                              ; preds = %149, %137
  %155 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %156 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %231

160:                                              ; preds = %154
  %161 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %162 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %161, i32 0, i32 1
  %163 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %162, align 8
  %164 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %163, i32 0, i32 0
  %165 = call i32 @drm_gem_object_reference(i32* %164)
  %166 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %167 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %166, i32 0, i32 0
  %168 = call i32 @drm_gem_object_reference(i32* %167)
  %169 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %170 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %171 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %170, i32 0, i32 0
  store %struct.drm_framebuffer* %169, %struct.drm_framebuffer** %171, align 8
  %172 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %173 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %174 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %173, i32 0, i32 2
  store %struct.drm_i915_gem_object* %172, %struct.drm_i915_gem_object** %174, align 8
  %175 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %176 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %178 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %177, i32 0, i32 3
  %179 = call i32 @atomic_inc(i32* %178)
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %181 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = call i32 @atomic_read(i32* %182)
  %184 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %185 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %187 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32 (%struct.drm_device.0*, %struct.drm_crtc*, %struct.drm_framebuffer.1*, %struct.drm_i915_gem_object*)*, i32 (%struct.drm_device.0*, %struct.drm_crtc*, %struct.drm_framebuffer.1*, %struct.drm_i915_gem_object*)** %188, align 8
  %190 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %191 = bitcast %struct.drm_device* %190 to %struct.drm_device.0*
  %192 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %193 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %194 = bitcast %struct.drm_framebuffer* %193 to %struct.drm_framebuffer.1*
  %195 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %196 = call i32 %189(%struct.drm_device.0* %191, %struct.drm_crtc* %192, %struct.drm_framebuffer.1* %194, %struct.drm_i915_gem_object* %195)
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %160
  br label %213

200:                                              ; preds = %160
  %201 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %202 = call i32 @intel_disable_fbc(%struct.drm_device* %201)
  %203 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %204 = call i32 @intel_mark_fb_busy(%struct.drm_i915_gem_object* %203)
  %205 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %206 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %205, i32 0, i32 1
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %209 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %212 = call i32 @trace_i915_flip_request(i32 %210, %struct.drm_i915_gem_object* %211)
  store i32 0, i32* %4, align 4
  br label %251

213:                                              ; preds = %199
  %214 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %215 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %214, i32 0, i32 3
  %216 = call i32 @atomic_dec(i32* %215)
  %217 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %218 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %219 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %218, i32 0, i32 0
  store %struct.drm_framebuffer* %217, %struct.drm_framebuffer** %219, align 8
  %220 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %221 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %220, i32 0, i32 1
  %222 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %221, align 8
  %223 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %222, i32 0, i32 0
  %224 = call i32 @drm_gem_object_unreference(i32* %223)
  %225 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %226 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %225, i32 0, i32 0
  %227 = call i32 @drm_gem_object_unreference(i32* %226)
  %228 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %229 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %228, i32 0, i32 1
  %230 = call i32 @mutex_unlock(i32* %229)
  br label %231

231:                                              ; preds = %213, %159
  %232 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %233 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %232, i32 0, i32 0
  %234 = load i64, i64* %14, align 8
  %235 = call i32 @spin_lock_irqsave(i32* %233, i64 %234)
  %236 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %237 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %236, i32 0, i32 2
  store %struct.intel_unpin_work* null, %struct.intel_unpin_work** %237, align 8
  %238 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %239 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %238, i32 0, i32 0
  %240 = load i64, i64* %14, align 8
  %241 = call i32 @spin_unlock_irqrestore(i32* %239, i64 %240)
  %242 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %243 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %244 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @drm_vblank_put(%struct.drm_device* %242, i32 %245)
  br label %247

247:                                              ; preds = %231, %112
  %248 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %13, align 8
  %249 = call i32 @kfree(%struct.intel_unpin_work* %248)
  %250 = load i32, i32* %15, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %247, %200, %122, %85, %77, %40
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local %struct.TYPE_7__* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.TYPE_8__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local %struct.intel_unpin_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_vblank_get(%struct.drm_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.intel_unpin_work*) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local i32 @drm_gem_object_reference(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @intel_disable_fbc(%struct.drm_device*) #1

declare dso_local i32 @intel_mark_fb_busy(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_i915_flip_request(i32, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @drm_gem_object_unreference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
