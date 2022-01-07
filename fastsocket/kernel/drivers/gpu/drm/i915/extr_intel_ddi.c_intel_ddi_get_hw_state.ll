; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@DDI_BUF_CTL_ENABLE = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@TRANS_DDI_EDP_INPUT_MASK = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@TRANSCODER_A = common dso_local global i32 0, align 4
@TRANSCODER_C = common dso_local global i32 0, align 4
@TRANS_DDI_PORT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No pipe for ddi port %i found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ddi_get_hw_state(%struct.intel_encoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %7, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = call i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @DDI_BUF_CTL(i32 %20)
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @DDI_BUF_CTL_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PORT_A, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* @TRANSCODER_EDP, align 4
  %34 = call i32 @TRANS_DDI_FUNC_CTL(i32 %33)
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @TRANS_DDI_EDP_INPUT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %48 [
    i32 131, label %39
    i32 130, label %39
    i32 129, label %42
    i32 128, label %45
  ]

39:                                               ; preds = %32, %32
  %40 = load i32, i32* @PIPE_A, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %48

42:                                               ; preds = %32
  %43 = load i32, i32* @PIPE_B, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @PIPE_C, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %32, %45, %42, %39
  store i32 1, i32* %3, align 4
  br label %76

49:                                               ; preds = %28
  %50 = load i32, i32* @TRANSCODER_A, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %69, %49
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @TRANSCODER_C, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @TRANS_DDI_FUNC_CTL(i32 %56)
  %58 = call i32 @I915_READ(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @TRANS_DDI_PORT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @TRANS_DDI_SELECT_PORT(i32 %62)
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %5, align 8
  store i32 %66, i32* %67, align 4
  store i32 1, i32* %3, align 4
  br label %76

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %51

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %65, %48, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @intel_ddi_get_encoder_port(%struct.intel_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @TRANS_DDI_SELECT_PORT(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
