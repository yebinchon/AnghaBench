; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_pre_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_pre_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { %struct.TYPE_2__*, %struct.drm_crtc* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_crtc = type { i64 }
%struct.intel_dp = type { i32 }

@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@PORT_CLK_SEL_NONE = common dso_local global i64 0, align 8
@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_ddi_pre_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_pre_enable(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_dp*, align 8
  %10 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 1
  store %struct.drm_encoder* %12, %struct.drm_encoder** %3, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %13, i32 0, i32 1
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %15, %struct.drm_crtc** %4, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %5, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %22 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %21)
  store %struct.intel_crtc* %22, %struct.intel_crtc** %6, align 8
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %24 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %26 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %33 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %32)
  store %struct.intel_dp* %33, %struct.intel_dp** %9, align 8
  %34 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %35 = call i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp* %34)
  %36 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %37 = call i32 @ironlake_edp_panel_on(%struct.intel_dp* %36)
  %38 = load %struct.intel_dp*, %struct.intel_dp** %9, align 8
  %39 = call i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp* %38, i32 1)
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PORT_CLK_SEL_NONE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PORT_CLK_SEL(i32 %48)
  %50 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %51 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @I915_WRITE(i32 %49, i64 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57, %40
  %62 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %63 = call %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder* %62)
  store %struct.intel_dp* %63, %struct.intel_dp** %10, align 8
  %64 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %65 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %66 = call i32 @intel_dp_sink_dpms(%struct.intel_dp* %64, i32 %65)
  %67 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %68 = call i32 @intel_dp_start_link_train(%struct.intel_dp* %67)
  %69 = load %struct.intel_dp*, %struct.intel_dp** %10, align 8
  %70 = call i32 @intel_dp_complete_link_train(%struct.intel_dp* %69)
  br label %71

71:                                               ; preds = %61, %57
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local %struct.intel_dp* @enc_to_intel_dp(%struct.drm_encoder*) #1

declare dso_local i32 @ironlake_edp_panel_vdd_on(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_panel_on(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_panel_vdd_off(%struct.intel_dp*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @I915_WRITE(i32, i64) #1

declare dso_local i32 @PORT_CLK_SEL(i32) #1

declare dso_local i32 @intel_dp_sink_dpms(%struct.intel_dp*, i32) #1

declare dso_local i32 @intel_dp_start_link_train(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_complete_link_train(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
