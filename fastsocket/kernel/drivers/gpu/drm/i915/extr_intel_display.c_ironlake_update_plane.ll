; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_update_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_framebuffer = type { i32, i32*, i32 }
%struct.intel_crtc = type { i32, i64 }
%struct.intel_framebuffer = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Can't update plane %d in SAREA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DISPPLANE_PIXFORMAT_MASK = common dso_local global i64 0, align 8
@DISPPLANE_8BPP = common dso_local global i64 0, align 8
@DISPPLANE_BGRX565 = common dso_local global i64 0, align 8
@DISPPLANE_BGRX888 = common dso_local global i64 0, align 8
@DISPPLANE_RGBX888 = common dso_local global i64 0, align 8
@DISPPLANE_BGRX101010 = common dso_local global i64 0, align 8
@DISPPLANE_RGBX101010 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unknown pixel format 0x%08x\0A\00", align 1
@I915_TILING_NONE = common dso_local global i64 0, align 8
@DISPPLANE_TILED = common dso_local global i64 0, align 8
@DISPPLANE_TRICKLE_FEED_DISABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Writing base %08X %08lX %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32)* @ironlake_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_update_plane(%struct.drm_crtc* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca %struct.intel_crtc*, align 8
  %13 = alloca %struct.intel_framebuffer*, align 8
  %14 = alloca %struct.drm_i915_gem_object*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %6, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %10, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %11, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %26 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %25)
  store %struct.intel_crtc* %26, %struct.intel_crtc** %12, align 8
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %28 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  switch i32 %30, label %32 [
    i32 0, label %31
    i32 1, label %31
    i32 2, label %31
  ]

31:                                               ; preds = %4, %4, %4
  br label %37

32:                                               ; preds = %4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %201

37:                                               ; preds = %31
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %39 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %38)
  store %struct.intel_framebuffer* %39, %struct.intel_framebuffer** %13, align 8
  %40 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %13, align 8
  %41 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %40, i32 0, i32 0
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %41, align 8
  store %struct.drm_i915_gem_object* %42, %struct.drm_i915_gem_object** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @DSPCNTR(i32 %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = call i64 @I915_READ(i64 %45)
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* @DISPPLANE_PIXFORMAT_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %17, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %17, align 8
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %78 [
    i32 133, label %54
    i32 132, label %58
    i32 128, label %62
    i32 134, label %62
    i32 130, label %66
    i32 136, label %66
    i32 129, label %70
    i32 135, label %70
    i32 131, label %74
    i32 137, label %74
  ]

54:                                               ; preds = %37
  %55 = load i64, i64* @DISPPLANE_8BPP, align 8
  %56 = load i64, i64* %17, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %17, align 8
  br label %85

58:                                               ; preds = %37
  %59 = load i64, i64* @DISPPLANE_BGRX565, align 8
  %60 = load i64, i64* %17, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %17, align 8
  br label %85

62:                                               ; preds = %37, %37
  %63 = load i64, i64* @DISPPLANE_BGRX888, align 8
  %64 = load i64, i64* %17, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %17, align 8
  br label %85

66:                                               ; preds = %37, %37
  %67 = load i64, i64* @DISPPLANE_RGBX888, align 8
  %68 = load i64, i64* %17, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %17, align 8
  br label %85

70:                                               ; preds = %37, %37
  %71 = load i64, i64* @DISPPLANE_BGRX101010, align 8
  %72 = load i64, i64* %17, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %17, align 8
  br label %85

74:                                               ; preds = %37, %37
  %75 = load i64, i64* @DISPPLANE_RGBX101010, align 8
  %76 = load i64, i64* %17, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %17, align 8
  br label %85

78:                                               ; preds = %37
  %79 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %80 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %201

85:                                               ; preds = %74, %70, %66, %62, %58, %54
  %86 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %87 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @I915_TILING_NONE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i64, i64* @DISPPLANE_TILED, align 8
  %93 = load i64, i64* %17, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %17, align 8
  br label %100

95:                                               ; preds = %85
  %96 = load i64, i64* @DISPPLANE_TILED, align 8
  %97 = xor i64 %96, -1
  %98 = load i64, i64* %17, align 8
  %99 = and i64 %98, %97
  store i64 %99, i64* %17, align 8
  br label %100

100:                                              ; preds = %95, %91
  %101 = load i64, i64* @DISPPLANE_TRICKLE_FEED_DISABLE, align 8
  %102 = load i64, i64* %17, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %17, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %17, align 8
  %106 = call i32 @I915_WRITE(i64 %104, i64 %105)
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %109 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %107, %112
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %116 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sdiv i32 %117, 8
  %119 = mul nsw i32 %114, %118
  %120 = add nsw i32 %113, %119
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %16, align 8
  %122 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %123 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %126 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %127, 8
  %129 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %130 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @intel_gen4_compute_page_offset(i32* %8, i32* %9, i64 %124, i32 %128, i32 %133)
  %135 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %136 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %138 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %16, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %16, align 8
  %142 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %143 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %149 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %144, i64 %145, i32 %146, i32 %147, i32 %152)
  %154 = load i32, i32* %15, align 4
  %155 = call i64 @DSPSTRIDE(i32 %154)
  %156 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %157 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = call i32 @I915_WRITE(i64 %155, i64 %161)
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @DSPSURF(i32 %163)
  %165 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %166 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.intel_crtc*, %struct.intel_crtc** %12, align 8
  %169 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = call i32 @I915_MODIFY_DISPBASE(i32 %164, i64 %171)
  %173 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %174 = call i64 @IS_HASWELL(%struct.drm_device* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %100
  %177 = load i32, i32* %15, align 4
  %178 = call i64 @DSPOFFSET(i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = shl i32 %179, 16
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = call i32 @I915_WRITE(i64 %178, i64 %183)
  br label %198

185:                                              ; preds = %100
  %186 = load i32, i32* %15, align 4
  %187 = call i64 @DSPTILEOFF(i32 %186)
  %188 = load i32, i32* %9, align 4
  %189 = shl i32 %188, 16
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = call i32 @I915_WRITE(i64 %187, i64 %192)
  %194 = load i32, i32* %15, align 4
  %195 = call i64 @DSPLINOFF(i32 %194)
  %196 = load i64, i64* %16, align 8
  %197 = call i32 @I915_WRITE(i64 %195, i64 %196)
  br label %198

198:                                              ; preds = %185, %176
  %199 = load i64, i64* %18, align 8
  %200 = call i32 @POSTING_READ(i64 %199)
  store i32 0, i32* %5, align 4
  br label %201

201:                                              ; preds = %198, %78, %32
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i64 @DSPCNTR(i32) #1

declare dso_local i64 @I915_READ(i64) #1

declare dso_local i32 @I915_WRITE(i64, i64) #1

declare dso_local i64 @intel_gen4_compute_page_offset(i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i64, i32, i32, i32) #1

declare dso_local i64 @DSPSTRIDE(i32) #1

declare dso_local i32 @I915_MODIFY_DISPBASE(i32, i64) #1

declare dso_local i32 @DSPSURF(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i64 @DSPOFFSET(i32) #1

declare dso_local i64 @DSPTILEOFF(i32) #1

declare dso_local i64 @DSPLINOFF(i32) #1

declare dso_local i32 @POSTING_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
