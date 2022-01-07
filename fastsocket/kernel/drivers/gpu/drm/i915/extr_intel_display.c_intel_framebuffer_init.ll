; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_framebuffer = type { i32, %struct.drm_i915_gem_object* }
%struct.drm_mode_fb_cmd2 = type { i32*, i32, i64* }
%struct.drm_i915_gem_object = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@I915_TILING_Y = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"hardware does not support tiling Y\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"pitch (%d) must be at least 64 byte aligned\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"pitch (%d) must be at less than 32768\0A\00", align 1
@I915_TILING_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"pitch (%d) must match tiling stride (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid format: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"unsupported pixel format 0x%08x\0A\00", align 1
@intel_fb_funcs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"framebuffer init failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_framebuffer_init(%struct.drm_device* %0, %struct.intel_framebuffer* %1, %struct.drm_mode_fb_cmd2* %2, %struct.drm_i915_gem_object* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.intel_framebuffer*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.intel_framebuffer* %1, %struct.intel_framebuffer** %7, align 8
  store %struct.drm_mode_fb_cmd2* %2, %struct.drm_mode_fb_cmd2** %8, align 8
  store %struct.drm_i915_gem_object* %3, %struct.drm_i915_gem_object** %9, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @I915_TILING_Y, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %164

20:                                               ; preds = %4
  %21 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %22 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 63
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %30 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %164

37:                                               ; preds = %20
  %38 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 32768
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %46 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %164

53:                                               ; preds = %37
  %54 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %55 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @I915_TILING_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %61 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %66 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %59
  %70 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %71 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %76 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %164

81:                                               ; preds = %59, %53
  %82 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %83 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %128 [
    i32 138, label %85
    i32 137, label %85
    i32 130, label %85
    i32 139, label %85
    i32 132, label %86
    i32 141, label %86
    i32 133, label %100
    i32 142, label %100
    i32 131, label %100
    i32 140, label %100
    i32 134, label %100
    i32 143, label %100
    i32 129, label %114
    i32 136, label %114
    i32 128, label %114
    i32 135, label %114
  ]

85:                                               ; preds = %81, %81, %81, %81
  br label %135

86:                                               ; preds = %81, %81
  %87 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %88 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 3
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %94 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %164

99:                                               ; preds = %86
  br label %135

100:                                              ; preds = %81, %81, %81, %81, %81, %81
  %101 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %102 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 4
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %108 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %164

113:                                              ; preds = %100
  br label %135

114:                                              ; preds = %81, %81, %81, %81
  %115 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %116 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %115)
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 5
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %122 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %164

127:                                              ; preds = %114
  br label %135

128:                                              ; preds = %81
  %129 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %130 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %164

135:                                              ; preds = %127, %113, %99, %85
  %136 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %137 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %136, i32 0, i32 2
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %164

145:                                              ; preds = %135
  %146 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %7, align 8
  %147 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %146, i32 0, i32 0
  %148 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %149 = call i32 @drm_helper_mode_fill_fb_struct(i32* %147, %struct.drm_mode_fb_cmd2* %148)
  %150 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %151 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %7, align 8
  %152 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %151, i32 0, i32 1
  store %struct.drm_i915_gem_object* %150, %struct.drm_i915_gem_object** %152, align 8
  %153 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %154 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %7, align 8
  %155 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %154, i32 0, i32 0
  %156 = call i32 @drm_framebuffer_init(%struct.drm_device* %153, i32* %155, i32* @intel_fb_funcs)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %145
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %5, align 4
  br label %164

163:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %159, %142, %128, %120, %106, %92, %69, %44, %28, %16
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(i32*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
