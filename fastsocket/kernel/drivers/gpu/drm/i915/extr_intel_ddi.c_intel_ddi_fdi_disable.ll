; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_fdi_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_fdi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_encoder = type { i32 }

@_FDI_RXA_CTL = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@_FDI_RXA_MISC = common dso_local global i32 0, align 4
@FDI_RX_PWRDN_LANE1_MASK = common dso_local global i32 0, align 4
@FDI_RX_PWRDN_LANE0_MASK = common dso_local global i32 0, align 4
@FDI_PCDCLK = common dso_local global i32 0, align 4
@FDI_RX_PLL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_ddi_fdi_disable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %3, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc* %11)
  store %struct.intel_encoder* %12, %struct.intel_encoder** %4, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = call i32 @intel_ddi_post_disable(%struct.intel_encoder* %13)
  %15 = load i32, i32* @_FDI_RXA_CTL, align 4
  %16 = call i32 @I915_READ(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @FDI_RX_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @_FDI_RXA_CTL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @I915_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* @_FDI_RXA_MISC, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @FDI_RX_PWRDN_LANE1_MASK, align 4
  %27 = load i32, i32* @FDI_RX_PWRDN_LANE0_MASK, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = call i32 @FDI_RX_PWRDN_LANE1_VAL(i32 2)
  %33 = call i32 @FDI_RX_PWRDN_LANE0_VAL(i32 2)
  %34 = or i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @_FDI_RXA_MISC, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @I915_WRITE(i32 %37, i32 %38)
  %40 = load i32, i32* @_FDI_RXA_CTL, align 4
  %41 = call i32 @I915_READ(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @FDI_PCDCLK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @_FDI_RXA_CTL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @I915_WRITE(i32 %46, i32 %47)
  %49 = load i32, i32* @_FDI_RXA_CTL, align 4
  %50 = call i32 @I915_READ(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @FDI_RX_PLL_ENABLE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @_FDI_RXA_CTL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @I915_WRITE(i32 %55, i32 %56)
  ret void
}

declare dso_local %struct.intel_encoder* @intel_ddi_get_crtc_encoder(%struct.drm_crtc*) #1

declare dso_local i32 @intel_ddi_post_disable(%struct.intel_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FDI_RX_PWRDN_LANE1_VAL(i32) #1

declare dso_local i32 @FDI_RX_PWRDN_LANE0_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
