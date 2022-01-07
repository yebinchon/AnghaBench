; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ilk_disable_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_ilk_disable_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_plane = type { i32 }

@DVS_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @ilk_disable_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_disable_plane(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_plane*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %14 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %13)
  store %struct.intel_plane* %14, %struct.intel_plane** %5, align 8
  %15 = load %struct.intel_plane*, %struct.intel_plane** %5, align 8
  %16 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DVSCNTR(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @DVSCNTR(i32 %20)
  %22 = call i32 @I915_READ(i32 %21)
  %23 = load i32, i32* @DVS_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @I915_WRITE(i32 %19, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @DVSSCALE(i32 %27)
  %29 = call i32 @I915_WRITE(i32 %28, i32 0)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DVSSURF(i32 %30)
  %32 = call i32 @I915_MODIFY_DISPBASE(i32 %31, i32 0)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DVSSURF(i32 %33)
  %35 = call i32 @POSTING_READ(i32 %34)
  ret void
}

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DVSCNTR(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DVSSCALE(i32) #1

declare dso_local i32 @I915_MODIFY_DISPBASE(i32, i32) #1

declare dso_local i32 @DVSSURF(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
