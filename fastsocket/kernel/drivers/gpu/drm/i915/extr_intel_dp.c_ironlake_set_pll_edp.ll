; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_set_pll_edp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_set_pll_edp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"eDP PLL enable for clock %d\0A\00", align 1
@DP_A = common dso_local global i32 0, align 4
@DP_PLL_FREQ_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"160MHz cpu eDP clock, might need ilk devA w/a\0A\00", align 1
@DP_PLL_FREQ_160MHZ = common dso_local global i32 0, align 4
@DP_PLL_FREQ_270MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @ironlake_set_pll_edp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_set_pll_edp(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @DP_A, align 4
  %17 = call i32 @I915_READ(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @DP_PLL_FREQ_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 200000
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @DP_PLL_FREQ_160MHZ, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @DP_PLL_FREQ_270MHZ, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* @DP_A, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @I915_WRITE(i32 %34, i32 %35)
  %37 = load i32, i32* @DP_A, align 4
  %38 = call i32 @POSTING_READ(i32 %37)
  %39 = call i32 @udelay(i32 500)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
