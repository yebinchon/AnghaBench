; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_hdmi.c_intel_hdmi_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_hdmi = type { i64, i64, i64 }

@SDVO_COLOR_RANGE_16_235 = common dso_local global i64 0, align 8
@INTEL_MODE_LIMITED_COLOR_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_hdmi_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.intel_hdmi*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %9 = call %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder* %8)
  store %struct.intel_hdmi* %9, %struct.intel_hdmi** %7, align 8
  %10 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %11 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %16 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %21 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* @SDVO_COLOR_RANGE_16_235, align 8
  %25 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %26 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %30

27:                                               ; preds = %19, %14
  %28 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %29 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.intel_hdmi*, %struct.intel_hdmi** %7, align 8
  %33 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @INTEL_MODE_LIMITED_COLOR_RANGE, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %31
  ret i32 1
}

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
