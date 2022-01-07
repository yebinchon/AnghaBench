; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_g4x_set_infoframes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_g4x_set_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_digital_port = type { i32, %struct.intel_hdmi }
%struct.intel_hdmi = type { i32 }

@VIDEO_DIP_CTL = common dso_local global i32 0, align 4
@VIDEO_DIP_SELECT_AVI = common dso_local global i32 0, align 4
@VIDEO_DIP_FREQ_VSYNC = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_B = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_C = common dso_local global i32 0, align 4
@VIDEO_DIP_PORT_MASK = common dso_local global i32 0, align 4
@VIDEO_DIP_ENABLE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @g4x_set_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_set_infoframes(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca %struct.intel_hdmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %5, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %17 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder* %16)
  store %struct.intel_digital_port* %17, %struct.intel_digital_port** %6, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 1
  store %struct.intel_hdmi* %19, %struct.intel_hdmi** %7, align 8
  %20 = load i32, i32* @VIDEO_DIP_CTL, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @I915_READ(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %24 = call i32 @assert_hdmi_port_disabled(%struct.intel_hdmi* %23)
  %25 = load i32, i32* @VIDEO_DIP_SELECT_AVI, align 4
  %26 = load i32, i32* @VIDEO_DIP_FREQ_VSYNC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %31 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %107

40:                                               ; preds = %34
  %41 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @I915_WRITE(i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @POSTING_READ(i32 %48)
  br label %107

50:                                               ; preds = %2
  %51 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %52 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %58 [
    i32 129, label %54
    i32 128, label %56
  ]

54:                                               ; preds = %50
  %55 = load i32, i32* @VIDEO_DIP_PORT_B, align 4
  store i32 %55, i32* %10, align 4
  br label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @VIDEO_DIP_PORT_C, align 4
  store i32 %57, i32* %10, align 4
  br label %60

58:                                               ; preds = %50
  %59 = call i32 (...) @BUG()
  br label %107

60:                                               ; preds = %56, %54
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @I915_WRITE(i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @POSTING_READ(i32 %79)
  br label %81

81:                                               ; preds = %71, %66
  %82 = load i32, i32* @VIDEO_DIP_PORT_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %81, %60
  %90 = load i32, i32* @VIDEO_DIP_ENABLE, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* @VIDEO_DIP_ENABLE_VENDOR, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @I915_WRITE(i32 %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @POSTING_READ(i32 %100)
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %104 = call i32 @intel_hdmi_set_avi_infoframe(%struct.drm_encoder* %102, %struct.drm_display_mode* %103)
  %105 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %106 = call i32 @intel_hdmi_set_spd_infoframe(%struct.drm_encoder* %105)
  br label %107

107:                                              ; preds = %89, %58, %40, %39
  ret void
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @assert_hdmi_port_disabled(%struct.intel_hdmi*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @intel_hdmi_set_avi_infoframe(%struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_hdmi_set_spd_infoframe(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
