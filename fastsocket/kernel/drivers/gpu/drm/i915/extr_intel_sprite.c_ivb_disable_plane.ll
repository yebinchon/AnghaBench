; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_disable_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ivb_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_plane = type { i32, i64 }

@SPRITE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @ivb_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_disable_plane(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_plane*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %14)
  store %struct.intel_plane* %15, %struct.intel_plane** %5, align 8
  %16 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %17 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SPRCTL(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SPRCTL(i32 %24)
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @SPRITE_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @I915_WRITE(i32 %23, i32 %29)
  %31 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %32 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SPRSCALE(i32 %36)
  %38 = call i32 @I915_WRITE(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @SPRSURF(i32 %40)
  %42 = call i32 @I915_MODIFY_DISPBASE(i32 %41, i32 0)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @SPRSURF(i32 %43)
  %45 = call i32 @POSTING_READ(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %39
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = call i32 @intel_update_watermarks(%struct.drm_device* %61)
  br label %63

63:                                               ; preds = %60, %55, %39
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @SPRCTL(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @SPRSCALE(i32) #1

declare dso_local i32 @I915_MODIFY_DISPBASE(i32, i32) #1

declare dso_local i32 @SPRSURF(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_update_watermarks(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
