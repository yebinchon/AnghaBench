; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_enable_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_enable_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@TRANSCODER_A = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32)* @intel_enable_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_pipe(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @HAS_PCH_LPT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @TRANSCODER_A, align 4
  store i32 %20, i32* %8, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @HAS_PCH_SPLIT(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @assert_pll_enabled(%struct.drm_i915_private* %30, i32 %31)
  br label %44

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @assert_fdi_rx_pll_enabled(%struct.drm_i915_private* %37, i32 %38)
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @assert_fdi_tx_pll_enabled(%struct.drm_i915_private* %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %33
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @PIPECONF(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @I915_READ(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @PIPECONF_ENABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %65

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @PIPECONF_ENABLE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @I915_WRITE(i32 %55, i32 %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @intel_wait_for_vblank(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %53
  ret void
}

declare dso_local i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_PCH_LPT(i32) #1

declare dso_local i32 @HAS_PCH_SPLIT(i32) #1

declare dso_local i32 @assert_pll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_pll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_tx_pll_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_wait_for_vblank(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
