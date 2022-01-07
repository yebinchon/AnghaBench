; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_preferred_input_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_get_preferred_input_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.intel_sdvo_dtd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_sdvo_get_preferred_input_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.intel_sdvo_dtd, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %9 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %10 = call i32 @intel_sdvo_set_target_input(%struct.intel_sdvo* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

13:                                               ; preds = %3
  %14 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 10
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @intel_sdvo_create_preferred_input_timing(%struct.intel_sdvo* %14, i32 %18, i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %41

28:                                               ; preds = %13
  %29 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %30 = call i32 @intel_sdvo_get_preferred_input_timing(%struct.intel_sdvo* %29, %struct.intel_sdvo_dtd* %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %41

33:                                               ; preds = %28
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %35 = call i32 @intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode* %34, %struct.intel_sdvo_dtd* %8)
  %36 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %40 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %32, %27, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @intel_sdvo_set_target_input(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_create_preferred_input_timing(%struct.intel_sdvo*, i32, i32, i32) #1

declare dso_local i32 @intel_sdvo_get_preferred_input_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

declare dso_local i32 @intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode*, %struct.intel_sdvo_dtd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
