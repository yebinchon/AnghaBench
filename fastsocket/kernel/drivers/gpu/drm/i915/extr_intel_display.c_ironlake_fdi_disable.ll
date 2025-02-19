; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_fdi_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_fdi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_PHASE_SYNC_POINTER_OVR = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_MASK_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_CPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ironlake_fdi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_fdi_disable(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %15)
  store %struct.intel_crtc* %16, %struct.intel_crtc** %5, align 8
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @FDI_TX_CTL(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @FDI_TX_ENABLE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @I915_WRITE(i32 %24, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @POSTING_READ(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @FDI_RX_CTL(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, -458753
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @PIPECONF(i32 %38)
  %40 = call i32 @I915_READ(i32 %39)
  %41 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %42 = and i32 %40, %41
  %43 = shl i32 %42, 11
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @FDI_RX_ENABLE, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @I915_WRITE(i32 %46, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @POSTING_READ(i32 %52)
  %54 = call i32 @udelay(i32 100)
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = call i64 @HAS_PCH_IBX(%struct.drm_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %1
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @FDI_RX_CHICKEN(i32 %59)
  %61 = load i32, i32* @FDI_RX_PHASE_SYNC_POINTER_OVR, align 4
  %62 = call i32 @I915_WRITE(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %1
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @FDI_TX_CTL(i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @I915_READ(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @I915_WRITE(i32 %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @FDI_RX_CTL(i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @I915_READ(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = call i64 @HAS_PCH_CPT(%struct.drm_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %63
  %86 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_CPT, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %101

93:                                               ; preds = %63
  %94 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %93, %85
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, -458753
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @PIPECONF(i32 %104)
  %106 = call i32 @I915_READ(i32 %105)
  %107 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %108 = and i32 %106, %107
  %109 = shl i32 %108, 11
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @I915_WRITE(i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @POSTING_READ(i32 %115)
  %117 = call i32 @udelay(i32 100)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i32 @FDI_RX_CHICKEN(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
