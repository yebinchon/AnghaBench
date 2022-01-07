; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_fdi_pll_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_fdi_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@FDI_RX_PLL_ENABLE = common dso_local global i32 0, align 4
@FDI_PCDCLK = common dso_local global i32 0, align 4
@FDI_TX_PLL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @ironlake_fdi_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_fdi_pll_enable(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %8 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FDI_RX_CTL(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @I915_READ(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, -4128769
  store i32 %23, i32* %7, align 4
  %24 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %25 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 %27, 19
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @PIPECONF(i32 %31)
  %33 = call i32 @I915_READ(i32 %32)
  %34 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %35 = and i32 %33, %34
  %36 = shl i32 %35, 11
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FDI_RX_PLL_ENABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @I915_WRITE(i32 %39, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @POSTING_READ(i32 %44)
  %46 = call i32 @udelay(i32 200)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @I915_READ(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @FDI_PCDCLK, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @I915_WRITE(i32 %49, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @POSTING_READ(i32 %54)
  %56 = call i32 @udelay(i32 200)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @FDI_TX_CTL(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @I915_READ(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @FDI_TX_PLL_ENABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %1
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @FDI_TX_PLL_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @I915_WRITE(i32 %66, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @POSTING_READ(i32 %71)
  %73 = call i32 @udelay(i32 100)
  br label %74

74:                                               ; preds = %65, %1
  ret void
}

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
