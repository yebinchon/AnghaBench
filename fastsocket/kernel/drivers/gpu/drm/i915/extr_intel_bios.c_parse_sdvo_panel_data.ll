; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_sdvo_panel_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_bios.c_parse_sdvo_panel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32 }
%struct.bdb_header = type { i32 }
%struct.lvds_dvo_timing = type { i32 }
%struct.bdb_sdvo_lvds_options = type { i32 }

@i915_vbt_sdvo_panel_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Ignore SDVO panel mode from BIOS VBT tables.\0A\00", align 1
@BDB_SDVO_LVDS_OPTIONS = common dso_local global i32 0, align 4
@BDB_SDVO_PANEL_DTDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Found SDVO panel mode in BIOS VBT tables:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_sdvo_panel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_sdvo_panel_data(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.lvds_dvo_timing*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdb_sdvo_lvds_options*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %9 = load i32, i32* @i915_vbt_sdvo_panel_type, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %19 = load i32, i32* @BDB_SDVO_LVDS_OPTIONS, align 4
  %20 = call i8* @find_section(%struct.bdb_header* %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.bdb_sdvo_lvds_options*
  store %struct.bdb_sdvo_lvds_options* %21, %struct.bdb_sdvo_lvds_options** %8, align 8
  %22 = load %struct.bdb_sdvo_lvds_options*, %struct.bdb_sdvo_lvds_options** %8, align 8
  %23 = icmp ne %struct.bdb_sdvo_lvds_options* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %56

25:                                               ; preds = %17
  %26 = load %struct.bdb_sdvo_lvds_options*, %struct.bdb_sdvo_lvds_options** %8, align 8
  %27 = getelementptr inbounds %struct.bdb_sdvo_lvds_options, %struct.bdb_sdvo_lvds_options* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %14
  %30 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %31 = load i32, i32* @BDB_SDVO_PANEL_DTDS, align 4
  %32 = call i8* @find_section(%struct.bdb_header* %30, i32 %31)
  %33 = bitcast i8* %32 to %struct.lvds_dvo_timing*
  store %struct.lvds_dvo_timing* %33, %struct.lvds_dvo_timing** %5, align 8
  %34 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %35 = icmp ne %struct.lvds_dvo_timing* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %56

37:                                               ; preds = %29
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.drm_display_mode* @kzalloc(i32 4, i32 %38)
  store %struct.drm_display_mode* %39, %struct.drm_display_mode** %6, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = icmp ne %struct.drm_display_mode* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %56

43:                                               ; preds = %37
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = load %struct.lvds_dvo_timing*, %struct.lvds_dvo_timing** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lvds_dvo_timing, %struct.lvds_dvo_timing* %45, i64 %47
  %49 = call i32 @fill_detail_timing_data(%struct.drm_display_mode* %44, %struct.lvds_dvo_timing* %48)
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  store %struct.drm_display_mode* %50, %struct.drm_display_mode** %52, align 8
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %55 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %54)
  br label %56

56:                                               ; preds = %43, %42, %36, %24, %12
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i8* @find_section(%struct.bdb_header*, i32) #1

declare dso_local %struct.drm_display_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @fill_detail_timing_data(%struct.drm_display_mode*, %struct.lvds_dvo_timing*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
