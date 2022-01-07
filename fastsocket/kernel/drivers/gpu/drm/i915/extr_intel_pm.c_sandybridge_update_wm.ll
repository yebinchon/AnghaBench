; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_sandybridge_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i64 }

@sandybridge_display_wm_info = common dso_local global i32 0, align 4
@sandybridge_cursor_wm_info = common dso_local global i32 0, align 4
@WM0_PIPEA_ILK = common dso_local global i32 0, align 4
@WM0_PIPE_PLANE_MASK = common dso_local global i32 0, align 4
@WM0_PIPE_CURSOR_MASK = common dso_local global i32 0, align 4
@WM0_PIPE_PLANE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"FIFO watermarks For pipe A - plane %d, cursor: %d\0A\00", align 1
@WM0_PIPEB_ILK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"FIFO watermarks For pipe B - plane %d, cursor: %d\0A\00", align 1
@WM3_LP_ILK = common dso_local global i32 0, align 4
@WM2_LP_ILK = common dso_local global i32 0, align 4
@WM1_LP_ILK = common dso_local global i32 0, align 4
@sandybridge_display_srwm_info = common dso_local global i32 0, align 4
@sandybridge_cursor_srwm_info = common dso_local global i32 0, align 4
@WM1_LP_SR_EN = common dso_local global i32 0, align 4
@WM1_LP_LATENCY_SHIFT = common dso_local global i32 0, align 4
@WM1_LP_FBC_SHIFT = common dso_local global i32 0, align 4
@WM1_LP_SR_SHIFT = common dso_local global i32 0, align 4
@WM2_LP_EN = common dso_local global i32 0, align 4
@WM3_LP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @sandybridge_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sandybridge_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = call i32 (...) @SNB_READ_WM0_LATENCY()
  %14 = mul nsw i32 %13, 100
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @g4x_compute_wm0(%struct.drm_device* %15, i32 0, i32* @sandybridge_display_wm_info, i32 %16, i32* @sandybridge_cursor_wm_info, i32 %17, i32* %7, i32* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load i32, i32* @WM0_PIPEA_ILK, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @WM0_PIPE_PLANE_MASK, align 4
  %24 = load i32, i32* @WM0_PIPE_CURSOR_MASK, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @WM0_PIPEA_ILK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @WM0_PIPE_PLANE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %33, %34
  %36 = or i32 %30, %35
  %37 = call i32 @I915_WRITE(i32 %29, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %20, %1
  %44 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @g4x_compute_wm0(%struct.drm_device* %44, i32 1, i32* @sandybridge_display_wm_info, i32 %45, i32* @sandybridge_cursor_wm_info, i32 %46, i32* %7, i32* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load i32, i32* @WM0_PIPEB_ILK, align 4
  %51 = call i32 @I915_READ(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @WM0_PIPE_PLANE_MASK, align 4
  %53 = load i32, i32* @WM0_PIPE_CURSOR_MASK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @WM0_PIPEB_ILK, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @WM0_PIPE_PLANE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %62, %63
  %65 = or i32 %59, %64
  %66 = call i32 @I915_WRITE(i32 %58, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, 2
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %49, %43
  %73 = load i32, i32* @WM3_LP_ILK, align 4
  %74 = call i32 @I915_WRITE(i32 %73, i32 0)
  %75 = load i32, i32* @WM2_LP_ILK, align 4
  %76 = call i32 @I915_WRITE(i32 %75, i32 0)
  %77 = load i32, i32* @WM1_LP_ILK, align 4
  %78 = call i32 @I915_WRITE(i32 %77, i32 0)
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @single_plane_enabled(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %84 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %72
  br label %167

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ffs(i32 %89)
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (...) @SNB_READ_WM1_LATENCY()
  %95 = mul nsw i32 %94, 500
  %96 = call i32 @ironlake_compute_srwm(%struct.drm_device* %92, i32 1, i32 %93, i32 %95, i32* @sandybridge_display_srwm_info, i32* @sandybridge_cursor_srwm_info, i32* %6, i32* %7, i32* %8)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  br label %167

99:                                               ; preds = %88
  %100 = load i32, i32* @WM1_LP_ILK, align 4
  %101 = load i32, i32* @WM1_LP_SR_EN, align 4
  %102 = call i32 (...) @SNB_READ_WM1_LATENCY()
  %103 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %101, %104
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = or i32 %105, %108
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = or i32 %109, %112
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @I915_WRITE(i32 %100, i32 %115)
  %117 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (...) @SNB_READ_WM2_LATENCY()
  %120 = mul nsw i32 %119, 500
  %121 = call i32 @ironlake_compute_srwm(%struct.drm_device* %117, i32 2, i32 %118, i32 %120, i32* @sandybridge_display_srwm_info, i32* @sandybridge_cursor_srwm_info, i32* %6, i32* %7, i32* %8)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %99
  br label %167

124:                                              ; preds = %99
  %125 = load i32, i32* @WM2_LP_ILK, align 4
  %126 = load i32, i32* @WM2_LP_EN, align 4
  %127 = call i32 (...) @SNB_READ_WM2_LATENCY()
  %128 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %126, %129
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = or i32 %130, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = or i32 %134, %137
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @I915_WRITE(i32 %125, i32 %140)
  %142 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 (...) @SNB_READ_WM3_LATENCY()
  %145 = mul nsw i32 %144, 500
  %146 = call i32 @ironlake_compute_srwm(%struct.drm_device* %142, i32 3, i32 %143, i32 %145, i32* @sandybridge_display_srwm_info, i32* @sandybridge_cursor_srwm_info, i32* %6, i32* %7, i32* %8)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %124
  br label %167

149:                                              ; preds = %124
  %150 = load i32, i32* @WM3_LP_ILK, align 4
  %151 = load i32, i32* @WM3_LP_EN, align 4
  %152 = call i32 (...) @SNB_READ_WM3_LATENCY()
  %153 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = or i32 %151, %154
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %155, %158
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = or i32 %159, %162
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @I915_WRITE(i32 %150, i32 %165)
  br label %167

167:                                              ; preds = %149, %148, %123, %98, %87
  ret void
}

declare dso_local i32 @SNB_READ_WM0_LATENCY(...) #1

declare dso_local i64 @g4x_compute_wm0(%struct.drm_device*, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @single_plane_enabled(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ironlake_compute_srwm(%struct.drm_device*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SNB_READ_WM1_LATENCY(...) #1

declare dso_local i32 @SNB_READ_WM2_LATENCY(...) #1

declare dso_local i32 @SNB_READ_WM3_LATENCY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
