; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_dce6_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_dce6_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.drm_display_mode = type { i32 }

@DC_LB_MEMORY_SPLIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @dce6_line_buffer_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce6_line_buffer_adjust(%struct.radeon_device* %0, %struct.radeon_crtc* %1, %struct.drm_display_mode* %2, %struct.drm_display_mode* %3) #0 {
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
  %12 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %11, i32 0, i32 0
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
  %27 = load i64, i64* @DC_LB_MEMORY_SPLIT, align 8
  %28 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @DC_LB_MEMORY_CONFIG(i32 %32)
  %34 = call i32 @WREG32(i64 %31, i32 %33)
  %35 = load %struct.radeon_crtc*, %struct.radeon_crtc** %7, align 8
  %36 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %42 = icmp ne %struct.drm_display_mode* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %46 [
    i32 0, label %45
    i32 2, label %47
  ]

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %43, %45
  store i32 8192, i32* %5, align 4
  br label %49

47:                                               ; preds = %43
  store i32 16384, i32* %5, align 4
  br label %49

48:                                               ; preds = %40, %26
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %47, %46
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @DC_LB_MEMORY_CONFIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
