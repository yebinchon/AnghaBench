; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_mode_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_tv = type { i32 }
%struct.tv_mode = type { i64 }

@MODE_OK = common dso_local global i32 0, align 4
@MODE_CLOCK_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @intel_tv_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_tv*, align 8
  %7 = alloca %struct.tv_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = call %struct.intel_tv* @intel_attached_tv(%struct.drm_connector* %8)
  store %struct.intel_tv* %9, %struct.intel_tv** %6, align 8
  %10 = load %struct.intel_tv*, %struct.intel_tv** %6, align 8
  %11 = call %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv* %10)
  store %struct.tv_mode* %11, %struct.tv_mode** %7, align 8
  %12 = load %struct.tv_mode*, %struct.tv_mode** %7, align 8
  %13 = icmp ne %struct.tv_mode* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.tv_mode*, %struct.tv_mode** %7, align 8
  %16 = getelementptr inbounds %struct.tv_mode, %struct.tv_mode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %18)
  %20 = mul nsw i32 %19, 1000
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %17, %21
  %23 = call i32 @abs(i64 %22)
  %24 = icmp slt i32 %23, 1000
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @MODE_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %14, %2
  %28 = load i32, i32* @MODE_CLOCK_RANGE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.intel_tv* @intel_attached_tv(%struct.drm_connector*) #1

declare dso_local %struct.tv_mode* @intel_tv_mode_find(%struct.intel_tv*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
