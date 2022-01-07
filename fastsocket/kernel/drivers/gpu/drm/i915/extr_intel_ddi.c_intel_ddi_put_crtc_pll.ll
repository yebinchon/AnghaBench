; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_put_crtc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_put_crtc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.intel_ddi_plls }
%struct.intel_ddi_plls = type { i64, i64, i64 }
%struct.intel_crtc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Disabling SPLL\0A\00", align 1
@SPLL_CTL = common dso_local global i32 0, align 4
@SPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Disabling WRPLL 1\0A\00", align 1
@WRPLL_CTL1 = common dso_local global i32 0, align 4
@WRPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Disabling WRPLL 2\0A\00", align 1
@WRPLL_CTL2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid SPLL refcount\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid WRPLL1 refcount\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid WRPLL2 refcount\0A\00", align 1
@PORT_CLK_SEL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_put_crtc_pll(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_ddi_plls*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  store %struct.intel_ddi_plls* %13, %struct.intel_ddi_plls** %4, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %14)
  store %struct.intel_crtc* %15, %struct.intel_crtc** %5, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %106 [
    i32 130, label %19
    i32 129, label %48
    i32 128, label %77
  ]

19:                                               ; preds = %1
  %20 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %21 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %25 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @SPLL_CTL, align 4
  %31 = call i32 @I915_READ(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SPLL_PLL_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load i32, i32* @SPLL_CTL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SPLL_PLL_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @I915_WRITE(i32 %39, i32 %43)
  %45 = load i32, i32* @SPLL_CTL, align 4
  %46 = call i32 @POSTING_READ(i32 %45)
  br label %47

47:                                               ; preds = %28, %19
  br label %106

48:                                               ; preds = %1
  %49 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %50 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %54 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %48
  %58 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @WRPLL_CTL1, align 4
  %60 = call i32 @I915_READ(i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load i32, i32* @WRPLL_CTL1, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @I915_WRITE(i32 %68, i32 %72)
  %74 = load i32, i32* @WRPLL_CTL1, align 4
  %75 = call i32 @POSTING_READ(i32 %74)
  br label %76

76:                                               ; preds = %57, %48
  br label %106

77:                                               ; preds = %1
  %78 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %79 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %83 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %77
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @WRPLL_CTL2, align 4
  %89 = call i32 @I915_READ(i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load i32, i32* @WRPLL_CTL2, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @WRPLL_PLL_ENABLE, align 4
  %100 = xor i32 %99, -1
  %101 = and i32 %98, %100
  %102 = call i32 @I915_WRITE(i32 %97, i32 %101)
  %103 = load i32, i32* @WRPLL_CTL2, align 4
  %104 = call i32 @POSTING_READ(i32 %103)
  br label %105

105:                                              ; preds = %86, %77
  br label %106

106:                                              ; preds = %1, %105, %76, %47
  %107 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %108 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @WARN(i32 %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %114 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @WARN(i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.intel_ddi_plls*, %struct.intel_ddi_plls** %4, align 8
  %120 = getelementptr inbounds %struct.intel_ddi_plls, %struct.intel_ddi_plls* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @WARN(i32 %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @PORT_CLK_SEL_NONE, align 4
  %126 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %127 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
