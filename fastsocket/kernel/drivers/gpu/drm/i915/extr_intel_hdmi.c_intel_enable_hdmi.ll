; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_enable_hdmi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_enable_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@SDVO_AUDIO_ENABLE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@SDVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_enable_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_enable_hdmi(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %18 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %17, i32 0, i32 0
  %19 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__* %18)
  store %struct.intel_hdmi* %19, %struct.intel_hdmi** %5, align 8
  %20 = load i32, i32* @SDVO_ENABLE, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %22 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @SDVO_AUDIO_ENABLE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %31 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = call i64 @HAS_PCH_IBX(%struct.drm_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %39 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %40, align 8
  store %struct.drm_crtc* %41, %struct.drm_crtc** %8, align 8
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %43 = icmp ne %struct.drm_crtc* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %46 = call %struct.TYPE_3__* @to_intel_crtc(%struct.drm_crtc* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %50

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ -1, %49 ]
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PIPE_B, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %66 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @SDVO_ENABLE, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @I915_WRITE(i32 %67, i32 %71)
  %73 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %74 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @POSTING_READ(i32 %75)
  br label %77

77:                                               ; preds = %64, %60
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %82 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @I915_WRITE(i32 %83, i32 %84)
  %86 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %87 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @POSTING_READ(i32 %88)
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %77
  %94 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %95 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @I915_WRITE(i32 %96, i32 %97)
  %99 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %100 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @POSTING_READ(i32 %101)
  br label %103

103:                                              ; preds = %93, %77
  ret void
}

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local %struct.TYPE_3__* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
