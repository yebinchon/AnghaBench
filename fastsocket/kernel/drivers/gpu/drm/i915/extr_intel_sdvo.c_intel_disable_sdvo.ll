; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_disable_sdvo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_disable_sdvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.drm_crtc* }
%struct.TYPE_7__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_sdvo = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@SDVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_disable_sdvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_sdvo(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %8 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %15 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %14, i32 0, i32 0
  %16 = call %struct.intel_sdvo* @to_intel_sdvo(%struct.TYPE_5__* %15)
  store %struct.intel_sdvo* %16, %struct.intel_sdvo** %4, align 8
  %17 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %18 = call i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo* %17, i32 0)
  %19 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %20 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SDVO_ENABLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %1
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %29 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = call i64 @HAS_PCH_IBX(%struct.TYPE_7__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %27
  %35 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %36 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %37, align 8
  store %struct.drm_crtc* %38, %struct.drm_crtc** %6, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %40 = icmp ne %struct.drm_crtc* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %43 = call %struct.TYPE_6__* @to_intel_crtc(%struct.drm_crtc* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ %45, %41 ], [ -1, %46 ]
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %88

53:                                               ; preds = %47
  %54 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %59 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @I915_WRITE(i32 %60, i32 %61)
  %63 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %64 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @POSTING_READ(i32 %65)
  %67 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %68 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @I915_WRITE(i32 %69, i32 %70)
  %72 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %73 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @POSTING_READ(i32 %74)
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %77 = icmp ne %struct.drm_crtc* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %53
  %79 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %80 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @intel_wait_for_vblank(%struct.TYPE_7__* %82, i32 %83)
  br label %87

85:                                               ; preds = %53
  %86 = call i32 @msleep(i32 50)
  br label %87

87:                                               ; preds = %85, %78
  br label %88

88:                                               ; preds = %87, %47
  br label %89

89:                                               ; preds = %88, %27
  %90 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @SDVO_ENABLE, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = call i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo* %90, i32 %94)
  br label %96

96:                                               ; preds = %89, %1
  ret void
}

declare dso_local %struct.intel_sdvo* @to_intel_sdvo(%struct.TYPE_5__*) #1

declare dso_local i32 @intel_sdvo_set_active_outputs(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @intel_sdvo_write_sdvox(%struct.intel_sdvo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
