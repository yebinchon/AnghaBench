; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_g4x_fixup_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_g4x_fixup_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@CURSOR_MODE = common dso_local global i32 0, align 4
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN = common dso_local global i32 0, align 4
@CURSOR_MODE_64_ARGB_AX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @g4x_fixup_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_fixup_plane(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @CURCNTR(i32 %7)
  %9 = call i32 @I915_READ(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CURSOR_MODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load i32, i32* @FW_BLC_SELF, align 4
  %16 = call i32 @I915_READ(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @FW_BLC_SELF, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 @I915_WRITE(i32 %17, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CURCNTR(i32 %23)
  %25 = load i32, i32* @CURSOR_MODE_64_ARGB_AX, align 4
  %26 = call i32 @I915_WRITE(i32 %24, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @intel_wait_for_vblank(i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @CURCNTR(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @I915_WRITE(i32 %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @CURBASE(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CURBASE(i32 %38)
  %40 = call i32 @I915_READ(i32 %39)
  %41 = call i32 @I915_WRITE(i32 %37, i32 %40)
  %42 = load i32, i32* @FW_BLC_SELF, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @I915_WRITE(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CURCNTR(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_wait_for_vblank(i32, i32) #1

declare dso_local i32 @CURBASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
