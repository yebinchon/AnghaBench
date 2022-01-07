; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_disable_ddi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_disable_ddi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { %struct.drm_device*, %struct.drm_crtc* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_dp = type { i32 }

@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@HSW_AUD_PIN_ELD_CP_VLD = common dso_local global i32 0, align 4
@AUDIO_OUTPUT_ENABLE_A = common dso_local global i32 0, align 4
@AUDIO_ELD_VALID_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_disable_ddi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_ddi(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 1
  store %struct.drm_encoder* %13, %struct.drm_encoder** %3, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %15, align 8
  store %struct.drm_crtc* %16, %struct.drm_crtc** %4, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %5, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %23 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %26 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %25, i32 0, i32 0
  %27 = load %struct.drm_device*, %struct.drm_device** %26, align 8
  store %struct.drm_device* %27, %struct.drm_device** %8, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %29, align 8
  store %struct.drm_i915_private* %30, %struct.drm_i915_private** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %36 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %35)
  store %struct.intel_dp* %36, %struct.intel_dp** %11, align 8
  %37 = load %struct.intel_dp*, %struct.intel_dp** %11, align 8
  %38 = call i32 @ironlake_edp_backlight_off(%struct.intel_dp* %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load i32, i32* @HSW_AUD_PIN_ELD_CP_VLD, align 4
  %41 = call i32 @I915_READ(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @AUDIO_OUTPUT_ENABLE_A, align 4
  %43 = load i32, i32* @AUDIO_ELD_VALID_A, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 4
  %47 = shl i32 %44, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @HSW_AUD_PIN_ELD_CP_VLD, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @I915_WRITE(i32 %51, i32 %52)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local i32 @ironlake_edp_backlight_off(%struct.intel_dp*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
