; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_enable_pch_transcoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_enable_pch_transcoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.drm_device*, %struct.TYPE_4__*, %struct.drm_crtc** }
%struct.drm_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.TYPE_5__ = type { i32 }

@TRANS_CHICKEN2_TIMING_OVERRIDE = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@TRANS_INTERLACE_MASK = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK = common dso_local global i32 0, align 4
@PIPECONF_INTERLACED_ILK = common dso_local global i32 0, align 4
@INTEL_OUTPUT_SDVO = common dso_local global i32 0, align 4
@TRANS_LEGACY_INTERLACED_ILK = common dso_local global i32 0, align 4
@TRANS_INTERLACED = common dso_local global i32 0, align 4
@TRANS_PROGRESSIVE = common dso_local global i32 0, align 4
@TRANS_ENABLE = common dso_local global i32 0, align 4
@TRANS_STATE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to enable transcoder %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @ironlake_enable_pch_transcoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_enable_pch_transcoder(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 2
  %15 = load %struct.drm_crtc**, %struct.drm_crtc*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %15, i64 %17
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  store %struct.drm_crtc* %19, %struct.drm_crtc** %6, align 8
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 5
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %30 = call %struct.TYPE_5__* @to_intel_crtc(%struct.drm_crtc* %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %34 = call %struct.TYPE_5__* @to_intel_crtc(%struct.drm_crtc* %33)
  %35 = call i32 @assert_pch_pll_enabled(%struct.drm_i915_private* %28, i32 %32, %struct.TYPE_5__* %34)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @assert_fdi_tx_enabled(%struct.drm_i915_private* %36, i32 %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @assert_fdi_rx_enabled(%struct.drm_i915_private* %39, i32 %40)
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = call i64 @HAS_PCH_CPT(%struct.drm_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @TRANS_CHICKEN2(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @I915_READ(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @TRANS_CHICKEN2_TIMING_OVERRIDE, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @I915_WRITE(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %45, %2
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @TRANSCONF(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @I915_READ(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @PIPECONF(i32 %61)
  %63 = call i32 @I915_READ(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = load %struct.drm_device*, %struct.drm_device** %65, align 8
  %67 = call i64 @HAS_PCH_IBX(%struct.drm_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %56
  %70 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %69, %56
  %80 = load i32, i32* @TRANS_INTERLACE_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @PIPECONF_INTERLACE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @PIPECONF_INTERLACED_ILK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %79
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = load %struct.drm_device*, %struct.drm_device** %91, align 8
  %93 = call i64 @HAS_PCH_IBX(%struct.drm_device* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %97 = load i32, i32* @INTEL_OUTPUT_SDVO, align 4
  %98 = call i64 @intel_pipe_has_type(%struct.drm_crtc* %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @TRANS_LEGACY_INTERLACED_ILK, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %108

104:                                              ; preds = %95, %89
  %105 = load i32, i32* @TRANS_INTERLACED, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %113

109:                                              ; preds = %79
  %110 = load i32, i32* @TRANS_PROGRESSIVE, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @TRANS_ENABLE, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @I915_WRITE(i32 %114, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @I915_READ(i32 %119)
  %121 = load i32, i32* @TRANS_STATE_ENABLE, align 4
  %122 = and i32 %120, %121
  %123 = call i64 @wait_for(i32 %122, i32 100)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %113
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_pch_pll_enabled(%struct.drm_i915_private*, i32, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @assert_fdi_tx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @TRANS_CHICKEN2(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @TRANSCONF(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i64 @intel_pipe_has_type(%struct.drm_crtc*, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
