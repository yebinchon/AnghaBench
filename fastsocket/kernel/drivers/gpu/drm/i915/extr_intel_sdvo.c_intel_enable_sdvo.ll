; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_enable_sdvo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_enable_sdvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_sdvo = type { i32, i32 }
%struct.intel_crtc = type { i32 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@SDVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@SDVO_CMD_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"First %s output reported failure to sync\0A\00", align 1
@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_enable_sdvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_sdvo(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %3, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %19, align 8
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %4, align 8
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = call %struct.intel_sdvo* @to_intel_sdvo(%struct.TYPE_2__* %22)
  store %struct.intel_sdvo* %23, %struct.intel_sdvo** %5, align 8
  %24 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %25 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %26, align 8
  %28 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %27)
  store %struct.intel_crtc* %28, %struct.intel_crtc** %6, align 8
  %29 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %30 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SDVO_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %1
  %38 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %39 = call i64 @HAS_PCH_IBX(%struct.drm_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %43 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %44, align 8
  store %struct.drm_crtc* %45, %struct.drm_crtc** %12, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %47 = icmp ne %struct.drm_crtc* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %50 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %49)
  %51 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ -1, %53 ]
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @PIPE_B, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %37
  %65 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @SDVO_ENABLE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %1
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %80, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 2
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %77 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @intel_wait_for_vblank(%struct.drm_device* %75, i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %71

83:                                               ; preds = %71
  %84 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %85 = call i64 @intel_sdvo_get_trained_inputs(%struct.intel_sdvo* %84, i32* %8, i32* %9)
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @SDVO_CMD_STATUS_SUCCESS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %94 = call i32 @SDVO_NAME(%struct.intel_sdvo* %93)
  %95 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %89, %83
  %97 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %98 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %99 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo* %97, i32 %100)
  ret void
}

declare dso_local %struct.intel_sdvo* @to_intel_sdvo(%struct.TYPE_2__*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i64 @intel_sdvo_get_trained_inputs(%struct.intel_sdvo*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @SDVO_NAME(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
