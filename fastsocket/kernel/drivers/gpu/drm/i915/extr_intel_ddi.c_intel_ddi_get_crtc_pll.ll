; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_get_crtc_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_get_crtc_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@TRANSCODER_EDP = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@TRANS_DDI_PORT_MASK = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Pipe %c connected to port %c using clock 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @intel_ddi_get_crtc_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ddi_get_crtc_pll(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @TRANSCODER_EDP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PORT_A, align 4
  store i32 %17, i32* %7, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @TRANS_DDI_FUNC_CTL(i32 %19)
  %21 = call i32 @I915_READ(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @TRANS_DDI_PORT_MASK, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @PORT_B, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %38, %18
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PORT_E, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @TRANS_DDI_SELECT_PORT(i32 %32)
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %26

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @PORT_CLK_SEL(i32 %43)
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pipe_name(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @port_name(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @TRANS_DDI_SELECT_PORT(i32) #1

declare dso_local i32 @PORT_CLK_SEL(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

declare dso_local i32 @port_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
