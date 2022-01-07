; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_pch_ports_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_assert_pch_ports_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PCH_DP_B = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_B = common dso_local global i32 0, align 4
@PCH_DP_C = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_C = common dso_local global i32 0, align 4
@PCH_DP_D = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_D = common dso_local global i32 0, align 4
@PCH_ADPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"PCH VGA enabled on transcoder %c, should be disabled\0A\00", align 1
@PCH_LVDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"PCH LVDS enabled on transcoder %c, should be disabled\0A\00", align 1
@HDMIB = common dso_local global i32 0, align 4
@HDMIC = common dso_local global i32 0, align 4
@HDMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @assert_pch_ports_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_pch_ports_disabled(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PCH_DP_B, align 4
  %10 = load i32, i32* @TRANS_DP_PORT_SEL_B, align 4
  %11 = call i32 @assert_pch_dp_disabled(%struct.drm_i915_private* %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PCH_DP_C, align 4
  %15 = load i32, i32* @TRANS_DP_PORT_SEL_C, align 4
  %16 = call i32 @assert_pch_dp_disabled(%struct.drm_i915_private* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PCH_DP_D, align 4
  %20 = load i32, i32* @TRANS_DP_PORT_SEL_D, align 4
  %21 = call i32 @assert_pch_dp_disabled(%struct.drm_i915_private* %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @PCH_ADPA, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @I915_READ(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @adpa_pipe_enabled(%struct.drm_i915_private* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pipe_name(i32 %29)
  %31 = call i32 @WARN(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @PCH_LVDS, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @I915_READ(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @lvds_pipe_enabled(%struct.drm_i915_private* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pipe_name(i32 %39)
  %41 = call i32 @WARN(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HDMIB, align 4
  %45 = call i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private* %42, i32 %43, i32 %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HDMIC, align 4
  %49 = call i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private* %46, i32 %47, i32 %48)
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @HDMID, align 4
  %53 = call i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private* %50, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @assert_pch_dp_disabled(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @adpa_pipe_enabled(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @lvds_pipe_enabled(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @assert_pch_hdmi_disabled(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
