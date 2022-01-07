; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_disable_rc6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_disable_rc6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PWRCTXA = common dso_local global i32 0, align 4
@RSTDBYCTL = common dso_local global i32 0, align 4
@RCX_SW_EXIT = common dso_local global i32 0, align 4
@RSX_STATUS_MASK = common dso_local global i32 0, align 4
@RSX_STATUS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_disable_rc6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_disable_rc6(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load i32, i32* @PWRCTXA, align 4
  %8 = call i32 @I915_READ(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load i32, i32* @RSTDBYCTL, align 4
  %12 = load i32, i32* @RSTDBYCTL, align 4
  %13 = call i32 @I915_READ(i32 %12)
  %14 = load i32, i32* @RCX_SW_EXIT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @I915_WRITE(i32 %11, i32 %15)
  %17 = load i32, i32* @RSTDBYCTL, align 4
  %18 = call i32 @I915_READ(i32 %17)
  %19 = load i32, i32* @RSX_STATUS_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @RSX_STATUS_ON, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_for(i32 %23, i32 50)
  %25 = load i32, i32* @PWRCTXA, align 4
  %26 = call i32 @I915_WRITE(i32 %25, i32 0)
  %27 = load i32, i32* @PWRCTXA, align 4
  %28 = call i32 @POSTING_READ(i32 %27)
  %29 = load i32, i32* @RSTDBYCTL, align 4
  %30 = load i32, i32* @RSTDBYCTL, align 4
  %31 = call i32 @I915_READ(i32 %30)
  %32 = load i32, i32* @RCX_SW_EXIT, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @I915_WRITE(i32 %29, i32 %34)
  %36 = load i32, i32* @RSTDBYCTL, align 4
  %37 = call i32 @POSTING_READ(i32 %36)
  br label %38

38:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
