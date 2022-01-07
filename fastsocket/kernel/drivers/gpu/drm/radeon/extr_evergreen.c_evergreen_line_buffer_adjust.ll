; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@DC_LB_MEMORY_SPLIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @evergreen_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_line_buffer_adjust(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.drm_display_mode* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_crtc*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_crtc* %1, %struct.radeon_crtc** %7, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %9, align 8
  %11 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %12 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %18 = icmp ne %struct.drm_display_mode* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %21 = icmp ne %struct.drm_display_mode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %24

23:                                               ; preds = %19
  store i32 2, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %22
  br label %26

25:                                               ; preds = %16, %4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %28 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i64, i64* @DC_LB_MEMORY_SPLIT, align 8
  %37 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @WREG32(i64 %40, i32 %41)
  %43 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %44 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %35
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %50 = icmp ne %struct.drm_display_mode* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %54 [
    i32 0, label %53
    i32 4, label %53
    i32 1, label %60
    i32 5, label %60
    i32 2, label %66
    i32 6, label %66
    i32 3, label %72
    i32 7, label %72
  ]

53:                                               ; preds = %51, %51
  br label %54

54:                                               ; preds = %51, %53
  %55 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %56 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 8192, i32* %5, align 4
  br label %79

59:                                               ; preds = %54
  store i32 7680, i32* %5, align 4
  br label %79

60:                                               ; preds = %51, %51
  %61 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %62 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 12288, i32* %5, align 4
  br label %79

65:                                               ; preds = %60
  store i32 11520, i32* %5, align 4
  br label %79

66:                                               ; preds = %51, %51
  %67 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %68 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 16384, i32* %5, align 4
  br label %79

71:                                               ; preds = %66
  store i32 15360, i32* %5, align 4
  br label %79

72:                                               ; preds = %51, %51
  %73 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %74 = call i32 @ASIC_IS_DCE5(%struct.radeon_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 4096, i32* %5, align 4
  br label %79

77:                                               ; preds = %72
  store i32 3840, i32* %5, align 4
  br label %79

78:                                               ; preds = %48, %35
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %77, %76, %71, %70, %65, %64, %59, %58
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @ASIC_IS_DCE5(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
