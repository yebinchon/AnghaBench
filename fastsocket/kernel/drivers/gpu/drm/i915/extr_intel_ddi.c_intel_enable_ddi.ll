; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_enable_ddi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_enable_ddi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { %struct.drm_device*, %struct.drm_crtc* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_crtc = type { i32, i64 }
%struct.intel_digital_port = type { i32 }
%struct.intel_dp = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@HSW_AUD_PIN_ELD_CP_VLD = common dso_local global i32 0, align 4
@AUDIO_OUTPUT_ENABLE_A = common dso_local global i32 0, align 4
@AUDIO_ELD_VALID_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_enable_ddi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_ddi(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_digital_port*, align 8
  %13 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 1
  store %struct.drm_encoder* %15, %struct.drm_encoder** %3, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 1
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  store %struct.drm_crtc* %18, %struct.drm_crtc** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %5, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 0
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %7, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %28, align 8
  store %struct.drm_i915_private* %29, %struct.drm_i915_private** %8, align 8
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %31 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %33 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %1
  %39 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %40 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder* %39)
  store %struct.intel_digital_port* %40, %struct.intel_digital_port** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @DDI_BUF_CTL(i32 %41)
  %43 = load %struct.intel_digital_port*, %struct.intel_digital_port** %12, align 8
  %44 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @I915_WRITE(i32 %42, i32 %47)
  br label %59

49:                                               ; preds = %1
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %55 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %54)
  store %struct.intel_dp* %55, %struct.intel_dp** %13, align 8
  %56 = load %struct.intel_dp*, %struct.intel_dp** %13, align 8
  %57 = call i32 @ironlake_edp_backlight_on(%struct.intel_dp* %56)
  br label %58

58:                                               ; preds = %53, %49
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %61 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load i32, i32* @HSW_AUD_PIN_ELD_CP_VLD, align 4
  %66 = call i32 @I915_READ(i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* @AUDIO_OUTPUT_ENABLE_A, align 4
  %68 = load i32, i32* @AUDIO_ELD_VALID_A, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 4
  %72 = shl i32 %69, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @HSW_AUD_PIN_ELD_CP_VLD, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @I915_WRITE(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %64, %59
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local i32 @ironlake_edp_backlight_on(%struct.intel_dp*) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
