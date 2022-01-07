; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_mode_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i64, i64, i32, i32 }
%struct.intel_dp = type { i32 }
%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_mode* }

@MODE_PANEL = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_CLOCK_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLCLK = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_dp_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca %struct.intel_connector*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %9)
  store %struct.intel_dp* %10, %struct.intel_dp** %6, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %11)
  store %struct.intel_connector* %12, %struct.intel_connector** %7, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %7, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %15, align 8
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %8, align 8
  %17 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %18 = call i64 @is_edp(%struct.intel_dp* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %22 = icmp ne %struct.drm_display_mode* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @MODE_PANEL, align 4
  store i32 %32, i32* %3, align 4
  br label %69

33:                                               ; preds = %23
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @MODE_PANEL, align 4
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %20, %2
  %45 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %47 = call i32 @intel_dp_adjust_dithering(%struct.intel_dp* %45, %struct.drm_display_mode* %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %44
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 10000
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @MODE_CLOCK_LOW, align 4
  store i32 %57, i32* %3, align 4
  br label %69

58:                                               ; preds = %51
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DRM_MODE_FLAG_DBLCLK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %66, i32* %3, align 4
  br label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @MODE_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %65, %56, %49, %41, %31
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i64 @is_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_adjust_dithering(%struct.intel_dp*, %struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
