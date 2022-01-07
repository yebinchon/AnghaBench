; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_lpt_enable_pch_transcoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_lpt_enable_pch_transcoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TRANSCODER_A = common dso_local global i32 0, align 4
@_TRANSA_CHICKEN2 = common dso_local global i32 0, align 4
@TRANS_CHICKEN2_TIMING_OVERRIDE = common dso_local global i32 0, align 4
@TRANS_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK_HSW = common dso_local global i32 0, align 4
@PIPECONF_INTERLACED_ILK = common dso_local global i32 0, align 4
@TRANS_INTERLACED = common dso_local global i32 0, align 4
@TRANS_PROGRESSIVE = common dso_local global i32 0, align 4
@_TRANSACONF = common dso_local global i32 0, align 4
@TRANS_STATE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to enable PCH transcoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @lpt_enable_pch_transcoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_enable_pch_transcoder(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 5
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @assert_fdi_tx_enabled(%struct.drm_i915_private* %15, i32 %16)
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = load i32, i32* @TRANSCODER_A, align 4
  %20 = call i32 @assert_fdi_rx_enabled(%struct.drm_i915_private* %18, i32 %19)
  %21 = load i32, i32* @_TRANSA_CHICKEN2, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @TRANS_CHICKEN2_TIMING_OVERRIDE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @_TRANSA_CHICKEN2, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @I915_WRITE(i32 %26, i32 %27)
  %29 = load i32, i32* @TRANS_ENABLE, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @PIPECONF(i32 %30)
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PIPECONF_INTERLACE_MASK_HSW, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @PIPECONF_INTERLACED_ILK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @TRANS_INTERLACED, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %46

42:                                               ; preds = %2
  %43 = load i32, i32* @TRANS_PROGRESSIVE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @TRANSCODER_A, align 4
  %48 = call i32 @TRANSCONF(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @I915_WRITE(i32 %48, i32 %49)
  %51 = load i32, i32* @_TRANSACONF, align 4
  %52 = call i32 @I915_READ(i32 %51)
  %53 = load i32, i32* @TRANS_STATE_ENABLE, align 4
  %54 = and i32 %52, %53
  %55 = call i64 @wait_for(i32 %54, i32 100)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_fdi_tx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @TRANSCONF(i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
