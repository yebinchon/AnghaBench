; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_restore_fbdev_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_restore_fbdev_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.drm_mode_set }
%struct.drm_mode_set = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_restore_fbdev_mode(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca %struct.drm_fb_helper*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_mode_set*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %8 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @drm_warn_on_modeset_not_all_locked(i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %14 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %19 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.drm_mode_set* %24, %struct.drm_mode_set** %6, align 8
  %25 = load %struct.drm_mode_set*, %struct.drm_mode_set** %6, align 8
  %26 = call i32 @drm_mode_set_config_internal(%struct.drm_mode_set* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @drm_warn_on_modeset_not_all_locked(i32) #1

declare dso_local i32 @drm_mode_set_config_internal(%struct.drm_mode_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
