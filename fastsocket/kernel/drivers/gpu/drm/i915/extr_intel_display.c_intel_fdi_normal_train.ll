; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_fdi_normal_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_fdi_normal_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@FDI_LINK_TRAIN_NONE_IVB = common dso_local global i32 0, align 4
@FDI_TX_ENHANCE_FRAME_ENABLE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_MASK_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NORMAL_CPT = common dso_local global i32 0, align 4
@FDI_RX_ENHANCE_FRAME_ENABLE = common dso_local global i32 0, align 4
@FDI_FS_ERRC_ENABLE = common dso_local global i32 0, align 4
@FDI_FE_ERRC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @intel_fdi_normal_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fdi_normal_train(%struct.drm_crtc* %0) #0 {
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
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %33 = load i32, i32* @FDI_TX_ENHANCE_FRAME_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %47

37:                                               ; preds = %1
  %38 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %43 = load i32, i32* @FDI_TX_ENHANCE_FRAME_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %37, %27
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @I915_WRITE(i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @FDI_RX_CTL(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = call i64 @HAS_PCH_CPT(%struct.drm_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @FDI_LINK_TRAIN_NORMAL_CPT, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %74

66:                                               ; preds = %47
  %67 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %66, %58
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @FDI_RX_ENHANCE_FRAME_ENABLE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @I915_WRITE(i32 %75, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @POSTING_READ(i32 %80)
  %82 = call i32 @udelay(i32 1000)
  %83 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %84 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %74
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @I915_READ(i32 %88)
  %90 = load i32, i32* @FDI_FS_ERRC_ENABLE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @FDI_FE_ERRC_ENABLE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @I915_WRITE(i32 %87, i32 %93)
  br label %95

95:                                               ; preds = %86, %74
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
