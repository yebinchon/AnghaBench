; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_disable_hdmi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_disable_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SDVO_ENABLE = common dso_local global i32 0, align 4
@SDVO_AUDIO_ENABLE = common dso_local global i32 0, align 4
@SDVO_PIPE_B_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_disable_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_disable_hdmi(%struct.intel_encoder* %0) #0 {
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
  %21 = load i32, i32* @SDVO_AUDIO_ENABLE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %24 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @I915_READ(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = call i64 @HAS_PCH_IBX(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %1
  %31 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %32 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %33, align 8
  store %struct.drm_crtc* %34, %struct.drm_crtc** %8, align 8
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %36 = icmp ne %struct.drm_crtc* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %39 = call %struct.TYPE_3__* @to_intel_crtc(%struct.drm_crtc* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %37
  %44 = phi i32 [ %41, %37 ], [ -1, %42 ]
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %43
  %50 = load i32, i32* @SDVO_PIPE_B_SELECT, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %55 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @I915_WRITE(i32 %56, i32 %57)
  %59 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %60 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @POSTING_READ(i32 %61)
  %63 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %64 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @I915_WRITE(i32 %65, i32 %66)
  %68 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %69 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @POSTING_READ(i32 %70)
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %73 = icmp ne %struct.drm_crtc* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %49
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @intel_wait_for_vblank(%struct.drm_device* %75, i32 %76)
  br label %80

78:                                               ; preds = %49
  %79 = call i32 @msleep(i32 50)
  br label %80

80:                                               ; preds = %78, %74
  br label %81

81:                                               ; preds = %80, %43
  br label %82

82:                                               ; preds = %81, %1
  %83 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %84 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %88 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @SDVO_ENABLE, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = call i32 @I915_WRITE(i32 %89, i32 %93)
  %95 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %96 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @POSTING_READ(i32 %97)
  br label %99

99:                                               ; preds = %86, %82
  %100 = load i32, i32* %7, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %105 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @I915_WRITE(i32 %106, i32 %107)
  %109 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %110 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @POSTING_READ(i32 %111)
  %113 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %114 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %99
  %117 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %118 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @I915_WRITE(i32 %119, i32 %120)
  %122 = load %struct.intel_hdmi*, %struct.intel_hdmi** %5, align 8
  %123 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @POSTING_READ(i32 %124)
  br label %126

126:                                              ; preds = %116, %99
  ret void
}

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.TYPE_4__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local %struct.TYPE_3__* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
