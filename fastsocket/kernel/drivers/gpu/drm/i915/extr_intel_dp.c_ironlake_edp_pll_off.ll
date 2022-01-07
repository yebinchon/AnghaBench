; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_pll_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_ironlake_edp_pll_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DP_A = common dso_local global i32 0, align 4
@DP_PLL_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dp pll off, should be on\0A\00", align 1
@DP_PORT_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dp port still on, should be off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @ironlake_edp_pll_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_edp_pll_off(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %8)
  store %struct.intel_digital_port* %9, %struct.intel_digital_port** %3, align 8
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  store %struct.drm_crtc* %14, %struct.drm_crtc** %4, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %5, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %6, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %23 = call %struct.TYPE_6__* @to_intel_crtc(%struct.drm_crtc* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @assert_pipe_disabled(%struct.drm_i915_private* %21, i32 %25)
  %27 = load i32, i32* @DP_A, align 4
  %28 = call i32 @I915_READ(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DP_PLL_ENABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DP_PORT_EN, align 4
  %37 = and i32 %35, %36
  %38 = call i32 @WARN(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @DP_PLL_ENABLE, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @DP_A, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @I915_WRITE(i32 %43, i32 %44)
  %46 = load i32, i32* @DP_A, align 4
  %47 = call i32 @POSTING_READ(i32 %46)
  %48 = call i32 @udelay(i32 200)
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @assert_pipe_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
