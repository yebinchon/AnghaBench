; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_pch_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_pch_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_pch_pll = type { i32 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"LPT detected: skipping PCH PLL test\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"asserting PCH PLL %s with no PLL\0A\00", align 1
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"PCH PLL state for reg %x assertion failure (expected %s, current %s), val=%08x\0A\00", align 1
@PCH_DPLL_SEL = common dso_local global i32 0, align 4
@_PCH_DPLL_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"PLL[%d] not attached to this transcoder %d: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"PLL[%d] not %s on this transcoder %d: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_pch_pll*, %struct.intel_crtc*, i32)* @assert_pch_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_pch_pll(%struct.drm_i915_private* %0, %struct.intel_pch_pll* %1, %struct.intel_crtc* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_pch_pll*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_pch_pll* %1, %struct.intel_pch_pll** %6, align 8
  store %struct.intel_crtc* %2, %struct.intel_crtc** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @HAS_PCH_LPT(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %118

19:                                               ; preds = %4
  %20 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %6, align 8
  %21 = icmp ne %struct.intel_pch_pll* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @state_string(i32 %24)
  %26 = call i32 (i32, i8*, i32, ...) @WARN(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %118

29:                                               ; preds = %19
  %30 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %6, align 8
  %31 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %6, align 8
  %46 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @state_string(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @state_string(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32, i8*, i32, ...) @WARN(i32 %44, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %49, i32 %51, i32 %52)
  %54 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %55 = icmp ne %struct.intel_crtc* %54, null
  br i1 %55, label %56, label %118

56:                                               ; preds = %29
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @HAS_PCH_CPT(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %118

62:                                               ; preds = %56
  %63 = load i32, i32* @PCH_DPLL_SEL, align 4
  %64 = call i32 @I915_READ(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %6, align 8
  %66 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @_PCH_DPLL_B, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %73 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 4, %74
  %76 = ashr i32 %71, %75
  %77 = and i32 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %83 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i32, i8*, i32, ...) @WARN(i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %117, label %88

88:                                               ; preds = %62
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %91 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 4, %92
  %94 = add nsw i32 %93, 3
  %95 = ashr i32 %89, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %6, align 8
  %105 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @_PCH_DPLL_B, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @state_string(i32 %110)
  %112 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %113 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, i32, ...) @WARN(i32 %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %111, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %88, %62
  br label %118

118:                                              ; preds = %17, %28, %117, %56, %29
  ret void
}

declare dso_local i64 @HAS_PCH_LPT(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @state_string(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_CPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
