; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i845_update_cursor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_i845_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@_CURACNTR = common dso_local global i32 0, align 4
@_CURABASE = common dso_local global i32 0, align 4
@CURSOR_FORMAT_MASK = common dso_local global i64 0, align 8
@CURSOR_ENABLE = common dso_local global i64 0, align 8
@CURSOR_GAMMA_ENABLE = common dso_local global i64 0, align 8
@CURSOR_FORMAT_ARGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i64)* @i845_update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i845_update_cursor(%struct.drm_crtc* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %61

27:                                               ; preds = %2
  %28 = load i32, i32* @_CURACNTR, align 4
  %29 = call i64 @I915_READ(i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32, i32* @_CURABASE, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @I915_WRITE(i32 %33, i64 %34)
  %36 = load i64, i64* @CURSOR_FORMAT_MASK, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, i64* %9, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* @CURSOR_ENABLE, align 8
  %41 = load i64, i64* @CURSOR_GAMMA_ENABLE, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @CURSOR_FORMAT_ARGB, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* %9, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %9, align 8
  br label %54

47:                                               ; preds = %27
  %48 = load i64, i64* @CURSOR_ENABLE, align 8
  %49 = load i64, i64* @CURSOR_GAMMA_ENABLE, align 8
  %50 = or i64 %48, %49
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %9, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %47, %32
  %55 = load i32, i32* @_CURACNTR, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @I915_WRITE(i32 %55, i64 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %60 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %26
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
