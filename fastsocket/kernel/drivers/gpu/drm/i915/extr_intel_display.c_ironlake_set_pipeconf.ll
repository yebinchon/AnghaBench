; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_set_pipeconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_set_pipeconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32, i32 }
%struct.intel_crtc = type { i32, i32 }

@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@PIPECONF_6BPC = common dso_local global i32 0, align 4
@PIPECONF_8BPC = common dso_local global i32 0, align 4
@PIPECONF_10BPC = common dso_local global i32 0, align 4
@PIPECONF_12BPC = common dso_local global i32 0, align 4
@PIPECONF_DITHER_EN = common dso_local global i32 0, align 4
@PIPECONF_DITHER_TYPE_MASK = common dso_local global i32 0, align 4
@PIPECONF_DITHER_TYPE_SP = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@PIPECONF_INTERLACED_ILK = common dso_local global i32 0, align 4
@PIPECONF_PROGRESSIVE = common dso_local global i32 0, align 4
@INTEL_MODE_LIMITED_COLOR_RANGE = common dso_local global i32 0, align 4
@PIPECONF_COLOR_RANGE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, i32)* @ironlake_set_pipeconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_set_pipeconf(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %7, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %8, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @PIPECONF(i32 %21)
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %47 [
    i32 18, label %31
    i32 24, label %35
    i32 30, label %39
    i32 36, label %43
  ]

31:                                               ; preds = %3
  %32 = load i32, i32* @PIPECONF_6BPC, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %49

35:                                               ; preds = %3
  %36 = load i32, i32* @PIPECONF_8BPC, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %49

39:                                               ; preds = %3
  %40 = load i32, i32* @PIPECONF_10BPC, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %49

43:                                               ; preds = %3
  %44 = load i32, i32* @PIPECONF_12BPC, align 4
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %49

47:                                               ; preds = %3
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %43, %39, %35, %31
  %50 = load i32, i32* @PIPECONF_DITHER_EN, align 4
  %51 = load i32, i32* @PIPECONF_DITHER_TYPE_MASK, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @PIPECONF_DITHER_EN, align 4
  %60 = load i32, i32* @PIPECONF_DITHER_TYPE_SP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %58, %49
  %65 = load i32, i32* @PIPECONF_INTERLACE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i32, i32* @PIPECONF_INTERLACED_ILK, align 4
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %10, align 4
  br label %83

79:                                               ; preds = %64
  %80 = load i32, i32* @PIPECONF_PROGRESSIVE, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @INTEL_MODE_LIMITED_COLOR_RANGE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @PIPECONF_COLOR_RANGE_SELECT, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %99

94:                                               ; preds = %83
  %95 = load i32, i32* @PIPECONF_COLOR_RANGE_SELECT, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @PIPECONF(i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @I915_WRITE(i32 %101, i32 %102)
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @PIPECONF(i32 %104)
  %106 = call i32 @POSTING_READ(i32 %105)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
