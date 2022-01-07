; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ivybridge_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ivybridge_update_wm.c"
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
@WM0_PIPEC_IVB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"FIFO watermarks For pipe C - plane %d, cursor: %d\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ivybridge_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivybridge_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %3, align 8
  %16 = call i32 (...) @SNB_READ_WM0_LATENCY()
  %17 = mul nsw i32 %16, 100
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @g4x_compute_wm0(%struct.drm_device* %18, i32 0, i32* @sandybridge_display_wm_info, i32 %19, i32* @sandybridge_cursor_wm_info, i32 %20, i32* %7, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %1
  %24 = load i32, i32* @WM0_PIPEA_ILK, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @WM0_PIPE_PLANE_MASK, align 4
  %27 = load i32, i32* @WM0_PIPE_CURSOR_MASK, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @WM0_PIPEA_ILK, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @WM0_PIPE_PLANE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %36, %37
  %39 = or i32 %33, %38
  %40 = call i32 @I915_WRITE(i32 %32, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %23, %1
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @g4x_compute_wm0(%struct.drm_device* %47, i32 1, i32* @sandybridge_display_wm_info, i32 %48, i32* @sandybridge_cursor_wm_info, i32 %49, i32* %7, i32* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load i32, i32* @WM0_PIPEB_ILK, align 4
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @WM0_PIPE_PLANE_MASK, align 4
  %56 = load i32, i32* @WM0_PIPE_CURSOR_MASK, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @WM0_PIPEB_ILK, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @WM0_PIPE_PLANE_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %65, %66
  %68 = or i32 %62, %67
  %69 = call i32 @I915_WRITE(i32 %61, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, 2
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %52, %46
  %76 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @g4x_compute_wm0(%struct.drm_device* %76, i32 2, i32* @sandybridge_display_wm_info, i32 %77, i32* @sandybridge_cursor_wm_info, i32 %78, i32* %7, i32* %8)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %75
  %82 = load i32, i32* @WM0_PIPEC_IVB, align 4
  %83 = call i32 @I915_READ(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @WM0_PIPE_PLANE_MASK, align 4
  %85 = load i32, i32* @WM0_PIPE_CURSOR_MASK, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @WM0_PIPEC_IVB, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @WM0_PIPE_PLANE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %94, %95
  %97 = or i32 %91, %96
  %98 = call i32 @I915_WRITE(i32 %90, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, 3
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %81, %75
  %105 = load i32, i32* @WM3_LP_ILK, align 4
  %106 = call i32 @I915_WRITE(i32 %105, i32 0)
  %107 = load i32, i32* @WM2_LP_ILK, align 4
  %108 = call i32 @I915_WRITE(i32 %107, i32 0)
  %109 = load i32, i32* @WM1_LP_ILK, align 4
  %110 = call i32 @I915_WRITE(i32 %109, i32 0)
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @single_plane_enabled(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %116 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %104
  br label %207

120:                                              ; preds = %114
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @ffs(i32 %121)
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  %124 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (...) @SNB_READ_WM1_LATENCY()
  %127 = mul nsw i32 %126, 500
  %128 = call i32 @ironlake_compute_srwm(%struct.drm_device* %124, i32 1, i32 %125, i32 %127, i32* @sandybridge_display_srwm_info, i32* @sandybridge_cursor_srwm_info, i32* %6, i32* %7, i32* %8)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %207

131:                                              ; preds = %120
  %132 = load i32, i32* @WM1_LP_ILK, align 4
  %133 = load i32, i32* @WM1_LP_SR_EN, align 4
  %134 = call i32 (...) @SNB_READ_WM1_LATENCY()
  %135 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = or i32 %133, %136
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = or i32 %137, %140
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = or i32 %141, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @I915_WRITE(i32 %132, i32 %147)
  %149 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (...) @SNB_READ_WM2_LATENCY()
  %152 = mul nsw i32 %151, 500
  %153 = call i32 @ironlake_compute_srwm(%struct.drm_device* %149, i32 2, i32 %150, i32 %152, i32* @sandybridge_display_srwm_info, i32* @sandybridge_cursor_srwm_info, i32* %6, i32* %7, i32* %8)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %131
  br label %207

156:                                              ; preds = %131
  %157 = load i32, i32* @WM2_LP_ILK, align 4
  %158 = load i32, i32* @WM2_LP_EN, align 4
  %159 = call i32 (...) @SNB_READ_WM2_LATENCY()
  %160 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = or i32 %158, %161
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = or i32 %162, %165
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %169 = shl i32 %167, %168
  %170 = or i32 %166, %169
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @I915_WRITE(i32 %157, i32 %172)
  %174 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 (...) @SNB_READ_WM3_LATENCY()
  %177 = mul nsw i32 %176, 500
  %178 = call i32 @ironlake_compute_srwm(%struct.drm_device* %174, i32 3, i32 %175, i32 %177, i32* @sandybridge_display_srwm_info, i32* @sandybridge_cursor_srwm_info, i32* %6, i32* %7, i32* %11)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %156
  %181 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (...) @SNB_READ_WM3_LATENCY()
  %184 = mul nsw i32 2, %183
  %185 = mul nsw i32 %184, 500
  %186 = call i32 @ironlake_compute_srwm(%struct.drm_device* %181, i32 3, i32 %182, i32 %185, i32* @sandybridge_display_srwm_info, i32* @sandybridge_cursor_srwm_info, i32* %9, i32* %10, i32* %8)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %180, %156
  br label %207

189:                                              ; preds = %180
  %190 = load i32, i32* @WM3_LP_ILK, align 4
  %191 = load i32, i32* @WM3_LP_EN, align 4
  %192 = call i32 (...) @SNB_READ_WM3_LATENCY()
  %193 = load i32, i32* @WM1_LP_LATENCY_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = or i32 %191, %194
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @WM1_LP_FBC_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = or i32 %195, %198
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @WM1_LP_SR_SHIFT, align 4
  %202 = shl i32 %200, %201
  %203 = or i32 %199, %202
  %204 = load i32, i32* %8, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @I915_WRITE(i32 %190, i32 %205)
  br label %207

207:                                              ; preds = %189, %188, %155, %130, %119
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
