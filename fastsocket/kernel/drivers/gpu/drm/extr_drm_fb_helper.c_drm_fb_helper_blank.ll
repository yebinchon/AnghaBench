; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_STANDBY = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_SUSPEND = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %26 [
    i32 129, label %6
    i32 131, label %10
    i32 132, label %14
    i32 128, label %18
    i32 130, label %22
  ]

6:                                                ; preds = %2
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %9 = call i32 @drm_fb_helper_dpms(%struct.fb_info* %7, i32 %8)
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = load i32, i32* @DRM_MODE_DPMS_STANDBY, align 4
  %13 = call i32 @drm_fb_helper_dpms(%struct.fb_info* %11, i32 %12)
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %16 = load i32, i32* @DRM_MODE_DPMS_STANDBY, align 4
  %17 = call i32 @drm_fb_helper_dpms(%struct.fb_info* %15, i32 %16)
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = load i32, i32* @DRM_MODE_DPMS_SUSPEND, align 4
  %21 = call i32 @drm_fb_helper_dpms(%struct.fb_info* %19, i32 %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %24 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %25 = call i32 @drm_fb_helper_dpms(%struct.fb_info* %23, i32 %24)
  br label %26

26:                                               ; preds = %2, %22, %18, %14, %10, %6
  ret i32 0
}

declare dso_local i32 @drm_fb_helper_dpms(%struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
