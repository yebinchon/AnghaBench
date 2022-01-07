; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_mode_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_crt.c_intel_crt_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_crt_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 25000
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %19
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = call i64 @IS_GEN2(%struct.drm_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 350000, i32* %7, align 4
  br label %32

31:                                               ; preds = %26
  store i32 400000, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %32
  %41 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %42 = call i64 @HAS_PCH_LPT(%struct.drm_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ironlake_get_lanes_required(i32 %47, i32 270000, i32 24)
  %49 = icmp sgt i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %44, %40
  %53 = load i32, i32* @MODE_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50, %38, %24, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_device*) #1

declare dso_local i32 @ironlake_get_lanes_required(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
