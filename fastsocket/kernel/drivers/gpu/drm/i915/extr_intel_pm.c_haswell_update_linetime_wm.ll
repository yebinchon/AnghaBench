; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_haswell_update_linetime_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_haswell_update_linetime_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@PIPE_WM_LINETIME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, %struct.drm_display_mode*)* @haswell_update_linetime_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_update_linetime_wm(%struct.drm_device* %0, i32 %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @PIPE_WM_LINETIME(i32 %12)
  %14 = call i32 @I915_READ(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @PIPE_WM_LINETIME_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  %27 = mul nsw i32 %26, 8
  %28 = call i32 @PIPE_WM_LINETIME_TIME(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @PIPE_WM_LINETIME(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @I915_WRITE(i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPE_WM_LINETIME(i32) #1

declare dso_local i32 @PIPE_WM_LINETIME_TIME(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
