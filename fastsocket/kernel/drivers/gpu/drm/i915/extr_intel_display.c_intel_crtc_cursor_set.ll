; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.drm_file = type { i32 }
%struct.intel_crtc = type { i64, i32, i32, i32, %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32, %struct.TYPE_9__, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"cursor off\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"we currently only support 64x64 cursors\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"buffer is to small\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"cursor cannot be tiled\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to move cursor bo into the GTT\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"failed to release fence for cursor\00", align 1
@I915_GEM_PHYS_CURSOR_0 = common dso_local global i32 0, align 4
@I915_GEM_PHYS_CURSOR_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to attach phys object\0A\00", align 1
@CURSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i32, i32, i32)* @intel_crtc_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.drm_i915_private*, align 8
  %14 = alloca %struct.intel_crtc*, align 8
  %15 = alloca %struct.drm_i915_gem_object*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %12, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %13, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %26 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %25)
  store %struct.intel_crtc* %26, %struct.intel_crtc** %14, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %15, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  br label %151

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 64
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 64
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %217

44:                                               ; preds = %37
  %45 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %46 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @drm_gem_object_lookup(%struct.drm_device* %45, %struct.drm_file* %46, i32 %47)
  %49 = call %struct.drm_i915_gem_object* @to_intel_bo(i32 %48)
  store %struct.drm_i915_gem_object* %49, %struct.drm_i915_gem_object** %15, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 1
  %52 = icmp eq %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %217

56:                                               ; preds = %44
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %61, %62
  %64 = mul nsw i32 %63, 4
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %17, align 4
  br label %212

70:                                               ; preds = %56
  %71 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = call i32 @mutex_lock(i32* %72)
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %75 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %70
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %82 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %17, align 4
  br label %208

89:                                               ; preds = %80
  %90 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %91 = call i32 @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object* %90, i32 0, i32* null)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %208

96:                                               ; preds = %89
  %97 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %98 = call i32 @i915_gem_object_put_fence(%struct.drm_i915_gem_object* %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %205

103:                                              ; preds = %96
  %104 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %105 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %16, align 4
  br label %139

107:                                              ; preds = %70
  %108 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %109 = call i64 @IS_I830(%struct.drm_device* %108)
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 16384, i32 256
  store i32 %112, i32* %18, align 4
  %113 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %114 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %115 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %116 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = load i32, i32* @I915_GEM_PHYS_CURSOR_0, align 4
  br label %123

121:                                              ; preds = %107
  %122 = load i32, i32* @I915_GEM_PHYS_CURSOR_1, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @i915_gem_attach_phys_object(%struct.drm_device* %113, %struct.drm_i915_gem_object* %114, i32 %124, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %208

131:                                              ; preds = %123
  %132 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %133 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %132, i32 0, i32 2
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %131, %103
  %140 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %141 = call i64 @IS_GEN2(%struct.drm_device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, i32* @CURSIZE, align 4
  %145 = load i32, i32* %11, align 4
  %146 = shl i32 %145, 12
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @I915_WRITE(i32 %144, i32 %148)
  br label %150

150:                                              ; preds = %143, %139
  br label %151

151:                                              ; preds = %150, %29
  %152 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %153 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %152, i32 0, i32 4
  %154 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %153, align 8
  %155 = icmp ne %struct.drm_i915_gem_object* %154, null
  br i1 %155, label %156, label %187

156:                                              ; preds = %151
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  %158 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %156
  %164 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %165 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %164, i32 0, i32 4
  %166 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %165, align 8
  %167 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %168 = icmp ne %struct.drm_i915_gem_object* %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %171 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %172 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %171, i32 0, i32 4
  %173 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %172, align 8
  %174 = call i32 @i915_gem_detach_phys_object(%struct.drm_device* %170, %struct.drm_i915_gem_object* %173)
  br label %175

175:                                              ; preds = %169, %163
  br label %181

176:                                              ; preds = %156
  %177 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %178 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %177, i32 0, i32 4
  %179 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %178, align 8
  %180 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %179)
  br label %181

181:                                              ; preds = %176, %175
  %182 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %183 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %182, i32 0, i32 4
  %184 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %183, align 8
  %185 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %184, i32 0, i32 1
  %186 = call i32 @drm_gem_object_unreference(%struct.TYPE_9__* %185)
  br label %187

187:                                              ; preds = %181, %151
  %188 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %189 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %188, i32 0, i32 0
  %190 = call i32 @mutex_unlock(i32* %189)
  %191 = load i32, i32* %16, align 4
  %192 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %193 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %195 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %196 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %195, i32 0, i32 4
  store %struct.drm_i915_gem_object* %194, %struct.drm_i915_gem_object** %196, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %199 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.intel_crtc*, %struct.intel_crtc** %14, align 8
  %202 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %204 = call i32 @intel_crtc_update_cursor(%struct.drm_crtc* %203, i32 1)
  store i32 0, i32* %6, align 4
  br label %217

205:                                              ; preds = %101
  %206 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %207 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %206)
  br label %208

208:                                              ; preds = %205, %129, %94, %85
  %209 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %210 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %209, i32 0, i32 0
  %211 = call i32 @mutex_unlock(i32* %210)
  br label %212

212:                                              ; preds = %208, %66
  %213 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %15, align 8
  %214 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %213, i32 0, i32 1
  %215 = call i32 @drm_gem_object_unreference_unlocked(%struct.TYPE_9__* %214)
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %212, %187, %53, %40
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.drm_i915_gem_object* @to_intel_bo(i32) #1

declare dso_local i32 @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @i915_gem_object_pin_to_display_plane(%struct.drm_i915_gem_object*, i32, i32*) #1

declare dso_local i32 @i915_gem_object_put_fence(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @IS_I830(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_attach_phys_object(%struct.drm_device*, %struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @i915_gem_detach_phys_object(%struct.drm_device*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_crtc_update_cursor(%struct.drm_crtc*, i32) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
