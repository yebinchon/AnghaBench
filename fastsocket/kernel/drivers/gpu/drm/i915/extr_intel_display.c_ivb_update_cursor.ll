; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ivb_update_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ivb_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32 }

@CURSOR_MODE = common dso_local global i32 0, align 4
@CURSOR_MODE_64_ARGB_AX = common dso_local global i32 0, align 4
@MCURSOR_GAMMA_ENABLE = common dso_local global i32 0, align 4
@CURSOR_MODE_DISABLE = common dso_local global i32 0, align 4
@CURSOR_PIPE_CSC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @ivb_update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_update_cursor(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %7, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @CURCNTR_IVB(i32 %31)
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32, i32* @CURSOR_MODE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @CURSOR_MODE_64_ARGB_AX, align 4
  %42 = load i32, i32* @MCURSOR_GAMMA_ENABLE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %10, align 4
  br label %56

46:                                               ; preds = %30
  %47 = load i32, i32* @CURSOR_MODE, align 4
  %48 = load i32, i32* @MCURSOR_GAMMA_ENABLE, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @CURSOR_MODE_DISABLE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %46, %36
  %57 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %58 = call i64 @IS_HASWELL(%struct.drm_device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @CURSOR_PIPE_CSC_ENABLE, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @CURCNTR_IVB(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @I915_WRITE(i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %71 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %2
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @CURBASE_IVB(i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @I915_WRITE(i32 %74, i32 %75)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CURCNTR_IVB(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CURBASE_IVB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
