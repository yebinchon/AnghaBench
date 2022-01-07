; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_disable_tv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_disable_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@TV_CTL = common dso_local global i32 0, align 4
@TV_ENC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_disable_tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_tv(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %5 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %6 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load i32, i32* @TV_CTL, align 4
  %13 = load i32, i32* @TV_CTL, align 4
  %14 = call i32 @I915_READ(i32 %13)
  %15 = load i32, i32* @TV_ENC_ENABLE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @I915_WRITE(i32 %12, i32 %17)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
