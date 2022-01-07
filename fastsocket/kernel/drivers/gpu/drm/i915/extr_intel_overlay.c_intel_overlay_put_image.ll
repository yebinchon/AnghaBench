; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_intel_overlay_put_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_intel_overlay_put_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.intel_overlay* }
%struct.intel_overlay = type { i32, i32, %struct.intel_crtc* }
%struct.intel_crtc = type { i64, %struct.intel_overlay*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_intel_overlay_put_image = type { i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_i915_gem_object = type { i32, i64 }
%struct.put_image_params = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"userspace bug: no overlay\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@I915_OVERLAY_ENABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"buffer used for overlay image can not be tiled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I915_OVERLAY_FLAGS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_overlay_put_image(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_intel_overlay_put_image*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.intel_overlay*, align 8
  %11 = alloca %struct.drm_mode_object*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca %struct.drm_i915_gem_object*, align 8
  %14 = alloca %struct.put_image_params*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.drm_intel_overlay_put_image*
  store %struct.drm_intel_overlay_put_image* %18, %struct.drm_intel_overlay_put_image** %8, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.intel_overlay*, %struct.intel_overlay** %23, align 8
  store %struct.intel_overlay* %24, %struct.intel_overlay** %10, align 8
  %25 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %26 = icmp ne %struct.intel_overlay* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %328

31:                                               ; preds = %3
  %32 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %33 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @I915_OVERLAY_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = call i32 @drm_modeset_lock_all(%struct.drm_device* %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %45 = call i32 @intel_overlay_switch_off(%struct.intel_overlay* %44)
  store i32 %45, i32* %15, align 4
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %49)
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %4, align 4
  br label %328

52:                                               ; preds = %31
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.put_image_params* @kmalloc(i32 72, i32 %53)
  store %struct.put_image_params* %54, %struct.put_image_params** %14, align 8
  %55 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %56 = icmp ne %struct.put_image_params* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %328

60:                                               ; preds = %52
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %63 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %62, i32 0, i32 15
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %66 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %61, i32 %64, i32 %65)
  store %struct.drm_mode_object* %66, %struct.drm_mode_object** %11, align 8
  %67 = load %struct.drm_mode_object*, %struct.drm_mode_object** %11, align 8
  %68 = icmp ne %struct.drm_mode_object* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %324

72:                                               ; preds = %60
  %73 = load %struct.drm_mode_object*, %struct.drm_mode_object** %11, align 8
  %74 = call i32 @obj_to_crtc(%struct.drm_mode_object* %73)
  %75 = call %struct.intel_crtc* @to_intel_crtc(i32 %74)
  store %struct.intel_crtc* %75, %struct.intel_crtc** %12, align 8
  %76 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %77 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %78 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %79 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @drm_gem_object_lookup(%struct.drm_device* %76, %struct.drm_file* %77, i32 %80)
  %82 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %81)
  store %struct.drm_i915_gem_object* %82, %struct.drm_i915_gem_object** %13, align 8
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %84 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %83, i32 0, i32 0
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %15, align 4
  br label %324

89:                                               ; preds = %72
  %90 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %91 = call i32 @drm_modeset_lock_all(%struct.drm_device* %90)
  %92 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 0
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %96 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %15, align 4
  br label %315

103:                                              ; preds = %89
  %104 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %105 = call i32 @intel_overlay_recover_from_interrupt(%struct.intel_overlay* %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %315

109:                                              ; preds = %103
  %110 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %111 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %110, i32 0, i32 2
  %112 = load %struct.intel_crtc*, %struct.intel_crtc** %111, align 8
  %113 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %114 = icmp ne %struct.intel_crtc* %112, %113
  br i1 %114, label %115, label %158

115:                                              ; preds = %109
  %116 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %117 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store %struct.drm_display_mode* %118, %struct.drm_display_mode** %16, align 8
  %119 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %120 = call i32 @intel_overlay_switch_off(%struct.intel_overlay* %119)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %315

124:                                              ; preds = %115
  %125 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %126 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %127 = call i32 @check_overlay_possible_on_crtc(%struct.intel_overlay* %125, %struct.intel_crtc* %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %315

131:                                              ; preds = %124
  %132 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %133 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %134 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %133, i32 0, i32 2
  store %struct.intel_crtc* %132, %struct.intel_crtc** %134, align 8
  %135 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %136 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %137 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %136, i32 0, i32 1
  store %struct.intel_overlay* %135, %struct.intel_overlay** %137, align 8
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %16, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 1024
  br i1 %141, label %142, label %154

142:                                              ; preds = %131
  %143 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %144 = call i64 @intel_panel_fitter_pipe(%struct.drm_device* %143)
  %145 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %146 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %151 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %153 = call i32 @update_pfit_vscale_ratio(%struct.intel_overlay* %152)
  br label %157

154:                                              ; preds = %142, %131
  %155 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %156 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %154, %149
  br label %158

158:                                              ; preds = %157, %109
  %159 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %160 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %161 = call i32 @check_overlay_dst(%struct.intel_overlay* %159, %struct.drm_intel_overlay_put_image* %160)
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %315

165:                                              ; preds = %158
  %166 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %167 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %165
  %171 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %172 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 12
  %175 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %176 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %174, %177
  %179 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %180 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %182 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = shl i32 %183, 12
  %185 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %186 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sdiv i32 %184, %187
  %189 = add nsw i32 %188, 1
  %190 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %191 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  br label %203

192:                                              ; preds = %165
  %193 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %194 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %197 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %199 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %202 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %192, %170
  %204 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %205 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %204, i32 0, i32 13
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %208 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %207, i32 0, i32 13
  store i32 %206, i32* %208, align 4
  %209 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %210 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %213 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %212, i32 0, i32 12
  store i32 %211, i32* %213, align 8
  %214 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %215 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %218 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  %219 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %220 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %223 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %222, i32 0, i32 3
  store i64 %221, i64* %223, align 8
  %224 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %225 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %228 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %227, i32 0, i32 4
  store i64 %226, i64* %228, align 8
  %229 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %230 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %229, i32 0, i32 6
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %233 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %232, i32 0, i32 5
  store i64 %231, i64* %233, align 8
  %234 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %235 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %238 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = icmp sgt i64 %236, %239
  br i1 %240, label %249, label %241

241:                                              ; preds = %203
  %242 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %243 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %246 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp sgt i64 %244, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %241, %203
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %15, align 4
  br label %315

252:                                              ; preds = %241
  %253 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %254 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %255 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %256 = call i32 @check_overlay_src(%struct.drm_device* %253, %struct.drm_intel_overlay_put_image* %254, %struct.drm_i915_gem_object* %255)
  store i32 %256, i32* %15, align 4
  %257 = load i32, i32* %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %252
  br label %315

260:                                              ; preds = %252
  %261 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %262 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @I915_OVERLAY_FLAGS_MASK, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %263, %265
  %267 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %268 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %267, i32 0, i32 6
  store i32 %266, i32* %268, align 8
  %269 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %270 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %269, i32 0, i32 11
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %273 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %272, i32 0, i32 11
  store i32 %271, i32* %273, align 4
  %274 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %275 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %274, i32 0, i32 10
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %278 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %277, i32 0, i32 10
  store i32 %276, i32* %278, align 8
  %279 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %280 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %283 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %282, i32 0, i32 9
  store i32 %281, i32* %283, align 4
  %284 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %285 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %288 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %287, i32 0, i32 8
  store i32 %286, i32* %288, align 8
  %289 = load %struct.drm_intel_overlay_put_image*, %struct.drm_intel_overlay_put_image** %8, align 8
  %290 = getelementptr inbounds %struct.drm_intel_overlay_put_image, %struct.drm_intel_overlay_put_image* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %293 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %292, i32 0, i32 7
  store i32 %291, i32* %293, align 4
  %294 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %295 = call i32 @check_overlay_scaling(%struct.put_image_params* %294)
  store i32 %295, i32* %15, align 4
  %296 = load i32, i32* %15, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %260
  br label %315

299:                                              ; preds = %260
  %300 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %301 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %302 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %303 = call i32 @intel_overlay_do_put_image(%struct.intel_overlay* %300, %struct.drm_i915_gem_object* %301, %struct.put_image_params* %302)
  store i32 %303, i32* %15, align 4
  %304 = load i32, i32* %15, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %299
  br label %315

307:                                              ; preds = %299
  %308 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %309 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %308, i32 0, i32 0
  %310 = call i32 @mutex_unlock(i32* %309)
  %311 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %312 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %311)
  %313 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %314 = call i32 @kfree(%struct.put_image_params* %313)
  store i32 0, i32* %4, align 4
  br label %328

315:                                              ; preds = %306, %298, %259, %249, %164, %130, %123, %108, %99
  %316 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %317 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %316, i32 0, i32 0
  %318 = call i32 @mutex_unlock(i32* %317)
  %319 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %320 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %319)
  %321 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %322 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %321, i32 0, i32 0
  %323 = call i32 @drm_gem_object_unreference_unlocked(i32* %322)
  br label %324

324:                                              ; preds = %315, %86, %69
  %325 = load %struct.put_image_params*, %struct.put_image_params** %14, align 8
  %326 = call i32 @kfree(%struct.put_image_params* %325)
  %327 = load i32, i32* %15, align 4
  store i32 %327, i32* %4, align 4
  br label %328

328:                                              ; preds = %324, %307, %57, %38, %27
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_overlay_switch_off(%struct.intel_overlay*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local %struct.put_image_params* @kmalloc(i32, i32) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @intel_overlay_recover_from_interrupt(%struct.intel_overlay*) #1

declare dso_local i32 @check_overlay_possible_on_crtc(%struct.intel_overlay*, %struct.intel_crtc*) #1

declare dso_local i64 @intel_panel_fitter_pipe(%struct.drm_device*) #1

declare dso_local i32 @update_pfit_vscale_ratio(%struct.intel_overlay*) #1

declare dso_local i32 @check_overlay_dst(%struct.intel_overlay*, %struct.drm_intel_overlay_put_image*) #1

declare dso_local i32 @check_overlay_src(%struct.drm_device*, %struct.drm_intel_overlay_put_image*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @check_overlay_scaling(%struct.put_image_params*) #1

declare dso_local i32 @intel_overlay_do_put_image(%struct.intel_overlay*, %struct.drm_i915_gem_object*, %struct.put_image_params*) #1

declare dso_local i32 @kfree(%struct.put_image_params*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
