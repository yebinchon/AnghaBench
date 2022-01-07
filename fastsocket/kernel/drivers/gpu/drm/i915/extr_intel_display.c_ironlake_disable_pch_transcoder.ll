; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_disable_pch_transcoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ironlake_disable_pch_transcoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@TRANS_ENABLE = common dso_local global i32 0, align 4
@TRANS_STATE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to disable transcoder %d\0A\00", align 1
@TRANS_CHICKEN2_TIMING_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @ironlake_disable_pch_transcoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_disable_pch_transcoder(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @assert_fdi_tx_disabled(%struct.drm_i915_private* %11, i32 %12)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @assert_fdi_rx_disabled(%struct.drm_i915_private* %14, i32 %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @assert_pch_ports_disabled(%struct.drm_i915_private* %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TRANSCONF(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @TRANS_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @I915_WRITE(i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @I915_READ(i32 %31)
  %33 = load i32, i32* @TRANS_STATE_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @wait_for(i32 %36, i32 50)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %2
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %44 = call i32 @HAS_PCH_IBX(%struct.drm_device* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @TRANS_CHICKEN2(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @I915_READ(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @TRANS_CHICKEN2_TIMING_OVERRIDE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @I915_WRITE(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %46, %42
  ret void
}

declare dso_local i32 @assert_fdi_tx_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_pch_ports_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @TRANSCONF(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i32 @TRANS_CHICKEN2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
