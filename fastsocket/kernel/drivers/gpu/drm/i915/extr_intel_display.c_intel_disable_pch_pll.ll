; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_disable_pch_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_disable_pch_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_8__, %struct.intel_pch_pll* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_pch_pll = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"disable PCH PLL %x (active %d, on? %d) for crtc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"disabling PCH PLL %x\0A\00", align 1
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @intel_disable_pch_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_pch_pll(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_pch_pll*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %7 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 2
  %15 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %14, align 8
  store %struct.intel_pch_pll* %15, %struct.intel_pch_pll** %4, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 5
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %25 = icmp eq %struct.intel_pch_pll* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %100

27:                                               ; preds = %1
  %28 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %29 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %100

36:                                               ; preds = %27
  %37 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %38 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %41 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %44 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %47 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42, i32 %45, i32 %50)
  %52 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %53 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @WARN_ON(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %36
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %62 = call i32 @assert_pch_pll_disabled(%struct.drm_i915_private* %60, %struct.intel_pch_pll* %61, i32* null)
  br label %100

63:                                               ; preds = %36
  %64 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %65 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %71 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %72 = call i32 @assert_pch_pll_enabled(%struct.drm_i915_private* %70, %struct.intel_pch_pll* %71, i32* null)
  br label %100

73:                                               ; preds = %63
  %74 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %75 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %80 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @assert_transcoder_disabled(%struct.drm_i915_private* %78, i32 %81)
  %83 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %84 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @I915_READ(i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @I915_WRITE(i32 %92, i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @POSTING_READ(i32 %95)
  %97 = call i32 @udelay(i32 200)
  %98 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %4, align 8
  %99 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %98, i32 0, i32 3
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %73, %69, %59, %35, %26
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @assert_pch_pll_disabled(%struct.drm_i915_private*, %struct.intel_pch_pll*, i32*) #1

declare dso_local i32 @assert_pch_pll_enabled(%struct.drm_i915_private*, %struct.intel_pch_pll*, i32*) #1

declare dso_local i32 @assert_transcoder_disabled(%struct.drm_i915_private*, i32) #1

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
