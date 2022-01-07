; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_sdvo = type { i64, i64, i64, %struct.drm_display_mode*, i64, i64 }

@SDVO_COLOR_RANGE_16_235 = common dso_local global i64 0, align 8
@INTEL_MODE_LIMITED_COLOR_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_sdvo_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.intel_sdvo*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %11 = call %struct.intel_sdvo* @to_intel_sdvo(%struct.drm_encoder* %10)
  store %struct.intel_sdvo* %11, %struct.intel_sdvo** %8, align 8
  %12 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %13 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = call i32 @intel_sdvo_set_output_timings_from_mode(%struct.intel_sdvo* %17, %struct.drm_display_mode* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %85

22:                                               ; preds = %16
  %23 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = call i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo* %23, %struct.drm_display_mode* %24, %struct.drm_display_mode* %25)
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %29 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %34 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %35 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %34, i32 0, i32 3
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %35, align 8
  %37 = call i32 @intel_sdvo_set_output_timings_from_mode(%struct.intel_sdvo* %33, %struct.drm_display_mode* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %85

40:                                               ; preds = %32
  %41 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %44 = call i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo* %41, %struct.drm_display_mode* %42, %struct.drm_display_mode* %43)
  br label %45

45:                                               ; preds = %40, %27
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %48 = call i32 @intel_sdvo_get_pixel_multiplier(%struct.drm_display_mode* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @intel_mode_set_pixel_multiplier(%struct.drm_display_mode* %49, i32 %50)
  %52 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %53 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %46
  %57 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %58 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %63 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %62)
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i64, i64* @SDVO_COLOR_RANGE_16_235, align 8
  %67 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %68 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %72

69:                                               ; preds = %61, %56
  %70 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %71 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %65
  br label %73

73:                                               ; preds = %72, %46
  %74 = load %struct.intel_sdvo*, %struct.intel_sdvo** %8, align 8
  %75 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @INTEL_MODE_LIMITED_COLOR_RANGE, align 4
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %39, %21
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.intel_sdvo* @to_intel_sdvo(%struct.drm_encoder*) #1

declare dso_local i32 @intel_sdvo_set_output_timings_from_mode(%struct.intel_sdvo*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_get_pixel_multiplier(%struct.drm_display_mode*) #1

declare dso_local i32 @intel_mode_set_pixel_multiplier(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
